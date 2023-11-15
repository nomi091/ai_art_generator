import 'package:flutter/cupertino.dart';

import '../../Model/Custom_model/filter_model.dart';
import '../../Model/art_generated_images_model.dart';
import '../../Model/style_list_model.dart';
import '../../data/responce/api_responce.dart';
import '../../repository/home_repo.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepo repo = HomeRepo();
  TextEditingController textController = TextEditingController();
  double currentPrice = 6.0; // Initial price value
ValueNotifier<int?> selectedNotifier = ValueNotifier<int?>(1);

  List<ToggleFileter> filterTogles = [
    ToggleFileter(text: 'Magic', text2: 'coming soon', toggle: false),
    ToggleFileter(text: 'Enhanced', text2: 'coming soon', toggle: false),
    ToggleFileter(text: 'Realistic', text2: 'coming soon', toggle: false),
    ToggleFileter(text: 'Multiple arts', text2: 'Coming soon', toggle: false),
    ToggleFileter(text: 'Dimentions', text2: 'Coming soon', toggle: false),
  ]; // 5 toggle buttons for example
  bool _loading = false;
  bool get loading => _loading;
  String id = '';
  ApiResponce<StyleListModel> getStyleData = ApiResponce.loading();
  ApiResponce<ArtGeneratedImagesModel> getImagesData = ApiResponce.loading();
  String modelId = '';
  setStyleData(ApiResponce<StyleListModel> responce) {
    getStyleData = responce;
    debugPrint('setAllCoursesData list got');
    notifyListeners();
  }

  getImageData(ApiResponce<ArtGeneratedImagesModel> responce) {
    getImagesData = responce;
    debugPrint('setAllImage list got');
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  double sliderValue = 0.0;

  Future<void> getStyleApi(context) async {
    setLoading(true);
    await repo.getStyles().then((value) async {
      setStyleData(ApiResponce.completed(value));
      setLoading(false);
    }).onError((error, stackTrace) {
      setLoading(false);
      setStyleData(ApiResponce.error(error.toString()));
    });
  }

  Future<void> generateImage(context) async {
    var data = {
      'prompt': textController.text,
      'modelId': modelId,
      'num_images': 1,
      'presetStyle': 'LEONARDO',
    };
    setLoading(true);
    print(data);
    await repo.generateImage(data).then((value) async {
      id = value.sdGenerationJob!.generationId.toString();
      Future.delayed(const Duration(seconds: 5)).then((value) {
        setLoading(false);
      });
      notifyListeners();
    }).onError((error, stackTrace) {
      print(error);

      setStyleData(ApiResponce.error(error.toString()));
    });
  }

  Future<void> getImageById(context, id) async {
    await repo.getImageById(id).then((value) async {
      getImageData(ApiResponce.completed(value));
      setLoading(false);
    }).onError((error, stackTrace) {
      setLoading(false);

      setStyleData(ApiResponce.error(error.toString()));
    });
  }
}

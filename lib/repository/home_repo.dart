import 'package:ai_art_generator/Model/art_generate_model.dart';
import 'package:ai_art_generator/Model/art_generated_images_model.dart';

import '../Model/style_list_model.dart';
import '../data/network/base_api_service.dart';
import '../utils/constants/app_urls.dart';

class HomeRepo {
  final NetworkApiService _apiService = NetworkApiService();

  Future<dynamic> getStyles() async {
    try {
      dynamic response = await _apiService.getArtApiResponse(
        AppUrl.getArtStyleEndPoint,
        true,
      );

      return StyleListModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> generateImage(data) async {
    try {
      dynamic response = await _apiService.artApiPostResponse(
        AppUrl.artGenerateEndPoint,
        data,
        true,
      );
      print(response);
      return ArtGenerateModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<ArtGeneratedImagesModel> getImageById(id) async {
    try {
      dynamic response = await _apiService.getArtApiResponse(
        '${AppUrl.artGenerateEndPoint}/$id',
        true,
      );
      print(response);
      return ArtGeneratedImagesModel.fromJson(response);
    } catch (e) {
      print('error responce $e');
      rethrow;
    }
  }
}

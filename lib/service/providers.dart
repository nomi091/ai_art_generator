import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../view_model/auth_view_model/auth_view_model.dart';
import '../view_model/home_view_model/home_view_model.dart';

class AppProviders {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthViewModel()),
    ChangeNotifierProvider(create: (_) => HomeViewModel()),
    // ChangeNotifierProvider(create: (_) => SignUpProfileViewModel()),
    // ChangeNotifierProvider(create: (_) => CategoryViewModel()),
    // //ChangeNotifierProvider(create: (_) => HomeViewModel()),
    // ChangeNotifierProvider(create: (_) => FavouriteViewModel()),
    // ChangeNotifierProvider(create: (_) => NotificationViewModel()),
    // ChangeNotifierProvider(create: (_) => AccountViewModel()),
    // ChangeNotifierProvider(create: (_) => LanguageViewModel()),
    // ChangeNotifierProvider(create: (_) => GeneralViewModel()),
  ];
}

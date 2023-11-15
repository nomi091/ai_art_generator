import 'package:admob_flutter/admob_flutter.dart';
import 'package:ai_art_generator/service/providers.dart';
import 'package:ai_art_generator/utils/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Admob.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ScreenRoutes.splash,
        onGenerateRoute: ScreenRoutes.generateRoute,
      ),
    );
  }
}

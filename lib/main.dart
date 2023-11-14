import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final/firebase_options.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Intl.defaultLocale = 'lo_LA';

  // runApp(
  //   MaterialApp(
  //     home: MyApp(),
  //   ),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "Application",
    //   initialRoute: Routes.LOGIN,
    //   getPages: AppPages.routes,
    // );
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreen();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.LOGIN,
            getPages: AppPages.routes,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('lo', 'LA'),
              Locale('en', 'US'),

              // Add other supported locales here
            ],
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:whetherapp/Infrastructure/Commons/app_pages.dart';
import 'package:whetherapp/Infrastructure/Commons/theme_changer.dart';
import 'package:whetherapp/Infrastructure/Lang/translation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: false,
        darkTheme: ConstantTheme.darkTheme,
        theme: ConstantTheme.lightTheme,
        getPages: AppPages.routes,
        initialRoute: AppPages.initial,
        locale: TranslationService.locale,
        fallbackLocale: TranslationService.fallbackLocale,
        translations: TranslationService(),
       ),
    );
  }
}


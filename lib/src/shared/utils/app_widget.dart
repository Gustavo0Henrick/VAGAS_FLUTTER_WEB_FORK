import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:vagas_flutter_web/src/shared/themes/app_themes.dart';
import 'package:vagas_flutter_web/src/shared/utils/behaviors/custom_behavior.dart';
import 'package:vagas_flutter_web/src/shared/utils/routes/app_routes_implementation.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRoutesConfig.routerDelegate,
      routeInformationProvider: appRoutesConfig.routeInformationProvider,
      routeInformationParser: appRoutesConfig.routeInformationParser,
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      title: 'App Vagas Demo',
      theme: AppThemes.lightTheme(),
      darkTheme: AppThemes.darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
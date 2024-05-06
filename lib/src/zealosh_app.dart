import 'package:zealosh/src/app_provider_layer.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/utils/router_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class zealoshApp extends StatelessWidget {
  const zealoshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: kwhiteColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light));

    return AppProvidersLayer(
        child: GetMaterialApp(
      title: "zealosh",
      theme: ThemeData(
        fontFamily: 'Manrope',
      ),
      navigatorKey: navigatorKey,
      routes: Routes.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
    ));
  }
}

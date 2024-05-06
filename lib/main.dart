import 'package:zealosh/src/zealosh_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:zealosh/utils/shared_preference/shared_preference.dart';
import 'package:zealosh/utils/shared_preference/token_manager.dart';

import 'src/domin/core/di/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  await Prefs.init(); // Initialize Prefs first
  await TokenManager.init(); // Initialize TokenManager
  await configureInjection(); // Initialize dependency injection
  runApp(const zealoshApp());
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

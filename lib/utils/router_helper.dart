import 'package:zealosh/src/presentation/about/about.dart';
import 'package:zealosh/src/presentation/login/splas_screen.dart';
import 'package:zealosh/src/presentation/appWidgets/screens/notifications.dart';
import 'package:zealosh/src/presentation/questions/questions.dart';
import 'package:flutter/material.dart';
import 'package:zealosh/src/presentation/questions/questions2.dart';
import 'package:zealosh/src/presentation/score/score.dart';
import 'package:zealosh/src/zealosh_app.dart';
import '../src/presentation/main_page/screen_main_page.dart';
import '../src/presentation/main_page/widgets/bottom_nav.dart';

class Routes {
  Routes._();
  static const String mainPage = '/mainPage';
  static const String splash = '/splash';
  static const String notification = '/notification';
  
  
  static const String questions = '/questions';
  static const String questions2 = '/questions2';
  static const String score = '/score';
  static const String about = '/about';



  static final routes = {
    mainPage: (_) => MainPage(),
    splash: (_) => const SplashScreen(),
    // notification: (_) => const Notifications(),


  about: (_) =>   AboutPage(),
  score: (_) => const  Score(),
  questions2: (_) => const  Questions2(),
  questions: (_) => const  Questions(),
  };

  static pushPage(Widget page) {
    Navigator.push(navigatorKey.currentState!.context,
        MaterialPageRoute(builder: (context) => page));
  }

  static pushNamed(String route, {arguments}) {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        route) {
      Navigator.pushNamed(
        navigatorKey.currentState!.context,
        route,
        arguments: arguments,
      );
    }
  }

  static pushReplacementNamed(String route, {arguments}) {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        route) {
      Navigator.pushReplacementNamed(
        navigatorKey.currentState!.context,
        route,
        arguments: arguments,
      );
    }
  }

  static dynamic goBack({dynamic result}) {
    return Navigator.maybePop(navigatorKey.currentState!.context, result);
  }

  static goToHome() {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        mainPage) {
      Navigator.pushNamed(
        navigatorKey.currentState!.context,
        mainPage,
      );
      indexChangeNotifier.value = 0;
    }
  }

  static void pushNamedAndRemoveUntil(String route) {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        route) {
      Navigator.of(navigatorKey.currentState!.context)
          .pushNamedAndRemoveUntil(route, (route) => false);
    }
  }
}

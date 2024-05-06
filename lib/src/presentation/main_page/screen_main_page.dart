import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealosh/src/constants/app_assets.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/src/constants/app_icons.dart';
import 'package:zealosh/src/presentation/appWidgets/button.dart';
import 'package:zealosh/src/presentation/home/home.dart';
import 'package:zealosh/src/presentation/main_page/widgets/bottom_nav.dart';
// import 'package:zealosh/src/presentation/category/category_list.dart';
// import 'package:zealosh/src/presentation/my_cart/my_cart.dart';

import '../../../utils/router_helper.dart';
// import '../offers/offers_list.dart';
// import '../orders/my_orders_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = [
    // CategoryList(
    //   ttoggleContainerVisibility: ErrorWidget.builder,
    // ),
    // c  onst OffersList(),
    HomePage(),
    // const MyCartPage(),
    // const MyOrders()
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: kwhiteColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light));

    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: ValueListenableBuilder(
                valueListenable: indexChangeNotifier,
                builder: (context, int index, _) {
                  return HomePage();
                }),
          ),
          // bottomNavigationBar: Theme(
          //   data: ThemeData(
          //     splashColor: Colors.transparent,
          //     highlightColor: Colors.transparent,
          //   ),
          //   child: const BottomNavigationWidgets(),
          // ),
        ),
        // PopUpOffer()
      ],
    );
  }
}

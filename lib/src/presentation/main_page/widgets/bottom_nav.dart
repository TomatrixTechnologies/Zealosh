// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealosh/src/constants/app_constants.dart';
ValueNotifier<int> indexChangeNotifier = ValueNotifier(2);

class BottomNavigationWidgets extends StatefulWidget {
  const BottomNavigationWidgets({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidgets> createState() =>
      _BottomNavigationWidgetsState();
}

class _BottomNavigationWidgetsState extends State<BottomNavigationWidgets> {
  var homeIcon =kDGrayColor;

  // int _selectedIndex = 0;

  final List<String> _svgAssets = [
    'assets/icons/Category.svg',
    'assets/icons/Discount.svg',
    'assets/icons/Home.svg',
    'assets/icons/Buy.svg',
    'assets/icons/Bag.svg',
  ];
  final List<String> title = [
    'Category',
    'Offers',
    'Home',
    'My Cart',
    'My Order',
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int selectedIndex, _) {
        return Material(
          elevation: .4, // Set the desired elevation value
          color:kGrayColor,
          child: BottomNavigationBar(
            //     currentIndex: ,
            // onTap: _onItemTapped,

            currentIndex: selectedIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },

            type: BottomNavigationBarType.fixed,

            backgroundColor: kwhiteColor,
            selectedItemColor: kBlackColor,
            unselectedItemColor:kGrayColor,
            unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color:kGrayColor),

            selectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: kBlackColor),
            selectedIconTheme: const IconThemeData(color: kBlackColor),
            unselectedIconTheme: const IconThemeData(color:kGrayColor),
            items: [
              for (var index = 0; index < _svgAssets.length; index++)
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      _svgAssets[index],
                      width: 24,
                      height: 24,
                      color: selectedIndex == index
                          ? kBlackColor
                          :kGrayColor,
                    ),
                  ),
                  label: title[index],
                ),
            ],
          ),
        );
      },
    );
  }
}

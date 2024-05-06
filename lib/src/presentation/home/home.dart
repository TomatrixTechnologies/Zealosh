// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/src/presentation/appWidgets/button.dart';
import 'package:zealosh/src/presentation/appWidgets/custom_appbar.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:zealosh/utils/router_helper.dart';
import 'package:flutter/material.dart';
import '../../constants/app_assets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // final bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kGreenColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: CustomAppBar(
              onPressed: () {},
              home_check: true,
            ),
          ),
          body: Container(
            color: kwhiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: kGreenColor,
                  ),
                  child:  Text(
                    "ASP-CSP QuizMaster",
                    style: GoogleFonts.lato(
                      color: kwhiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                    // style: TextStyle(
                    //   color: kwhiteColor,
                    //   fontSize: 22,
                    //   fontWeight: FontWeight.w900,
                    // ),
                  ),
                ),
                Container(
                  height: 240,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 30, top: 20),
                    decoration: const BoxDecoration(
                      color: Color(0xFF44592A),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: const DecorationImage(
                          image: Svg(
                            AppAssets.zealoshBanner,
                          ),
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.bottomLeft),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Spacer(),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "20",
                              style: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Your Total Quiz",
                              style: TextStyle(
                                color: kwhiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            AppPrimaryButton(
                              buttonColor: kGreenColor,
                              height: 30,
                              width: 120,
                              onTap: () => Routes.pushNamed(Routes.questions),
                              name: "Start the quiz",
                              fontColor: kBlackColor,
                              fontweight: FontWeight.w900,
                            ),
                           
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        
                        GestureDetector(
                          onTap: () => Routes.pushNamed(Routes.about),
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: const BoxDecoration(
                                color: kGreenColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  AppAssets.zealoshAbout,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "About App",
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => Routes.pushNamed(Routes.splash),
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: const BoxDecoration(
                                color: kGreenColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  AppAssets.zealoshContact,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Contact Us",
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      "© All Rights Reserved By Zealosh",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

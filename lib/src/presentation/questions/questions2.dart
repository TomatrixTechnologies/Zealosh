import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:zealosh/src/constants/app_assets.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/src/presentation/appWidgets/button.dart';
import 'package:zealosh/src/presentation/appWidgets/custom_appbar.dart';
import 'package:zealosh/utils/router_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Questions2 extends StatefulWidget {
  const Questions2({super.key});

  @override
  State<Questions2> createState() => _Questions2State();
}

class _Questions2State extends State<Questions2> {
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kGreenColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: CustomAppBar(
              onPressed: () => Routes.goBack(), home_check: false,
            ),
          ),
          body: Container(
              height: MediaQuery.sizeOf(context).height,
              color: kwhiteColor,
              child: Stack(children: [
                Container(
                  height: 150,
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: kGreenColor,
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Question 02",
                              style: TextStyle(
                                color: kwhiteColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Time Left",
                                  style: TextStyle(
                                    color: kwhiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                AppPrimaryButton(
                                      buttonColor: kBlackColor,
                                      height: 30,
                                      width: 160,
                                      onTap: () => _showDetailPopup(context),
                                      name: "Read Explanation",
                                      fontColor: kwhiteColor,
                                      fontweight: FontWeight.w500,
                                    ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearProgressIndicator(
                          value: 1, // 70% progress
                          backgroundColor:kGrayColor,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF44592A),
                          ),
                          minHeight: 10.0, // Minimum height of the line
                          borderRadius: BorderRadius.circular(5),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: kBlackColor,
                                    blurRadius: 10.0,
                                    spreadRadius: -5),
                              ]),
                          child: Column(
                            children: [
                              Container(
                                  height: 180,
                                  width: 800,
                                  padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF5F5F5F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Question",
                                      style: TextStyle(
                                        color: kwhiteColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Which of the following factors does NOT impact an individual's thermal equilibrium?",
                                      style: TextStyle(
                                        color: kwhiteColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                   
                                  ],
                                ),
                              ),
                              Container(
                                // height: 280,
                                width: 800,
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                  color: kwhiteColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          done = true;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: kwhiteColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                            border: Border.all(
                                                color: kBlackColor)),
                                        child: const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                "A. Atmospheric pressure",
                                                style: TextStyle(
                                                  color: kBlackColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          done = true;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: kwhiteColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                            border: Border.all(
                                                color: kBlackColor)),
                                        child: const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                "B. Perspiration evaporation",
                                                style: TextStyle(
                                                  color: kBlackColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          done = true;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: done!
                                                ?kGreenColor
                                                : kwhiteColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                            border: Border.all(
                                              color: done!
                                                  ? kGreenColor
                                                  : kBlackColor,
                                            )),
                                        child: const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                "C. Metabolic rate d.Heat transfer through convection",
                                                style: TextStyle(
                                                  color: kBlackColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          done = true;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: kwhiteColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                            border: Border.all(
                                                color: kBlackColor)),
                                        child: const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: Text(
                                                "D. Lorem ipsum dolor sit amet",
                                                style: TextStyle(
                                                  color: kBlackColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Visibility(
                              visible: done,
                              child: AppPrimaryButton(
                                  buttonColor: kGreenColor,
                                  height: 30,
                                  width: 110,
                                  onTap: () =>
                                      Routes.pushNamed(Routes.score),
                                  name: "Submit",
                                  fontColor: kwhiteColor,
                                  fontweight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]))),
    );
  }
}

void _showDetailPopup(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          "Explanation",
          style: TextStyle(
            color: kGreenColor,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Text(
          "During the construction of a stainless steel pressure vessel, the most toxic welding fume generated would likely be chromium fumes. Stainless steel typically contains chromium, and during the welding process, especially if it involves high temperatures or poor ventilation, chromium fumes can be released. Chromium fumes are known to be hazardous, particularly hexavalent chromium compounds, which can cause respiratory issues and are classified as carcinogenic. Therefore, proper ventilation, personal protective equipment, and adherence to safety guidelines are essential to mitigate the risks associated with welding fumes.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Container(
              height: 30,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: const Center(
                child: Text(
                  "Close",
                  style: TextStyle(
                    color: kwhiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}

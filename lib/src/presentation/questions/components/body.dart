import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/src/controllers/question_controller.dart';
import 'package:zealosh/src/presentation/appWidgets/button.dart';
import 'package:zealosh/utils/router_helper.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());
    return SafeArea(
     child:Stack(children: [
                Container(
                  height: 400,
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: kGreenColor,
                  ),
                ),
         SizedBox(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                             SizedBox(height: 20),
           
                Padding(
                 padding:
                     EdgeInsets.symmetric(horizontal: kDefaultPadding),
                 child: Row(
                   children: [
                     Obx(
                       () => Text.rich(
                         TextSpan(
                           text:
                               "Question ${_questionController.questionNumber.value}",
                          style: TextStyle(
                                    color: kwhiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                           children: [
                             TextSpan(
                               text: "/${_questionController.questions.length}",
                             style: TextStyle(
                                    color: kwhiteColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     Spacer(),
                     Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Time Left",
                                  style: TextStyle(
                                    color: kwhiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                AppPrimaryButton(
                                  buttonColor: kBlackColor,
                                  height: 36,
                                  width: 100,
                                  onTap: () {},
                                  name: "09:20 Mins",
                                  fontColor: kwhiteColor,
                                  fontweight: FontWeight.w600,
                                )
                              ],
                            )
                   ],
                 ),
               ),
               SizedBox(height: kDefaultPadding),
           
               Padding(
                 padding:
                     EdgeInsets.symmetric(horizontal: kDefaultPadding),
                 child: ProgressBar(),
               ),
             
               SizedBox(height: kDefaultPadding),
               Expanded(
                 child: Stack(
                   children: [
                    Column(
                      children: [
                        Container(color: kGreenColor,height: 50,),
                        Expanded(child: Container(color: kwhiteColor,)),
                      ],
                    ),
                     Column(
                       children: [
                          Expanded(
                            
                            child: PageView.builder(
                               // Block swipe to next qn
                               physics: NeverScrollableScrollPhysics(),
                               controller: _questionController.pageController,
                               onPageChanged: _questionController.updateTheQnNum,
                               itemCount: _questionController.questions.length,
                               itemBuilder: (context, index) =>SingleChildScrollView(
      scrollDirection: Axis.vertical,
                                 child: QuestionCard(
                                     question: _questionController.questions[index]),
                               ),
                             
                                                     ),
                          ),
                        //   const SizedBox(
                        //   height: 10,
                        // ),
                        // Row(
                        //   children: [
                        //     Spacer(),
                        //     Visibility(
                        //         visible: true,
                        //         child: AppPrimaryButton(
                        //           buttonColor: kGreenColor,
                        //           height: 30,
                        //           width: 110,
                        //           onTap: () =>
                        //              _questionController.nextQuestion,
                        //           name: "Next",
                        //           fontColor: kwhiteColor,
                        //           fontweight: FontWeight.w600,
                        //         )),
                        //   ],
                        // ),
                       ],
                     ),
                   ],
                 ),
               ),
               
             ],
           ),
         ),
       ],
     ),
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
            fontSize: 25,
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

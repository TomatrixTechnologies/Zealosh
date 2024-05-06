

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/src/controllers/question_controller.dart';
import 'package:zealosh/src/domin/Questions.dart';
import 'package:zealosh/src/presentation/appWidgets/button.dart';

import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // it means we have to pass this
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      
                offset: Offset(0, 20),
                                        color: kGrayColor,
                                        blurRadius: 25,
                                        spreadRadius:-25 ),
                                  ]),
            child: Column(
             
              children: [

             Container(
                                      height:  question.question.length<150? 150: question.question.length.toDouble() ,
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                          color: Color(0xFF5F5F5F),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          
                      Text(
                       question.question ,
                        style: const TextStyle(
                                        color: kwhiteColor,
                                        fontSize: 14,
                                        
                                      ),
                      ),
                            const SizedBox(height: 10),
                           AppPrimaryButton(
                                            buttonColor: kBlackColor,
                                            height: 30,
                                            width: 150,
                                            onTap: () => _showDetailPopup(context),
                                            name: "Read Explanation",
                                            fontColor: kwhiteColor,
                                            fontweight: FontWeight.w400,
                                          ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                   padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                        color: kwhiteColor,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                      ),
                  child: Column(
                    children: [
                      const SizedBox(height: kDefaultPadding / 2),
                       ...List.generate(
                    question.options.length,
                    (index) => Option(
                      index: index,
                      text: question.options[index],
                      press: () => _controller.checkAns(question, index),
                    ),
                  ),
                    ],
                  ),
                ),
               
                
              ],
            ),
          
        ),
        SizedBox(height: 50,)
      ],
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
        title: const Text(
          "Explanation",
          style: TextStyle(
            color: kGreenColor,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: const Text(
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

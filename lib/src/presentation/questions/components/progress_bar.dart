import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/src/controllers/question_controller.dart';


class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   width: double.infinity,
        //   height: 15,
        //   decoration: BoxDecoration(
            
        //                       color:kwhiteColor,
        //     // border: Border.all(color:  Color(0xFF44592A), width: 3),
        //     borderRadius: BorderRadius.circular(60),
        //   ),
        //   child: GetBuilder<QuestionController>(
        //     init: QuestionController(),
        //     builder: (controller) {
        //       return 
        //           Stack(
        //             children: [
        //               // LayoutBuilder provide us the available space for the conatiner
        //               // constraints.maxWidth needed for our animation
        //               LayoutBuilder(
        //                 builder: (context, constraints) => Container(
        //                   // from 0 to 1 it takes 60s
        //                   width: constraints.maxWidth * controller.animation.value>20? constraints.maxWidth * controller.animation.value:20,
        //                   decoration: BoxDecoration(
        //                     color:  const Color(0xFF44592A),
        //                     borderRadius: BorderRadius.circular(60),
        //                   ),
        //                 ),
        //               ),
        //                 Positioned.fill(
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: kDefaultPadding / 2),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text("${(controller.animation.value )} sec"),
                              
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //             ],
        //           );
                
        //     },
        //   ),
        // ),   SizedBox(height: 20,),
                GetBuilder<QuestionController>(
            init: QuestionController(),
            builder: (controller) {
              return   LinearProgressIndicator(
                              value: controller.animation.value>.05?  controller.animation.value:.05, // 70% progress
                              backgroundColor:kwhiteColor,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xFF44592A),
                              ),
                              minHeight: 15.0, // Minimum height of the line
                              borderRadius: BorderRadius.circular(30),
                            );})
                ],
              );
  }
}

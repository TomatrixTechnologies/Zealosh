import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Color buttonColor;
  final Color fontColor;
  final VoidCallback onTap;
  final FontWeight fontweight;

  const AppPrimaryButton({
    Key? key,
    required this.buttonColor,
    required this.width,
    required this.height,
    required this.onTap,
    required this.name,
    required this.fontColor, required this.fontweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        // margin: EdgeInsets.only(
        //   top: MediaQuery.of(context).size.width * .0356,
        //   // left: MediaQuery.of(context).size.width * .056,
        //   // right: MediaQuery.of(context).size.width * .056,
        //   bottom: MediaQuery.of(context).size.width * .0256,
        // ),
        decoration: BoxDecoration(
           borderRadius:
                                          BorderRadius.all(Radius.circular(7)),
          color: buttonColor,
        ),

        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: fontColor, fontSize: 12, fontWeight: fontweight),
          ),
        ),
      ),
    );
   
  }
}

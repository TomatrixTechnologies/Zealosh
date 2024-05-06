import 'package:flutter_svg/svg.dart';
import 'package:zealosh/src/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:zealosh/src/constants/app_constants.dart';


// ignore: must_be_immutable
class Exceptions extends StatelessWidget {
  String image;
  String message;
  Exceptions({super.key, required this.image, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * .49333,
              child: SvgPicture.asset(AppAssets.exception)),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * .872,
              child: Text(
                message,
                style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * .064,
                ),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * .872,
              child: const Text(
                "Sorry, We couldn't find anything. You can try another search or browse our catalogue.",
                style: TextStyle(
                  color:kDGrayColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

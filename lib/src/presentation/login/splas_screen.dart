import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:zealosh/src/constants/app_assets.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/utils/router_helper.dart';
import 'package:zealosh/utils/shared_preference/shared_preferences_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zealosh/utils/shared_preference/token_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      final isLoggedin =
          TokenManager.getString(SharedPreferenceKeys.accessToken).isNotEmpty;
      if (isLoggedin) {
        Routes.pushNamedAndRemoveUntil(Routes.mainPage);
      } else {
        Routes.pushNamedAndRemoveUntil(Routes.mainPage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kwhiteColor,
            kwhiteColor,
            kGreenColor
            
          ],
          tileMode: TileMode.repeated
        ),
      ),

      child: Center(
          child: Column(
            
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
                  SizedBox(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 151.0,
                    child: Image.asset(AppAssets.zealoshIcon),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width * .35,
                        lineHeight: 5.0,
                        percent: 0.6,
                        progressColor:kGreenColor,
                        barRadius: const Radius.circular(5),
                      ),
                    ],
                  ),
                 
                ],
              ),
                Padding(
                 padding: const EdgeInsets.all(50.0),
                 child: Text(
                        "www.zealosh.com",
                        style: TextStyle(
                          color: kwhiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}

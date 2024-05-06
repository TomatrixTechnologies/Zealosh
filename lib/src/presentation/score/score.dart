import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealosh/src/constants/app_assets.dart';
import 'package:zealosh/src/constants/app_constants.dart';
import 'package:zealosh/utils/router_helper.dart';

class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kDGreenColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.zealoshCelebration),
            Spacer(),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
             decoration: const BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.all( Radius.circular(20),),
                          ),
            child: Column(
              children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*.5,
                                    child: Image.asset(AppAssets.zealoshStar,fit: BoxFit.fill,)),
                                  const SizedBox(height: 30,),
                const Text(
                                    "Congratulations ",
                                    style: TextStyle(
                                      color: kwhiteColor,
                                      fontSize: 34,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(height: 30,),
                                  const Text(
                                    "You Have Been Successfully\nCompleted This Section",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: kwhiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),const SizedBox(height: 30,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "09",
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ), const Text(
                                        "/10",
                                        style: TextStyle(
                                          color: kwhiteColor,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30,),
                   GestureDetector(
                                                      onTap: () => Routes.pushNamed(Routes.mainPage),
                                                      child: Container(
                                                        height: 50,
                                                        // /width: 160,
                                                        decoration:  BoxDecoration(
                                                            color:kDGreenColor,
                                                            borderRadius:
                                                                BorderRadius.all(Radius.circular(7))),
                                                        child: const Center(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            children: [
                                                              Text(
                                                                "Play Again",
                                                                style: TextStyle(
                                                                  color: kwhiteColor,
                                                                  fontSize: 22,
                                                                  fontWeight: FontWeight.w900,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),      const SizedBox(height: 10,),
                   GestureDetector(
                                                      onTap: () => Routes.pushNamed(Routes.mainPage),
                                                      child: Container(
                                                        height: 50,
                                                        // /width: 160,
                                                        decoration:  BoxDecoration(
                                                            color:kGrayColor,
                                                            borderRadius:
                                                                BorderRadius.all(Radius.circular(7))),
                                                        child: const Center(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            children: [
                                                              Text(
                                                                "Back Home",
                                                                style: TextStyle(
                                                                  color: kwhiteColor,
                                                                  fontSize: 22,
                                                                  fontWeight: FontWeight.w900,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
              ],
            ),
          ),
            Image.asset(AppAssets.zealoshCelebration),

        ],),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quaav/GetStarted/Intro.dart';
import 'package:quaav/Usefull/Buttons.dart';
import 'package:quaav/Usefull/Functions.dart';
import 'package:quaav/Usefull/colors.dart';


class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  bool isHide = false;
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: IntroductionScreen(
              isProgressTap:false,
              key: _introKey,
              globalBackgroundColor: Colors.transparent,
              pages: [
                PageViewModel(
                    titleWidget: Row(
                      children: [
                        Spacer(),
                        mainTextFAQS("Production", Colors.black, 25.0, FontWeight.bold, 1),
                        Spacer(),
                      ],
                    ),
                    bodyWidget: Column(
                      children: [
                        mainText("Upload videos, create their shorts & variations,\n"
                            "and enhance your video production experience\n"
                            "with us!!", bglighttwo, 10.0, FontWeight.normal, 3),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                            height: 35.0,
                            width: 120.0,
                            child: custombtnsss("Next", (){_introKey.currentState!.next();}, bgColor, Colors.white, borderRadius))
                      ],
                    ),
                    image: Image.asset('Assets/onei.png',width: MediaQuery.of(context).size.width * 0.60,),

                    decoration: const PageDecoration(
                        bodyPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                        contentMargin: EdgeInsets.all(0),
                        titlePadding: EdgeInsets.only(top: 20.0),
                        bodyAlignment: Alignment.topLeft,

                        imageFlex: 3,
                        bodyFlex: 2,
                        imagePadding: EdgeInsets.only(bottom: 0)
                    ),

                ),

                PageViewModel(
                    titleWidget: Row(
                      children: [
                        Spacer(),
                        mainTextFAQS("Flash", Colors.black, 25.0, FontWeight.bold, 1),
                        Spacer(),
                      ],
                    ),
                    bodyWidget: Column(
                      children: [
                        mainText("Post your videos on multiple platforms\n"
                    "in one go!!!", bglighttwo, 10.0, FontWeight.normal, 3),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                            height: 35.0,
                            width: 120.0,
                            child: custombtnsss("Next", (){_introKey.currentState!.next();}, bgColor, Colors.white, borderRadius))
                      ],
                    ),
                    image: Image.asset('Assets/twoi.png',width: MediaQuery.of(context).size.width * 0.60,),

                    decoration: const PageDecoration(
                        bodyPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                        contentMargin: EdgeInsets.all(0),
                        titlePadding: EdgeInsets.only(top: 20.0),
                        bodyAlignment: Alignment.topLeft,

                        imageFlex: 3,
                        bodyFlex: 2,
                        imagePadding: EdgeInsets.only(bottom: 0)
                    ),

                ),

                PageViewModel(
                  titleWidget: Row(
                    children: [
                      Spacer(),
                      mainTextFAQS("Site", Colors.black, 25.0, FontWeight.bold, 1),
                      Spacer(),
                    ],
                  ),
                  bodyWidget: Column(
                    children: [
                      mainText("Create and maintain your own marketplace\n"
                  "using our platform", bglighttwo, 10.0, FontWeight.normal, 3),
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 35.0,
                          width: 120.0,
                          child: custombtnsss("Next", (){_introKey.currentState!.next();}, bgColor, Colors.white, borderRadius))
                    ],
                  ),
                  image: Image.asset('Assets/threei.png',width: MediaQuery.of(context).size.width * 0.60,),

                  decoration: const PageDecoration(
                      bodyPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                      contentMargin: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.only(top: 20.0),
                      bodyAlignment: Alignment.topLeft,

                      imageFlex: 3,
                      bodyFlex: 2,
                      imagePadding: EdgeInsets.only(bottom: 0)
                  ),

                ),

                PageViewModel(
                  titleWidget: Row(
                    children: [
                      Spacer(),
                      mainTextFAQS("Network", Colors.black, 25.0, FontWeight.bold, 1),
                      Spacer(),
                    ],
                  ),
                  bodyWidget: Column(
                    children: [
                      mainText("Connect with influencers for affiliate\n"
                  "marketing", bglighttwo, 10.0, FontWeight.normal, 3),
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 35.0,
                          width: 180.0,
                          child: custombtnsss("Get Started", (){navScreen(Intro(), context, false);}, bgColor, Colors.white, borderRadius))
                    ],
                  ),
                  image: Image.asset('Assets/fouri.png',width: MediaQuery.of(context).size.width * 0.60,),

                  decoration: const PageDecoration(
                      bodyPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
                      contentMargin: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.only(top: 20.0),
                      bodyAlignment: Alignment.topLeft,

                      imageFlex: 3,
                      bodyFlex: 2,
                      imagePadding: EdgeInsets.only(bottom: 0)
                  ),

                ),

              ],

              dotsFlex: 2,
              dotsDecorator: DotsDecorator(
                activeColor: bgColor,
                color: bglight
              ),
              showDoneButton: false,

              // done: btnsss("Get Started", () {}, bgColor, Colors.white),
              // dotsDecorator: DotsDecorator(
              //   activeColor: mainColor,
              //   size: const Size(10.0,2.0),
              //   activeSize: const Size(20.0, 2.0),
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(0.0)
              //   ),
              //   activeShape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(0.0)
              //   ),
              // ),
              controlsPadding: EdgeInsets.all(0),
              showNextButton: false,
              // showBackButton: true,

              onDone: (){

              },
            ),
          ),
          loaderss(isHide, context)
        ],
      ),
    );
  }
}

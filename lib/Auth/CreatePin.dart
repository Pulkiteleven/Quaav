
import 'package:flutter/material.dart';
import 'package:quaav/Usefull/colors.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';


class createPin extends StatefulWidget {
  Map data;
  createPin({super.key,required this.data});

  @override
  State<createPin> createState() => _createPinState();
}

class _createPinState extends State<createPin> {
  TextEditingController textEditingController = new TextEditingController(text: "");

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: bglight,
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  String otp = "";


  @override
  Widget build(BuildContext context) {
    bool isHide = false;
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mainTextFAQS("Create a \nPin", Colors.white, 30.0, FontWeight.bold, 2),
                  mainTextFAQS("Create a PIN to secure your account", bglighttwo, 13.0, FontWeight.normal, 1),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 30.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Icon(Icons.lock,color: bglighttwo,size: 120.0,),
                        Spacer(),
                      ],
                    ),
                  ),

                  TextFieldPin(
                      textController: textEditingController,
                      codeLength: 4,
                      alignment: MainAxisAlignment.spaceEvenly,
                      defaultBoxSize: 60.0,
                      margin: 5,
                      selectedBoxSize: 60.0,
                      textStyle: TextStyle(fontSize: 20,fontFamily: 'mons',color: bglighttwo),
                      defaultDecoration: _pinPutDecoration,
                      selectedDecoration: _pinPutDecoration.copyWith(color: textBox),


                      onChange: (code) {
                        setState(() {
                          otp = code;
                        });
                      }),

                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      mainTextFAQS("Create", Colors.white, 25.0, FontWeight.bold, 1),
                      Spacer(),
                      FloatingActionButton(onPressed: (){},mini: false,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        backgroundColor: Colors.black, child: Icon(Icons.arrow_forward_sharp, color: Colors.white,),)
                    ],
                  ),

                ],
              ),
            ),
          ),
          loaderss(isHide, context)
        ],
      ),
    );
  }
}

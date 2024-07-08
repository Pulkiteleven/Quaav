
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:quaav/Auth/CreatePin.dart';
import 'package:quaav/Auth/Register.dart';
import 'package:quaav/Usefull/Functions.dart';
import 'package:quaav/Usefull/colors.dart';
import 'package:iconsax/iconsax.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  bool isHide = false;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 25.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mainTextFAQS("Forgot \nPassword?", Colors.white, 30.0, FontWeight.bold, 2),

                    SizedBox(height: 40.0,),
                    TextFormField(
                      maxLength: 64,
                      keyboardType:TextInputType.emailAddress,
                      cursorColor: mainColor,

                      style: TextStyle(
                        fontFamily: 'pop',
                        fontSize: 15.0,
                        color: bgColor,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          counterText: "",
                          fillColor: textBox,
                          hintText: "    Enter your email address",

                          prefixIcon: Icon(Icons.email,color: bgColor,),
                          hintStyle: TextStyle(
                              fontFamily: 'pop',
                              color:Colors.grey
                          ),
                          labelStyle: TextStyle(
                              fontFamily: 'pop',
                              color:bglight
                          ),
                          errorStyle: TextStyle(
                              fontFamily: 'mons',
                              color: errorColor
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(13.0)),
                              borderSide:
                              BorderSide(color: Colors.redAccent)),

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(13.0)),
                              borderSide:
                              BorderSide(color: bglight)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(13.0)),
                              borderSide:
                              BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(13.0)),
                              borderSide:
                              BorderSide(color: Colors.transparent))),


                      onChanged: (text){
                        email = text;
                      },
                      validator: (value){
                        bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);
                        if (!emailValid) {
                          return ("Please enter a valid email");
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        mainTextFAQS("*We will send you a mail to reset password", bglighttwo, 13.0, FontWeight.normal, 1)
                      ],
                    ),

                    SizedBox(height: 30.0,),

                    Row(
                      children: [
                        mainTextFAQS("Reset Password", Colors.white, 25.0, FontWeight.bold, 1),
                        Spacer(),
                        FloatingActionButton(onPressed: (){

                        },mini: false,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          backgroundColor: Colors.black, child: Icon(Icons.arrow_forward_sharp, color: Colors.white,),)
                      ],
                    ),

                    Spacer(),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Spacer(),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          },
                            child:mainText("Back", Colors.white, 13.0, FontWeight.bold, 1),
                          ),
                          Spacer(),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          loaderss(isHide, context)
        ],
      ),
    );
  }
}

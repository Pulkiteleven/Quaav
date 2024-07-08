
import 'package:flutter/material.dart';
import 'package:quaav/Auth/CreatePin.dart';
import 'package:quaav/Auth/Login.dart';
import 'package:quaav/Usefull/Functions.dart';
import 'package:quaav/Usefull/colors.dart';
import 'package:iconsax/iconsax.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String userName = "";
  String password = "";
  bool showpass = false;
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
                    mainTextFAQS("Create an \nAccount", Colors.white, 30.0, FontWeight.bold, 2),

                    SizedBox(height: 40.0,),
                    TextFormField(
                      maxLength: 64,
                      keyboardType:TextInputType.text,
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
                          hintText: "    UserName",

                          prefixIcon: Icon(Icons.account_circle_rounded,color: bgColor,),
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
                        userName = text;
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return("Please enter your username");
                        }
                      },
                    ),

                    SizedBox(height: 30.0,),
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
                          hintText: "    Email",

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




                    SizedBox(height: 30.0,),

                    Row(
                      children: [
                        mainTextFAQS("Register", Colors.white, 25.0, FontWeight.bold, 1),
                        Spacer(),
                        FloatingActionButton(onPressed: (){
                          next();
                        },mini: false,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          backgroundColor: Colors.black, child: Icon(Icons.arrow_forward_sharp, color: Colors.white,),)
                      ],
                    ),

                    SizedBox(height: 40.0,),

                    Row(
                      children: [
                        Spacer(),
                        mainText("or sign up with", bglighttwo, 13.0, FontWeight.normal, 1),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 20.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(onPressed: (){},mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                            backgroundColor: Colors.white, child: Image.asset('Assets/google.png',width: 25.0,)),

                        SizedBox(width: 20.0,),
                        FloatingActionButton(onPressed: (){},mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                            backgroundColor: Colors.white, child: Image.asset('Assets/facebook.png',width: 25.0,)),

                        SizedBox(width: 20.0,),

                        FloatingActionButton(onPressed: (){},mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                            backgroundColor: Colors.white, child: Image.asset('Assets/insta.png',width: 25.0,)),

                        SizedBox(width: 20.0,),

                        FloatingActionButton(onPressed: (){},mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                            backgroundColor: Colors.white, child: Image.asset('Assets/x.png',width: 25.0,)),
                      ],
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Spacer(),
                          mainText("Already have an account?", bglighttwo, 13.0, FontWeight.bold, 1),
                          TextButton(onPressed: (){
                            navScreen(Login(), context, true);
                          },
                            child:mainText("Sign In", Colors.white, 13.0, FontWeight.bold, 1),
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

  next() {
    if(formKey.currentState!.validate()) {
      Map data = {
        'name': userName,
        'email': email,
      };
      navScreen(createPin(data: data), context, false);
    }
  }
}

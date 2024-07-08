import 'package:flutter/material.dart';
import 'package:quaav/Auth/Login.dart';
import 'package:quaav/GetStarted/GetStatrted.dart';

import 'Usefull/colors.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MaterialApp(

    // home: splash(),
    home: Login(),
    // home: getStarted(),
  ));
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          children: [
            gbg(context,bglight,bgColor),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Row(
                  children: [
                    Spacer(),
                    Image.asset("Assets/tlogo.png",width: 120.0,),

                    Spacer(),
                  ],
                ),
                // SizedBox(height: 10.0,),
                mainText("Quaav", Colors.white, 20.0, FontWeight.bold, 1),

                // Row(
                //   children: [
                //     Spacer(),
                //     Image.asset('Assets/ilogo.png',width: 60.0,color: mainColor,),
                //     // mainText(" be one", mainColor, 25.0, FontWeight.normal, 1),
                //     Spacer(),
                //   ],
                // ),

              ],
            ),
          ],
        ),
      ),
    );
  }


}

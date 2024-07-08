import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cherry_toast/cherry_toast.dart' as cherry;


// import 'package:onesignal_flutter/onesignal_flutter.dart';


String mainFont = 'pop';

// Color bgColor = Color(0xFF150714);
// Color bglight = Color(0xFF200B1E);
// Color mainColor = Color(0xFFFE69A9);
// Color mainlight = Color(0xFFFF2181);
// Color secColor = Color(0xFF896186);

// Color bgColor = Color(0xFF00112C);
// Color bglight = Color(0xFF001B46);
// Color mainColor = Color(0xFF7E13B2);
// Color mainlight = Color(0xFF790EAF);
// Color secColor = Color(0xFF896186);

Color bgColor = Color(0xFF3F334F);

Color bglight = Color(0xFFA999BE);
Color bglighttwo = Color(0xFF967EB5);

Color mainColor = Color(0xFFF989F9);
Color mainColordDark = Color(0xFF93148B);
Color marron = Color(0xFFAB1B53);
Color mainYellow = Color(0xFFEB9C54);

Color textBox = Color(0xFFECDFFF);



Color yellove = Color(0xFFF0DE30);



Color errorColor = Color(0xFFFF0058);

Color transparent_overlay = Color(0xFFFFFF);

Color bg_trans = Color(0xB300112C);

Color redColor = Color(0xFFFF0058);

Color lightRed = Color(0xFFFF0058);


AutoSizeText mainText(String text, Color c, double size, FontWeight w,int lines) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.center,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}

Text onlymainText(String text, Color c, double size, FontWeight w,int lines) {
  return Text(
    text,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,
    ),
  );
}

Text onlyCentermainText(String text, Color c, double size, FontWeight w,int lines) {
  return Text(
    text,
    textAlign: TextAlign.center,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,
    ),
  );
}

Text newonlymainText(String text, Color c, double size, FontWeight w,int lines) {
  return Text(
    text,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: 'mp',
      fontWeight: w,
    ),
  );
}

AutoSizeText mainTextFAQS(String text, Color c, double size, FontWeight w,int lines) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.start,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}

AutoSizeText mainTextFAQSalign(String text, Color c, double size, FontWeight w,TextAlign a,int lines) {
  return AutoSizeText(
    text,
    textAlign: a,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}


AutoSizeText mainTextLines(String text, Color c, double size, FontWeight w,int lines) {
  return AutoSizeText(
    text,
    textAlign: TextAlign.start,
    maxLines: lines,
    style: TextStyle(
      color: c,
      letterSpacing: 0.5,
      fontSize: size,
      fontFamily: mainFont,
      fontWeight: w,

    ),
  );
}


class loader extends StatelessWidget {
  const loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      child: new Container(
        // height: 150.0,
        width: 150.0,
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: bglight,
          elevation: 5.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               CircularProgressIndicator(color: bgColor,),
                onlymainText("Please Wait...", mainColor, 10.0, FontWeight.normal, 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class msgLoader extends StatelessWidget {
  String msg;
  msgLoader({Key? key,required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.bottomCenter,
      child: new Container(
        height: 110.0,
        width: MediaQuery.of(context).size.width * 0.90,
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: mainColor,
          elevation: 7.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                mainText(msg, Colors.white, 15.0, FontWeight.normal, 2),
                SizedBox(height: 3.0,),
                CircularProgressIndicator(
                  backgroundColor: mainColor,
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


Widget loaderss(bool a,BuildContext context){
  return Visibility(
      visible: a,
      child: Stack(
        children: [
          Visibility(
            visible: a,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.1),
                alignment: Alignment.center,
              ),
            ),
          ),
          Visibility(visible: a, child: loader())
        ],
      ));
}

Widget msgLoaderss(bool a,String msg,BuildContext context){
  return Visibility(
      visible: a,
      child: Stack(
        children: [
          Visibility(
            visible: a,
            child: new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: new Card(
                color: transparent_overlay,
                elevation: 4.0,
              ),
            ),
          ),
          Visibility(visible: a, child: msgLoader(msg: msg))
        ],
      ));
}


void snacker(String s, BuildContext c){
  ScaffoldMessenger.of(c).showSnackBar(SnackBar(
      elevation: 0,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: mainColordDark,
      content:
      Text(s)));
}

void Snacker(String title,GlobalKey<ScaffoldMessengerState> aa){
  final snackBar = SnackBar(
      elevation: 2,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: yellove,
      content:mainTextLines(title, bgColor, 10.0, FontWeight.normal, 1) );

  aa.currentState?.showSnackBar(snackBar);
  // messangerKey.currentState?.showSnackBar(snackBar);

}

toaster(BuildContext context,String msg){

  cherry.CherryToast(
    themeColor: mainColor,
    backgroundColor: bgColor,
    icon: Iconsax.info_circle,
    shadowColor: Colors.black,
    iconColor: mainColor,
    title: onlymainText(msg, Colors.white, 13.0
        , FontWeight.bold, 1),
    animationDuration: Duration(milliseconds: 300),
    toastDuration: Duration(milliseconds: 2000),
  ).show(context);

  // Fluttertoast.showToast(msg: msg,
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     textColor: Colors.white,
  //     backgroundColor: mainColor);

}

dialogLoader(BuildContext context,) async{
  await showDialog(
    context: context,
    builder: (context) => new AlertDialog(
      backgroundColor: mainColor,
      alignment: Alignment.bottomCenter,
      content: CircularProgressIndicator(
        backgroundColor: Colors.white,
        color: bgColor,
        strokeWidth: 5,
      ),
    ),
  );
}

Widget circles(BuildContext context){
  return Stack(
    clipBehavior: Clip.hardEdge, children: [
      Container(
        // margin: EdgeInsets.only(),

        child:
        Transform.translate(
            offset: Offset(
              -70.0,
              -120.0,
            ),
            child: CircleAvatar(
              backgroundColor: bglight,
              radius: 130.0,
            ),
        ),
      ),
    Container(
      // margin: EdgeInsets.only(),

      child:
      Transform.translate(
        offset: Offset(
          MediaQuery.of(context).size.width - 200.0,
          MediaQuery.of(context).size.height - 200.0,
        ),
        child: CircleAvatar(
          backgroundColor: bglight,
          radius: 130.0,
        ),
      ),
    ),

  ],
  );
}
Widget gbg(BuildContext c,Color start, Color end){
  return Container(
    width: MediaQuery.of(c).size.width,
    height: MediaQuery.of(c).size.height,
    decoration: BoxDecoration(

      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          start,
          end,
        ],
      ),
    ),
  );
}

Widget Blurr(BuildContext context,double x){
  return BackdropFilter(filter: ImageFilter.blur(sigmaX:x, sigmaY: x),
    child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white.withOpacity(0.4),
      alignment: Alignment.center,
    ),
  );
}






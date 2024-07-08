import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';



import 'Buttons.dart';
import 'Functions.dart';
import 'colors.dart';





List<String> allBanners = [
  'banners/b1.jpg',
  'banners/b2.jpg',
  'banners/b3.jpg',
  'banners/b4.jpg',
  'banners/b5.jpg',
  'banners/b6.jpg',
];


Widget profileAvatar(File img,String index,double radius){

  if(img.path != ""){
    return CircleAvatar(
      radius: radius,
      backgroundColor: mainColor,
      child: ClipOval(
        child: Image.file(img,fit: BoxFit.cover,),
      ),
    );
  }
  else{
    return CircleAvatar(
      radius: radius,
      child: ClipOval(
        child: Column(),
      ),
    );
  }
}


Widget profileAvatarURL(String img,String index,double radius){

  if(img != ""){
    return CircleAvatar(
      radius: radius,
      backgroundColor: mainColor,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: img,
          fit:BoxFit.cover,
          placeholder: (context, url) => shimmerCircle(context, radius),
        )
      ),
    );
  }
  else{
    return CircleAvatar(
      radius: radius,
      child: ClipOval(
        child: Column(),
      ),
    );
  }
}


Widget squareprofileAvatarURL(String img,String index,double w,BuildContext context){

  if(img != ""){
    return Container(
      width: w,
      child: GestureDetector(
        onTap: (){
          ImageAlert(img, context);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
              child: CachedNetworkImage(
                imageUrl: img,
                fit:BoxFit.cover,
                placeholder: (context, url) => shimmerSquare(context, w),
              )
          ),
        ),
      ),
    );
  }
  else{
    return Container(
      width: w,
      height: w,
      child: GestureDetector(
        onTap: (){
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200.0),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Column(),

        ),
        ),
      ),
    );
  }
}

ImageAlert(String url,BuildContext context) async {

  return (await showDialog(
    context: context,
    builder: (ctx) => new AlertDialog(

      backgroundColor: Colors.transparent,
      elevation: 0.0,
      alignment: Alignment.center,
      contentPadding: EdgeInsets.fromLTRB(00, 0, 00, 00),
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 300.0,
            width: 300.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: CachedNetworkImage(
                    imageUrl: url,
                    fit:BoxFit.cover,
                    placeholder: (context, url) => shimmerSquare(context, 300),
                  )
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}

newImageAlert(Widget svg,BuildContext context) async {

  return (await showDialog(
    context: context,
    builder: (ctx) => new AlertDialog(

      backgroundColor: Colors.transparent,
      elevation: 0.0,
      alignment: Alignment.center,
      contentPadding: EdgeInsets.fromLTRB(00, 0, 00, 00),
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 300.0,
            width: 300.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: svg,

              ),
            ),
          ),
        ],
      ),
    ),
  ));
}

Widget newsquareprofileAvatarURL(String img,String index,double w,BuildContext context){

  if(img != ""){
    return Container(
      width: w,
      child: GestureDetector(
        onTap: (){

        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: CachedNetworkImage(
                imageUrl: img,
                fit:BoxFit.cover,
                placeholder: (context, url) => shimmerSquare(context, w),
              )
          ),
        ),
      ),
    );
  }
  else{
    return Container(
      width: w,
      height: w,
      child: GestureDetector(
        onTap: (){
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Column(),

          ),
        ),
      ),
    );
  }
}




Widget shimmerCircle(BuildContext context,double r){
  return Shimmer.fromColors(
    baseColor: bglight,
    highlightColor: mainColordDark,
    child: CircleAvatar(
      radius: r,
      backgroundColor: bglight,
      child: ClipOval(),
    )
  );
}

Widget shimmerSquare(BuildContext context,double w){
  return Shimmer.fromColors(
    baseColor: bglight,
    highlightColor: mainColordDark,
    child: Container(
      width: w,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    )
  );
}



class passionBanners extends StatelessWidget {
  String img;
  String title;
  passionBanners({Key? key,required this.img,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.19,
      margin: EdgeInsets.only(bottom: 7.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.19,
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: bgColor,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                      imageUrl: img,
                      fit:BoxFit.cover,
                    placeholder: (context, url) => shimmers(context),
                  )
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.19,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: bg_trans,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: onlymainText(title.toUpperCase(), Colors.white, 10.0, FontWeight.bold, 1),
          ),

        ],
      ),
    );
  }
}

Widget shimmers(BuildContext context){
  return
    Shimmer.fromColors(
      baseColor: bglight,
      highlightColor: mainColordDark,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.19,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: bglight,
          ),
        ),
      ),
    );
}










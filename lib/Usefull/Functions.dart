

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';





navScreen(Widget a,BuildContext context,bool replace){
  if(replace){
    Navigator.pushReplacement(context,MaterialPageRoute(builder:
        (context){
      return a;
    }));
  }
  else {
    Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(builder: (context){
      return a;
    }));
    // Navigator.push(context,rootN MaterialPageRoute(builder:
    //     (context) {
    //   return a;
    // }));
  }
}

String getAge(DateTime dob){
  DateTime now = DateTime.now();
  var diff = now.difference(dob).inDays;
  var year = diff/365;
  var age = year.toString().split(".")[0].toString();
  return age.toString();
}

int randomNumber() {
  Random random = new Random();
  int randomNumber = random.nextInt(6);
  return randomNumber;
}

String generateRandomString(int len) {
  var r = Random();
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
      .join();
}


launch_us(String s) async{
  await launchUrl(
      Uri.parse(s),
      mode: LaunchMode.externalApplication
  );

}

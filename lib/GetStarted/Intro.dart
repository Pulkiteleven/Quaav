 import 'package:flutter/material.dart';
import 'package:quaav/Usefull/colors.dart';


class Intro extends StatefulWidget {
   const Intro({super.key});

   @override
   State<Intro> createState() => _IntroState();
 }

 class _IntroState extends State<Intro> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: bgColor,
       body: Stack(
         children: [
           Stack(
             clipBehavior: Clip.none, // Allow overflow
             children: [
               Container(
                 alignment: Alignment.center,
                 child: OverflowBox(
                   maxWidth: double.infinity,
                   maxHeight: double.infinity,
                   child: Transform.translate(
                     offset: Offset(
                       0.0,
                       0.0,
                     ),
                     child: Image.asset(
                       "Assets/eagle.png",
                       width: 2000,
                     ),
                   ),
                 ),
               ),
             ],
           ),

           Blurr(context, 4.0),
           
           SafeArea(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 40.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Row(
                     children: [
                       Spacer(),
                       mainText("Quaav", Colors.black, 35.0, FontWeight.bold, 1),
                       Spacer(),
                     ],
                   ),
                   mainText("Revolutionising Content Creation", Colors.black, 15.0, FontWeight.normal, 1),

                   SizedBox(height: 90.0,),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 80.0,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     child: Stack(
                       children: [
                         Blurr(context, 20.0),
                         Container(
                           alignment: Alignment.center,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               mainText("Quaav Production", Colors.black, 20.0, FontWeight.bold, 1),
                               mainText("Upload and Generate Variations of your content", Colors.black, 10.0, FontWeight.normal, 1),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),

                   SizedBox(height: 20.0,),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 80.0,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     child: Stack(
                       children: [
                         Blurr(context, 20.0),
                         Container(
                           alignment: Alignment.center,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               mainText("Quaav Flash", Colors.black, 20.0, FontWeight.bold, 1),
                               mainText("Post your content on multiple social media platforms", Colors.black, 10.0, FontWeight.normal, 1),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),

                   SizedBox(height: 20.0,),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 80.0,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     child: Stack(
                       children: [
                         Blurr(context, 20.0),
                         Container(
                           alignment: Alignment.center,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               mainText("Quaav Site", Colors.black, 20.0, FontWeight.bold, 1),
                               mainText("Start your dedicated e-commerce site in under 1 min", Colors.black, 10.0, FontWeight.normal, 1),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),

                   SizedBox(height: 20.0,),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 80.0,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     child: Stack(
                       children: [
                         Blurr(context, 20.0),
                         Container(
                           alignment: Alignment.center,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               mainText("Quaav Network", Colors.black, 20.0, FontWeight.bold, 1),
                               mainText("Connect with content creators to feature your merchandise", Colors.black, 10.0, FontWeight.normal, 1),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),


                 ],
               ),
             ),
           ),

         ],
       ),
     );
   }
 }

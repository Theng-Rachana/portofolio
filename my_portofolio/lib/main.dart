// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portofolio/responsive_layout/desktop_leyout/dektop_layout.dart';
import 'package:my_portofolio/responsive_layout/mobile_layout/mobile_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1280){
            return Maindektoppage();
          }
          // else if (constraints.maxWidth > 600){
          //   return;
          // }
          else{
            return MainMobilepage();
          }
        })
    );
  }
}
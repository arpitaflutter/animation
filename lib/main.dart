import 'package:animation/screens/animation/view/animationScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => animationScreen(),
      },
    ),
  );
}
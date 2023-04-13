import 'package:counter_using_getx/screens/homescreen/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (p0) => Homescreen(),
      },
    ),
  );
}
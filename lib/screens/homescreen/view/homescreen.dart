import 'package:counter_using_getx/screens/homescreen/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("CounterApp using GetX",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),backgroundColor: Colors.cyan),
        body: Center(
          child: Obx(
            () => Text(
              "${homecontroller.i}",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(backgroundColor: Colors.cyan,onPressed: () {
              homecontroller.i++;

            },child: Icon(Icons.add),),
            FloatingActionButton(backgroundColor: Colors.cyan,onPressed: () {
              homecontroller.i--;

            },child: Text("-",style: TextStyle(fontSize: 30),),),
            FloatingActionButton(backgroundColor: Colors.cyan,onPressed: () {
              homecontroller.i.value=(homecontroller.i*2).toInt();

            },child: Text("2x"),),
            FloatingActionButton(backgroundColor: Colors.cyan,onPressed: () {
              homecontroller.i.value=(homecontroller.i*3).toInt();

            },child: Text("3x"),),
            FloatingActionButton(backgroundColor: Colors.cyan,onPressed: () {
              homecontroller.i.value=(homecontroller.i*4).toInt();

            },child: Text("4x"),),
          ],
        ),

      ),
    );
  }
}

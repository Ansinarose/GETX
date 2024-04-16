import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/screens/homescreen.dart';

class RoutNavigation extends StatelessWidget {
  const RoutNavigation({Key? key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Get.to(
        HomeScreen(),
        arguments: {"data": "Data from main"} ,
        //to make screen full dialog
        fullscreenDialog: true,
        //to provide animation
       transition: Transition.zoom,
       duration: Duration(milliseconds: 3000),
       //curve animation
       curve: Curves.bounceInOut,
      );

      //go to home screen but no option to return back
    // Get.off(HomeScreen(title: ""));
    // Get.offAll(HomeScreen(title: ""));
    //goto next screen with some data

    
    }, 
    child: const Text("Rout Navigation"));
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("HOME page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is home screen'),
            ElevatedButton(onPressed: (){
              Get.back(result: 'This is from home screen');
            }, child: const Text('Back to main'))
          ],
        ),
      ),
    );
  }
}
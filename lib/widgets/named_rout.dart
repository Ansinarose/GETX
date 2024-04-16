import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameedRout extends StatelessWidget {
  const NameedRout({Key? key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

      Get.toNamed("/home");
    },
    
     child: const Text('Named rout'));
  }
}
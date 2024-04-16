import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Get.defaultDialog(
        title: "Dialog Title",
        titleStyle: TextStyle(fontSize: 25),
        middleText: "This is middle text",
        middleTextStyle: TextStyle(fontSize: 20),
        backgroundColor: Colors.amber,
        radius: 80,
        //To customize the middle text

        content: const Row(
          children: [CircularProgressIndicator(),
          SizedBox(
            width: 15,
          ),
          Expanded(child: Text("Data Loading"))],
        ),
        //Default cancel and confirm action

        textCancel: "cancel",
        cancelTextColor: Colors.black,
        textConfirm: "confirm",
        confirmTextColor: Colors.blue,
        onCancel: (){},
        onConfirm: (){},
        // color for defaut cancel and conform

        buttonColor: Colors.black,

        // for customizing
        cancel: const Text("cancel",
        style: TextStyle(color: Colors.white),
        ),

actions: [
  ElevatedButton(onPressed: (){}, child: const Text("Action1")),
  ElevatedButton(onPressed: (){}, child: const Text("Action2")
  )
],
     //barrierDismissible: false,
      );
    },
     child: const Text('Alert Dialog'));
  }
}
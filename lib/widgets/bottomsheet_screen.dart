import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
       Get.bottomSheet(
  Container(
      child:  Wrap(
        children: <Widget>[
         ListTile(
          leading:const Icon(Icons.wb_sunny_outlined) ,
          title: Text('Light theme'),
          onTap: () => {
            Get.changeTheme(ThemeData.light())
          },
         ),
         ListTile(
         leading: const Icon(Icons.wb_sunny),
         title: const Text('Drak theme'),
         onTap: () => {
          Get.changeTheme(ThemeData.dark())
         },
         )
        ],
      ),
  ),
  barrierColor: Colors.yellowAccent,
  backgroundColor: Colors.blue,
 // isDismissible: false,
 shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  side: const BorderSide(
    color: Colors.black,
    style: BorderStyle.solid,
    width: 2
  )
 ),
 //enableDrag: false,
       );
    },
     child: const Text('Bottom sheet'));
  }
}
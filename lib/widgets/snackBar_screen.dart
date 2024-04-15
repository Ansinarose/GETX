import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class SnackBar_Screen extends StatelessWidget {
  const SnackBar_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar(
         "snackbar title ", "This will be sanckbar message",
         snackPosition: SnackPosition.BOTTOM,
         colorText: Colors.blue,
         backgroundColor: Colors.black,
         borderRadius: 30,
        // maxWidth: 100,
        animationDuration: const Duration(milliseconds: 3000),
        backgroundGradient:  const LinearGradient(colors: [Colors.red,Colors.black]),
        borderColor: Colors.black,
        borderWidth: 3,
        boxShadows: [
          const BoxShadow(
            color: Colors.grey,
            offset: Offset(30, 50),
            spreadRadius: 20,
            blurRadius: 5,
            
          )
        ],
        isDismissible: true,
        icon: const Icon(Icons.send,
        color: Colors.white,),
        shouldIconPulse: false,
      leftBarIndicatorColor: Colors.black,
      mainButton: TextButton(onPressed: (){}, child: const Text("Retry")),
      onTap: (val){
        print('snackbar clicked');
      },
      overlayBlur: 5,
      //overlayColor: Colors.amber,
      showProgressIndicator: true,
      progressIndicatorBackgroundColor: Colors.red,
      progressIndicatorValueColor: const AlwaysStoppedAnimation(Colors.white),
      reverseAnimationCurve: Curves.bounceInOut,
      snackbarStatus: (val){
     print(val);
      },
      // userInputForm: const Form(child: Row(
      //   children: [Expanded(child: TextField())],
      // ))
         );
    
      },
      
       child: const Text('Show snackbar'), 
    );
  }
}
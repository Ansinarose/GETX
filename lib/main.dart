import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/screens/homescreen.dart';
import 'package:getx_sample/widgets/alertDialog_screen.dart';
import 'package:getx_sample/widgets/snackBar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
      appBarTheme: const AppBarTheme(color: Colors.blue),
        useMaterial3: true,
        
      ),
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
            title: const Text('State managemnet using  Getx',)),
            body: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SnackBar_Screen(),
                  DialogScreen(),

                ],
              ),
            ),
      ),
      
      );
      
    
  }
}


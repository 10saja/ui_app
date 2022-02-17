import 'package:flutter/material.dart';
import 'package:ui_app/screens/launch_screen.dart';
import 'package:ui_app/screens/login_screen.dart';
import 'package:ui_app/screens/out_bordaing_screen.dart';
void main ()=> runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen' ,
      routes:{
        '/launch_screen':(context)=> LaunchScreen(),
        '/out_bordaing_screen':(context)=> OutBordaingScreen(),
        '/login_screen':(context)=> LoginScreen(),

      },
    );
  }
}

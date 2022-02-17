import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),()
    {Navigator.pushReplacementNamed(context,'/out_bordaing_screen');}
    );

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body:Center(
       child: Text('UI Flutter',style: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 25

       ),),
     )



    );
  }
}

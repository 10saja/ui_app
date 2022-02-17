import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Login',style: TextStyle(color: Colors.black),

        ),
        centerTitle: true,
      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: const [
           Text('Welcome back...',
           style: TextStyle(
             fontSize: 24,
             color: Colors.black,
             fontWeight: FontWeight.bold
           ),),
           Text('Enter email && password',
             style: TextStyle(
                 fontSize: 19,
                 color: Colors.black54,
                 fontWeight: FontWeight.normal
             ),),
           TextField(
             keyboardType: TextInputType.emailAddress,
             enabled: true,
             obscureText: true,
             obscuringCharacter: '*'
                 '',
             /*cursorColor: Colors.red,
             cursorHeight: 5,
             cursorRadius: Radius.circular(2)*/

           )
         ],
       ),
     ),
    );
  }
}

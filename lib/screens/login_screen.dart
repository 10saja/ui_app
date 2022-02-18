import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
       padding: const EdgeInsetsDirectional.only(start: 20,end:20),
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
             //obscureText: true,
             obscuringCharacter: '*',
             textDirection: TextDirection.ltr,
             decoration: InputDecoration(
               //labelText: 'Email',
               floatingLabelBehavior: FloatingLabelBehavior.auto,
               helperText: 'example@gmail.com',
               helperStyle: TextStyle(fontSize: 15),
               prefixIcon:Icon(Icons.email) ,
               //prefixText: 'email',
               //suffixIcon: Icon(Icons.email),
              // suffixText: 'com',
               hintText: 'Email',
               hintMaxLines: 1,
               hintStyle: TextStyle(fontSize: 20),
               filled: true,
               fillColor: Color(0xffD2CECEFF),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                ),
                borderRadius: BorderRadius.all(Radius.circular(8))
              )
              // enabledBorder: InputBorder.none,
               /*enabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.red
                 )
               )*/
                
             ),
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

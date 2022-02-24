import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TapGestureRecognizer _tapGestureRecognizer ;
  String ? _emailErrorText;
  String ? _passwordErrorText;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController =TextEditingController();
    _passwordController = TextEditingController();
   _tapGestureRecognizer = TapGestureRecognizer();
   _tapGestureRecognizer.onTap = _navigateToRegister;
  }
  void _navigateToRegister()=> Navigator.pushNamed(context, '/register_screen');
  @override
  void dispose() {
    // TODO: implement dispose
    _passwordController.dispose();
    _emailController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }
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
         children:  [
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
           SizedBox(height: 15,)
           ,TextField(
             controller:_emailController ,
            keyboardType: TextInputType.emailAddress,
             enabled: true,
             //obscureText: true,
             obscuringCharacter: '*',
             textDirection: TextDirection.ltr,
             minLines: 1,
             maxLines: 2,
             maxLength: 35,
             style: TextStyle(
               fontSize: 20
             ),
             decoration: InputDecoration(
               focusedErrorBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.red
                 ),
                 borderRadius: BorderRadius.circular(8)
               ),
             errorText:  _emailErrorText,
               errorBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.red
                 ),
                 borderRadius: BorderRadius.circular(8)
               ),
               counterText: '',
               //labelText: 'Email',
               floatingLabelBehavior: FloatingLabelBehavior.auto,
               //helperText: 'example@gmail.com',
               helperStyle: TextStyle(fontSize: 15),
              prefixIcon:Icon(Icons.email) ,
               //prefixText: 'email',
               //suffixIcon: Icon(Icons.email),
              // suffixText: 'com',
               hintText: 'Email',

               
               hintMaxLines: 1,
               hintStyle: TextStyle(fontSize: 20),
               filled: true,
               fillColor: Color(0xffCDCBCBFF),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                ),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                     color: Colors.blue
                 )
             ),

             /* enabledBorder: InputBorder.none,
               enabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.red
                 )
               )*/
                
             ),
             /*cursorColor: Colors.red,
             cursorHeight: 5,
             cursorRadius: Radius.circular(2)*/

           ),
           SizedBox(height: 15,),
           TextField(
             controller: _passwordController,
             enabled: true,
             minLines: 1,
             maxLines: 1,
             maxLength: 9,
             keyboardType: TextInputType.numberWithOptions(decimal: false,signed: true),
             obscureText: true,
             decoration: InputDecoration(
               errorText: _passwordErrorText,
               errorBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                     color: Colors.red
                 ),),
               counterText: '',
               hintText: 'Password',
               fillColor: Color(0xffCDCBCBFF),
               filled: true,
               prefixIcon: Icon(Icons.lock),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue
              ),),
              enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                ),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
               focusedErrorBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8),
                 borderSide: BorderSide(
                   color: Colors.red
                 )
               )
               
             ),
           ),
           SizedBox(height: 15,),
           Center(child: ElevatedButton(style:ElevatedButton.styleFrom(
             minimumSize:Size(double.infinity, 50),
             shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(25)))
           ,onPressed: (){
                 _performLogin();
               },
            child: Text('LOGIN'))),
           Center(
             child: RichText(text: TextSpan(
             text: 'Don\'t have an account  ',
               style: TextStyle(
                 color: Colors.black45,
                 fontSize: 18
               ),
                 children: [
                   TextSpan(
                     text: 'Creat Now !',
                     style: TextStyle(
                       color: Colors.blue.shade800,
                       fontWeight: FontWeight.bold
                     ),
                     recognizer: _tapGestureRecognizer
                   )
                 ]

               ),
             ),

           ),
            ]
       ) ),
    );
  }
  void _performLogin(){
    if(_checkData())
      _login();

  }
  bool _checkData(){

    if (_passwordController.text.isNotEmpty && _emailController.text.isNotEmpty ){
      controlErrorText();
      return true ;
      
    }
      else{
        controlErrorText();

        return false ;}

   /* ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Enter required data !'),backgroundColor: Colors.red,
     behavior: SnackBarBehavior.floating,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ));*/

  }

  void controlErrorText() {
     setState(() {
      _emailErrorText = _emailController.text.isEmpty ? 'enter email': null;
      _passwordErrorText = _passwordController.text.isEmpty? 'enter password' : null;
    });
  }
  void _login(){
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('LOGEED IS SUCSSESFUL')
       ,behavior: SnackBarBehavior.floating,
       backgroundColor: Colors.green,
       duration: Duration(seconds: 2) ,
     ),
     )
     .closed.then((value) => Navigator.pushReplacementNamed(context, '/home_screen'));
  }








}

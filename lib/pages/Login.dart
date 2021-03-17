import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_life/pages/Home.dart';
import 'package:image_life/pages/Register.dart';
import 'package:image_life/widgets/CustomButton.dart';
import 'package:image_life/widgets/InputFormField.dart';

class Login extends StatefulWidget {
  static String id = "login_screen";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  String emailErrorText = "";
  String passwordErrorText = "";
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 30.0, left: 30.0, top: 300.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  InputFormField(
                      hintText: "Email address ...",
                      obscureText: obscureText,
                      icon: IconButton(
                          icon: Icon(Icons.alternate_email),
                          onPressed: (){}),
                    controller: emailController,
                    errorText: emailErrorText,
                    inputAction: TextInputAction.next,
                    inputType: TextInputType.emailAddress,
                  ),
                InputFormField(
                    hintText: "Password ...",
                    obscureText: obscureText,
                    icon: IconButton(icon: Icon(Icons.lock), onPressed: (){
                      if(!obscureText){
                        setState(() {
                          obscureText = true;
                        });
                      }else{
                        setState(() {
                          obscureText = false;
                        });
                      }
                    }),
                  controller: passwordController,
                  errorText: passwordErrorText,
                  inputAction: TextInputAction.done,
                  inputType: TextInputType.text,
                ),
                CustomButton(
                  buttonText: "Sign In",
                  onClicked: (){
                    Navigator.pushNamed(context, Home.id);
                  },),
               SizedBox(
                 height: 15.0,
               ),
               Center(
                 child: RichText(text: TextSpan(
                   text: "You have no account, ",
                   style: TextStyle(fontSize: 15,color: Colors.black,),
                   children: [
                     TextSpan(text: " Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),
                     recognizer: TapGestureRecognizer() ..onTap =()=> Navigator.pushNamed(context, Register.id)),
                   ]
                 )),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

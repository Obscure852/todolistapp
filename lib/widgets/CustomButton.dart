import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final textButtonColor;
  final VoidCallback onClicked;

  CustomButton({@required this.buttonText, this.buttonColor = Colors.green, this.textButtonColor= Colors.white, @required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60.0),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          child: Text("$buttonText", style: TextStyle(color: textButtonColor, fontWeight: FontWeight.bold),),
          color: buttonColor,
          onPressed: onClicked,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {

  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final IconButton icon;
  final String errorText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obscureText;
  final VoidCallback onCompleteEditing;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: icon,
        errorText: errorText,
      ),
      textInputAction: inputAction,
      keyboardType: inputType,
      obscureText: obscureText,
      onEditingComplete: onCompleteEditing,
    );
  }

  InputFormField({@required this.hintText, this.labelText, this.controller, this.icon,
      this.errorText, this.inputType, this.inputAction, @required this.obscureText, this.onCompleteEditing});
}


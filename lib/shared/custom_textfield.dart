import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFieldd extends StatelessWidget {
  late TextInputType textInputType;
  late bool isPassword;
  late String hinttext;

  MyTextFieldd({
    Key? key,
    required this.textInputType,
    required this.isPassword,
    required this.hinttext,
    required TextInputType keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hinttext,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}

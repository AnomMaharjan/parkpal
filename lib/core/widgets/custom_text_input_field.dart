import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color? color;

  const TextInputField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.color});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        hintText: hintText,
        hintStyle: TextStyle(color: color ?? Colors.white),

        border: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black),
            borderRadius: BorderRadius.circular(24)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.white),
            borderRadius: BorderRadius.circular(24)),
        focusColor: Colors.white,

        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.white),
            borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}

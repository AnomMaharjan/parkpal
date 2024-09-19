import 'package:flutter/material.dart';

extension SizedBoxExtension on SizedBox {
  static SizedBox withHeight(double height) {
    return SizedBox(
      height: height,
    );
  }
}

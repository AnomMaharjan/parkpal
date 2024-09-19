import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/color_manager.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final bool showBoxShadow;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
        this.showBoxShadow = false,
      this.height = 48,
      this.width = 48});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff797A79),
          borderRadius: BorderRadius.circular(48),
          boxShadow: const [
            BoxShadow(
                color: Color(0xff164995), spreadRadius: 2, offset: Offset(4, 4))
          ]),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.buttonColor,
        height: height.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
        minWidth: width.w,
        child: text,
      ),
    );
  }
}

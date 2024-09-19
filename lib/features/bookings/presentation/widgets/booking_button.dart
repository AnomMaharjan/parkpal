import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/utils/text_extension.dart';

class BookingButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double width;
  const BookingButton(
      {super.key, this.onPressed, required this.text, this.width = 60});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(48),
          boxShadow: [
            BoxShadow(
                color: AppColors.shadowColor,
                spreadRadius: 2,
                offset: const Offset(4, 4))
          ]),
      height: 40.h,
      child: MaterialButton(
        onPressed: onPressed,
        height: 40.h,
        minWidth: width,
        child: Text(text).mediumText(color: Colors.black),
      ),
    );
  }
}

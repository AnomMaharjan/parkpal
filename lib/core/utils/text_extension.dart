import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextExtension on Text {
  Text smallText({Color? color, FontWeight? fontWeight = FontWeight.normal}) {
    return Text(
      data!,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: 12.sp,
          fontFamily: "Space Grotesk",
          fontWeight: fontWeight),
    );
  }

  Text mediumText({Color? color, FontWeight? fontWeight = FontWeight.normal}) {
    return Text(
      data!,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: 14.sp,
          fontFamily: "Space Grotesk",
          fontWeight: fontWeight),
    );
  }

  Text largeText({Color? color, FontWeight? fontWeight = FontWeight.normal}) {
    return Text(
      data!,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: 16.sp,
          fontFamily: "Space Grotesk",
          fontWeight: fontWeight),
    );
  }
}

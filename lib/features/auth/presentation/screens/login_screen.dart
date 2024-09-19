import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_button.dart';
import 'package:parkpal/core/widgets/custom_text_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.mainBGColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * 0.2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Parker").mediumText(color: Colors.white),
                    Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              TextInputField(
                controller: emailController,
                hintText: "Phone Number",
                color: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextInputField(
                controller: passwordController,
                hintText: "Password",
                color: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: const Text("Log in with")
                      .mediumText(color: Colors.white)),
              SizedBox(
                height: size.height * 0.2.h,
              ),
              Center(
                child: CustomButton(
                  text: const Text("Log in"),
                  onPressed: () {},
                  width: size.width * 0.7.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

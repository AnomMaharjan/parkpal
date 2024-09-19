import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_button.dart';
import 'package:parkpal/core/widgets/custom_text_input_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final TextEditingController nameController = TextEditingController();

    final TextEditingController phoneNumberController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

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
                height: size.height * 0.125.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Join Us",
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
                controller: nameController,
                hintText: "Full Name",
                color: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextInputField(
                controller: phoneNumberController,
                hintText: "Mobile Number",
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
              TextInputField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                color: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: const Text("Sign Up with")
                      .mediumText(color: Colors.white)),
              SizedBox(
                height: size.height * 0.2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: CustomButton(
                  text: const Text("Sign up").largeText(),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/utils/padding_extension.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Profile",
        appBarColor: AppColors.primaryRedAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Binisha Maharjan",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.zero,
                  child: Icon(
                    Icons.person,
                    size: 200,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBoxExtension.withHeight(
            16.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.settings_outlined),
                             SizedBox(
                              width: 8.w,
                            ),
                            const Text("Personal Details").mediumText(),
                          ],
                        ),
                        const Icon(Icons.edit_square)
                      ],
                    ),
                    SizedBoxExtension.withHeight(16.h),
                    const PersonalDetailsItem(
                        title: "Name", detail: "Binisha Maharjan"),
                    const PersonalDetailsItem(
                        title: "Vehicle Type",
                        detail: "Two wheeler/ Four wheeler"),
                    const PersonalDetailsItem(
                        title: "Vehicle Color", detail: "Sage Green"),
                    const PersonalDetailsItem(
                        title: "Vehicle Number", detail: "Ba 1 Pa 2456"),
                    SizedBoxExtension.withHeight(16.h),
                    Container(
                      decoration: const BoxDecoration(color: Colors.black),
                      height: 1,
                      width: double.infinity,
                    ),
                    SizedBoxExtension.withHeight(20.h),
                    Row(
                      children: [
                        const Icon(Icons.settings_outlined),
                         SizedBox(
                          width: 8.w,
                        ),
                        const Text("Settings").mediumText(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalDetailsItem extends StatelessWidget {
  final String title, detail;
  const PersonalDetailsItem(
      {super.key, required this.detail, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title).smallText(),
        SizedBoxExtension.withHeight(1.h),
        Text(detail).mediumText(),
        SizedBoxExtension.withHeight(16.h),
      ],
    );
  }
}

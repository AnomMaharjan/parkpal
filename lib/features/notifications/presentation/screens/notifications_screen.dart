import 'package:flutter/material.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
        appBarColor: AppColors.primaryRedAccent,
        showBackButton: true,
      ),
      body: Container(
        child: Expanded(
            child: Column(
          children: [
            const Text("Your booking at Navadurga parking has been confirmed.")
                .largeText()
          ],
        )),
      ),
    );
  }
}

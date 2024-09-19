import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/constants/icons_manager.dart';
import 'package:parkpal/core/utils/padding_extension.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_app_bar.dart';
import 'package:parkpal/features/bookings/presentation/widgets/booking_button.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreenColor,
      appBar: CustomAppBar(
        title: "My Bookings",
        appBarColor: AppColors.primaryGreenColor,
        showNotificationIcon: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            const BookedCard(),
            SizedBoxExtension.withHeight(16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: const Text(
                      "Note: Booking will be cancelled if not reached within 20 minutes.")
                  .largeText(),
            )
          ],
        ),
      ),
    );
  }
}

class BookedCard extends StatelessWidget {
  const BookedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black, width: 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Booked").smallText(fontWeight: FontWeight.w600),
            SizedBoxExtension.withHeight(8),
            const Text("30 August, 2024").mediumText(),
            SizedBoxExtension.withHeight(8),
            const Text("Nava Durga Parking Lot")
                .largeText(fontWeight: FontWeight.w600),
            SizedBoxExtension.withHeight(8),
            const Text("Chhetrapati, Kathmandu")
                .mediumText(fontWeight: FontWeight.w500),
            SizedBoxExtension.withHeight(10),
            Image.asset(
              IconsManager.map,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBoxExtension.withHeight(10),
            const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Show direction",
                  style: TextStyle(decoration: TextDecoration.underline),
                )),
            SizedBoxExtension.withHeight(10),
            const Align(
              alignment: Alignment.centerRight,
              child: BookingButton(
                text: "Cancel Booking",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

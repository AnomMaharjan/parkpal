import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/extensions/padding_extension.dart';

class BookingConfirmationWidget extends StatelessWidget {
  final String parkingLot;
  const BookingConfirmationWidget({super.key, required this.parkingLot});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          // color: AppColors.bookingConfirmationAlertColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Confirm booking for four wheeler?",
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          10.ph,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(parkingLot), const Text("Vehicle no: 5883")],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Four wheeler "), Text("Rs. 75/hr")],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: const Text("Cancel")),
              TextButton(onPressed: () {}, child: const Text("Confirm")),
            ],
          )
        ],
      ),
    );
  }
}

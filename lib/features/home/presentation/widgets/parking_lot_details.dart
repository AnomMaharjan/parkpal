import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/icons_manager.dart';
import 'package:parkpal/core/utils/padding_extension.dart';
import 'package:parkpal/core/utils/static_data.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/features/bookings/presentation/widgets/booking_button.dart';

import '../../../../core/widgets/custom_text_input_field.dart';

class ParkingLotDetails extends StatelessWidget {
  final ParkingData parkingData;
  // final TextEditingController? controller;
  const ParkingLotDetails({
    super.key,
    required this.parkingData,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(parkingData.parkingSpot!).largeText(fontWeight: FontWeight.bold),
          SizedBoxExtension.withHeight(8.h),
          Text("${parkingData.time!} mins away.").mediumText(),
          SizedBoxExtension.withHeight(8.h),
          Text(parkingData.location!).mediumText(),
          SizedBoxExtension.withHeight(8.h),
          Row(
            children: [
              const Icon(Icons.phone),
              Text(parkingData.phoneNumber.toString())
            ],
          ),
          SizedBoxExtension.withHeight(8.h),
          Row(
            children: [
              ParkingRateCard(
                parkingRate: parkingData.fourWheelerRate!,
                isTwoWheeler: false,
              ),
              SizedBox(
                width: 10.w,
              ),
              ParkingRateCard(
                parkingRate: parkingData.twoWheelerRate!,
                isTwoWheeler: true,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: BookingButton(
                  onPressed: () {},
                  text: "Book No.ww",
                  // height: 40.h,
                ),
              ),
            ],
          ),
          SizedBoxExtension.withHeight(8.h),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  parkingData.rating.toString(),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 16,
                )
              ],
            ),
          ),
          SizedBoxExtension.withHeight(8.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset(
                  IconsManager.parking1,
                  height: 100.h,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Image.asset(
                  IconsManager.parking2,
                  height: 100.h,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Image.asset(
                  IconsManager.parking1,
                  height: 100.h,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
          SizedBoxExtension.withHeight(20.h),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                width: 40.w,
                height: 40.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                  child: SizedBox(
                height: 45.h,
                child: TextInputField(
                    controller: controller, hintText: "Add a review."),
              ))
            ],
          ),
          SizedBoxExtension.withHeight(10),
          Row(
            children: [
              const Icon(
                Icons.reviews,
                size: 18,
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text("Reviews").mediumText(fontWeight: FontWeight.w600)
            ],
          ),
          SizedBoxExtension.withHeight(10.h),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2.h,
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...parkingData.reviews!.map(
                  (element) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ParkingReviews(review: element),
                  ),
                ),
                ...parkingData.reviews!.map(
                  (element) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ParkingReviews(review: element),
                  ),
                ),
                ...parkingData.reviews!.map(
                  (element) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ParkingReviews(review: element),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ParkingRateCard extends StatelessWidget {
  final bool isTwoWheeler;
  final bool isSelected;
  final int parkingRate;
  const ParkingRateCard(
      {super.key,
      this.isTwoWheeler = false,
      this.isSelected = false,
      required this.parkingRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(24)),
      height: 48,
      child: Row(
        children: [
          const Icon(
            Icons.car_crash,
            size: 20,
          ),
          const SizedBox(
            width: 4,
          ),
          Text("Rs $parkingRate/hr").mediumText(fontWeight: FontWeight.w500)
        ],
      ),
    );
  }
}

class ParkingReviews extends StatelessWidget {
  final Review review;
  const ParkingReviews({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffD9D9D9)),
            width: 40.w,
            height: 40.h,
          ),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${review.username!}  ",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(review.time!),
                  ],
                ),
                Text(review.review!).mediumText()
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Icon(Icons.menu),
        ),
      ],
    );
  }
}

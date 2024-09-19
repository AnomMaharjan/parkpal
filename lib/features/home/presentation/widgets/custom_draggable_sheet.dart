import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/features/home/presentation/widgets/booking_confirmation_widget.dart';
import 'package:parkpal/features/home/presentation/widgets/parking_lot_details.dart';

import '../../../../core/utils/static_data.dart';

class CustomDraggableSheet extends StatefulWidget {
  const CustomDraggableSheet({super.key});

  @override
  State<CustomDraggableSheet> createState() => _CustomDraggableSheetState();
}

class _CustomDraggableSheetState extends State<CustomDraggableSheet> {
  final DraggableScrollableController sheetController =
      DraggableScrollableController();
  final TextEditingController searchController = TextEditingController();
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 1.0,
      controller: sheetController,
      builder: (BuildContext context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).hintColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 4.h,
                    width: 40.w,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              SliverList.list(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isSearching = !isSearching;
                              sheetController.animateTo(0.5,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeIn);
                            });
                          },
                          child: const Icon(Icons.search)),
                      const SizedBox(
                        width: 6,
                      ),
                      isSearching
                          ? Expanded(
                              child: TextField(
                                controller: searchController,
                                style: const TextStyle(color: Colors.black),
                                cursorColor: Colors.white,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // contentPadding: EdgeInsets.symmetric(
                                  //      horizontal: 8),
                                  focusColor: Colors.black,
                                ),
                              ),
                            )
                          : const Text("Parkings nearby you")
                              .largeText(fontWeight: FontWeight.w500),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Divider(
                    height: 10,
                  ),
                ),
                BookingConfirmationWidget(
                  parkingLot: StaticData.parkingData[0].parkingSpot!,
                )
                // ParkingLotDetails(parkingData: StaticData.parkingData[0])
              ])
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parkpal/core/constants/color_manager.dart';

import 'package:parkpal/features/bookings/presentation/screens/bookings_screen.dart';
import 'package:parkpal/features/profile/presentation/screens/profile_screen.dart';
import 'package:parkpal/features/qr/presentation/screens/qr_screen.dart';
import '../../../../core/constants/icons_manager.dart';
import '../../../../core/constants/string_constants.dart';
import '../../../home/presentation/screens/home_screen.dart';

List<Widget> screens = [
  const BookingsScreen(),
  const QrScreen(),
  const HomeScreen(),
  const ProfileScreen(),
];

List<BottomNavigationBarItem> bottomNavItems = [
  BottomNavigationBarItem(
    icon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.booking,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.booking)
        ],
      ),
    ),
    activeIcon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      decoration: BoxDecoration(
          color: AppColors.primaryGreenColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.booking,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.booking)
        ],
      ),
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    icon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.qr,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.scanQr)
        ],
      ),
    ),
    activeIcon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      decoration: BoxDecoration(
          color: AppColors.primaryYellowColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.qr,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.scanQr)
        ],
      ),
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    icon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.home,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.home)
        ],
      ),
    ),
    activeIcon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      decoration: BoxDecoration(
          color: AppColors.primaryBlueColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.home,
            height: 24.h,
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.home)
        ],
      ),
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    icon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.profile,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.profile)
        ],
      ),
    ),
    activeIcon: Container(
      width: 60,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(right: 8, left: 8, top: 12, bottom: 8),
      decoration: BoxDecoration(
          color: AppColors.primaryRedAccent,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        children: [
          SvgPicture.asset(
            IconsManager.profile,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(StringConstants.profile)
        ],
      ),
    ),
    label: "",
  ),
];

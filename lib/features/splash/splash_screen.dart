import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/extensions/padding_extension.dart';
import 'package:parkpal/features/dashboard/presentation/screens/dashboard_screen.dart';

import '../home/presentation/screens/home_screen.dart';
import 'widgets/loading_animation.dart';
import 'widgets/rotating_icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Future.delayed(const Duration(seconds: 0), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DashboardScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const RotatingIcon(),
            20.ph,
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Loading",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                10.pw,
                const DotLoadingIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

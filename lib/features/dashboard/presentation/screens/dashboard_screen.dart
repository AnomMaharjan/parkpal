import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/widgets/bottom_nav_bar.dart';
import 'package:parkpal/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:parkpal/features/dashboard/presentation/widgets/bottom_navbar_widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, int>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColors.mainBGColor,
            body: screens[state],
            bottomNavigationBar: BottomNavBar(
              bottomNavBarItems: bottomNavItems,
            ));
      },
    );
  }
}

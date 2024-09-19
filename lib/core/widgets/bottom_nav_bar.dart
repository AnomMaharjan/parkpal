import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parkpal/features/dashboard/presentation/cubit/dashboard_cubit.dart';

class BottomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomNavBarItems;

  const BottomNavBar({super.key, required this.bottomNavBarItems});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, int>(
      builder: (context, state) {
        final cubit = context.read<DashboardCubit>();
        return Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.zero,
            child: BottomNavigationBar(
              items: bottomNavBarItems,
              backgroundColor: Colors.white,
              selectedFontSize: 0.0, // Set to 0 to remove label font size
              unselectedFontSize: 0.0, // Set to 0 to remove label font size
              selectedLabelStyle: const TextStyle(
                  fontSize: 0.0,
                  height: 0.0), // Remove vertical padding around the label
              unselectedLabelStyle: const TextStyle(fontSize: 0.0, height: 0.0),
              unselectedItemColor: Colors.black,
              unselectedIconTheme: const IconThemeData(color: Colors.black),
              selectedItemColor: Colors.black,
              selectedIconTheme: const IconThemeData(color: Colors.black),
              onTap: (value) {
                cubit.switchIndex(value);
              },
              type: BottomNavigationBarType.fixed,
              currentIndex: state,
            ),
          ),
        );
      },
    );
  }
}

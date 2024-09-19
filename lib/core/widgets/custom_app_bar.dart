import 'package:flutter/material.dart';
import 'package:parkpal/features/notifications/presentation/screens/notifications_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showNotificationIcon;
  final bool? showBackButton;
  final Color? appBarColor;

  const CustomAppBar(
      {super.key,
      required this.title,
      this.appBarColor = const Color(0xff5390EB),
      this.showNotificationIcon = true,
      this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      leading: showBackButton!
          ? const BackButton(
              color: Colors.white,
            )
          : const SizedBox(),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: "Space Grotesk",
            fontWeight: FontWeight.w600),
      ),
      actions: [
        showNotificationIcon
            ? Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const NotificationsScreen(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            : const SizedBox()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

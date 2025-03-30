import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as custom_badges; // Use an alias to avoid conflicts
import 'package:wyvern_security_app/routes.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onDestinationSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (index) {
        onDestinationSelected(index);
        if (index == 0) {
          Navigator.pushNamed(context, Routes.home);
        } else if (index == 1) {
          Navigator.pushNamed(context, Routes.about);
        } else if (index == 2) {
          Navigator.pushNamed(context, '/messages');
        }
      },
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: custom_badges.Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: custom_badges.Badge(badgeContent: Text('2'), child: Icon(Icons.messenger_sharp)),
          label: 'Messages',
        ),
      ],
    );
  }
}
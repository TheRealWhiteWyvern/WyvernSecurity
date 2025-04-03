import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as custom_badges; // Use an alias to avoid conflicts
import 'package:wyvern_security_app/routes.dart';
import 'package:wyvern_security_app/core/themes/main_theme.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) { 
    int currentPageIndex = currentIndex;// Initialize currentPageIndex with the passed index
    return NavigationBar(
      backgroundColor: MainTheme.wyvernLightGrey,
      onDestinationSelected: (index) {
        onDestinationSelected(index);
        if (index == 0) {
          Navigator.pushNamed(context, Routes.home);
          currentPageIndex = index; // Update currentPageIndex when navigating
        } else if (index == 1) {
          Navigator.pushNamed(context, Routes.about);
          currentPageIndex = index; // Update currentPageIndex when navigating
        } else if (index == 2) {
          Navigator.pushNamed(context, '/messages');
          currentPageIndex = index; // Update currentPageIndex when navigating
        }
        else if (index == 3) {
          Navigator.pushNamed(context, '/privacy');
          currentPageIndex = index; // Update currentPageIndex when navigating
        }
        else if (index == 4) {
          Navigator.pushNamed(context, '/misc');
          currentPageIndex = index; // Update currentPageIndex when navigating
        }
      },
      indicatorColor: MainTheme.wyvernWhite,
      selectedIndex: currentPageIndex,
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: custom_badges.Badge(child: Icon(Icons.person_2)),
          label: 'About',
        ),
        NavigationDestination(
          icon: custom_badges.Badge(badgeContent: Text('2'), child: Icon(Icons.messenger_sharp)),
          label: 'Messages',
        ),
        NavigationDestination(
          icon: custom_badges.Badge(child: Icon(Icons.privacy_tip_outlined)),
          label: 'Privacy',
        ),
        NavigationDestination(
          icon: custom_badges.Badge(child: Icon(Icons.miscellaneous_services)),
          label: 'Misc',
        ),
      ],
    );
  }
}
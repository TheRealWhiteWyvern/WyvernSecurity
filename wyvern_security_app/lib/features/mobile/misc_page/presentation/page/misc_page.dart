import 'package:flutter/material.dart';
import 'package:wyvern_security_app/features/mobile/navbar/presentation/page/navbar.dart';
import 'package:wyvern_security_app/core/themes/main_theme.dart';

class MobileMiscPage extends StatefulWidget {
  const MobileMiscPage({super.key});

  @override
  MobileMiscPageState createState() => MobileMiscPageState();
}

class MobileMiscPageState extends State<MobileMiscPage> {
  int currentPageIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme.wyvernDarkGrey,
      body: Center(
        child: Text(
          'Misc\nPage',
          style: MainTheme.h1White.copyWith(
            fontSize: 84,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0), // Position of the shadow
                blurRadius: 4.0, // Blur effect
                color: Colors.black, // Shadow color
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}

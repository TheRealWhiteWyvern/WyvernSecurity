import 'package:flutter/material.dart';
import 'package:wyvern_security_app/core/themes/main_theme.dart';
import 'package:wyvern_security_app/routes.dart';

class DesktopLandingPage extends StatelessWidget {
  const DesktopLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme.wyvernDarkGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Text(
                  'Wyvern\nSecurity',
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
              ],
            ),
            Column(
              children: [
                Text(
                  'Your Security, Our Priority',
                  style: MainTheme.h3White,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.pushNamed(context, Routes.home);
                    },
                    child: Text(
                      'LOGIN HERE',
                      style: MainTheme.h2Black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to register page
                    },
                    child: Text(
                      'REGISTER HERE',
                      style: MainTheme.h2Black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wyvern_security_app/core/themes/main_theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
                  style: MainTheme.titleWhite,
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
                Text(
                  'LOGIN HERE',
                  style: MainTheme.h2White,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'REGISTER HERE',
                  style: MainTheme.h2White,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

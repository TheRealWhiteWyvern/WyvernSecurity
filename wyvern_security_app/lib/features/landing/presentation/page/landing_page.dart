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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Wyvern Security',
              style: MainTheme.h1White,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

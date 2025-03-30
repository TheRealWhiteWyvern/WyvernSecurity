import 'package:flutter/material.dart';
import 'package:wyvern_security_app/routes.dart';
import 'package:wyvern_security_app/core/themes/main_theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme.wyvernDarkGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Error: Page not found!',
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
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.landing);
              },
              child: const Text('Go to Landing Page'),
            ),
          ],
        ),
      ),
    );
  }
}
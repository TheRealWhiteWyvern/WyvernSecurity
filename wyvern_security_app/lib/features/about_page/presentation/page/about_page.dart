import 'package:flutter/material.dart';
import 'package:wyvern_security_app/features/navbar/presentation/page/navbar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wyvern Security About Page'),
      ),
      body: Center(
        child: Text('Page $currentPageIndex'),
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
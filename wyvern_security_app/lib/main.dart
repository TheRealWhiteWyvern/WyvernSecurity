import 'package:flutter/material.dart';
import 'package:wyvern_security_app/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wyvern Security',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.landing,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

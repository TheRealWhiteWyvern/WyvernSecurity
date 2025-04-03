import 'package:flutter/material.dart';
import 'package:wyvern_security_app/features/home_page/presentation/page/home_page.dart';
import 'package:wyvern_security_app/features/landing_page/presentation/page/landing_page.dart';
import 'package:wyvern_security_app/features/about_page/presentation/page/about_page.dart';
import 'package:wyvern_security_app/features/error_page/presentation/page/error_page.dart';
import 'package:wyvern_security_app/features/message_page/presentation/page/message_page.dart';
import 'package:wyvern_security_app/features/privacy_page/presentation/page/privacy_page.dart';


class NoTransitionPageRoute extends PageRoute {
  final WidgetBuilder builder;
  
  NoTransitionPageRoute({required this.builder}) 
    : super(fullscreenDialog: false);

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration.zero;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }
}

class Routes {
  //main routes
  static const String landing = '/';
  static const String home = '/home';
  static const String about = '/about';
  static const String error = '/error';
  static const String message = '/messages';
  static const String privacy = '/privacy';
  static const String misc = '/misc';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landing:
        return NoTransitionPageRoute(builder: (_) => LandingPage());
      case home:
        return NoTransitionPageRoute(builder: (_) => HomePage());
      case about:
        return NoTransitionPageRoute(builder: (_) => AboutPage());
      case message  :
        return NoTransitionPageRoute(builder: (_) => MessagePage());
      case privacy:
        return NoTransitionPageRoute(builder: (_) => PrivacyPage());
      default:
        return NoTransitionPageRoute(builder: (_) => ErrorPage());
    }
  }
}
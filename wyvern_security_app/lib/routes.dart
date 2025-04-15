import 'package:flutter/material.dart';
import 'package:wyvern_security_app/features/mobile/home_page/presentation/page/home_page.dart';
import 'package:wyvern_security_app/features/mobile/landing_page/presentation/page/landing_page.dart';
import 'package:wyvern_security_app/features/mobile/about_page/presentation/page/about_page.dart';
import 'package:wyvern_security_app/features/mobile/error_page/presentation/page/error_page.dart';
import 'package:wyvern_security_app/features/mobile/message_page/presentation/page/message_page.dart';
import 'package:wyvern_security_app/features/mobile/privacy_page/presentation/page/privacy_page.dart';
import 'package:wyvern_security_app/features/mobile/misc_page/presentation/page/misc_page.dart';


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
        return NoTransitionPageRoute(builder: (_) => MobileLandingPage());
      case home:
        return NoTransitionPageRoute(builder: (_) => MobileHomePage());
      case about:
        return NoTransitionPageRoute(builder: (_) => MobileAboutPage());
      case message  :
        return NoTransitionPageRoute(builder: (_) => MobileMessagePage());
      case privacy:
        return NoTransitionPageRoute(builder: (_) => MobilePrivacyPage());
      case misc:
        return NoTransitionPageRoute(builder: (_) => MobileMiscPage());
      default:
        return NoTransitionPageRoute(builder: (_) => MobileErrorPage());
    }
  }
}
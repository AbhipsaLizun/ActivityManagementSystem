import 'package:flutter/material.dart';

class SplashScreenBackground extends StatelessWidget {
  final Widget child;
  const SplashScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        //color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/splash_screen.png"),
          //opacity: 400.0,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

class LoginScreenBackground extends StatelessWidget {
    final Widget child;
  const LoginScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        //color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/login.png"),
          //opacity: 400.0,
          fit: BoxFit.fitHeight,
        ),
      ),
      child: child,
    );
  }
}

class WelcomeBg extends StatelessWidget {
    final Widget child;
  const WelcomeBg({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        //color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/welcome_page.png"),
          //opacity: 400.0,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
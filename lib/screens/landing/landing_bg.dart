import 'package:flutter/material.dart';

class LandingBackground extends StatelessWidget {
  final Widget child;
  const LandingBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
          decoration:  BoxDecoration(
            color: Colors.black.withOpacity(0.4),
              image: const DecorationImage(
              image: AssetImage("assets/images/landing_bg.png"),
              opacity: 350.0,
              fit: BoxFit.cover,
            ),
          ),
          child: child,
    );
  }
}
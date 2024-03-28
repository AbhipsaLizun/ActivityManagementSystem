import 'package:activity_management_system/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // late final AnimationController _controller = AnimationController(
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 2), () {

         Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (c, a1, a2) => const LandingScreen(),
            transitionsBuilder: (c, anim, a2, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: const Duration(milliseconds: 1000),
          ),
        );
      });
    });

    return FutureBuilder<Widget>(
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SplashScreenBackground(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "assets/images/seal_of_odisha.png",
                        height: 160,
                        width: 160,
                      ),
                    ),
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Co-operation \n Department",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              letterSpacing: 1),
                    ),
                    //),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: SizedBox(
              width: 17,
              height: 17,
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
      },
    );
  }
}



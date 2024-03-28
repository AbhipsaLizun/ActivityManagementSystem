import 'package:flutter/material.dart';
import 'content.dart';
import 'landing_bg.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingBackground(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration:   const BoxDecoration(
                      borderRadius: BorderRadius.only( topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment(-1.0, -4.0),
                            end: Alignment.bottomRight,
                            colors: [
                          Colors.blue,
                          // Colors.teal,
                          Colors.cyan,
                        ],
                            stops: [
                          0.4,
                          0.9,
                        ])),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/seal_of_odisha.png",
                        height: 60,
                        width: 60,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Department of Co-operation \n Govt of Odisha ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/naveen.png",
                        height: 70,
                        width: 70,
                      ),
                    ],
                  )
                ],
              ),
              const Content()
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 50),
      width: MediaQuery.of(context).size.width * 0.88,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Activity Monitoring System",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.green[700],
                ),
          ),
          const SizedBox(
            height: 40,
          ),
          //.........Icons for audit and Inspect......//
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color.fromARGB(255, 9, 135, 16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Image.asset(
                            "assets/images/audit.png",
                            height: 70,
                            width: 70,
                                                ),
                          ),
                        ),
                        ),
                    const SizedBox(
                      height: 20,
                    ),

                    //................Audit btn.....................//
                    Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.blueAccent,
                            Colors.blue,
                            Color.fromARGB(255, 42, 220, 244),
                          ],
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              disabledForegroundColor: Colors.transparent.withOpacity(0.38), disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                              shadowColor: Colors.transparent,
                              //make color or elevated button transparent
                            ),
                            onPressed: () {},
                            child: const Text("Audit",
                            style: TextStyle(color: Colors.white),)))
                  ],
                ),

                //................Inspect icon.....................//
                Column(
                  children: [
                    
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: const Color.fromARGB(255, 9, 135, 16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                          "assets/images/inspection.png",
                          height: 50,
                          width: 50,
                                              ),
                        ),),
                         const SizedBox(
                      height: 20,
                    ),
                    //................Inspect btn.....................//
                    Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.blueAccent,
                            Colors.blue,
                            Color.fromARGB(255, 42, 220, 244),
                          ],
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              disabledForegroundColor: Colors.transparent.withOpacity(0.38), disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                              shadowColor: Colors.transparent,
                              //make color or elevated button transparent
                            ),
                            onPressed: () {
                            
                              Get.toNamed('/WelcomePage');
                            },
                            child: const Text("Inspection",
                            style: TextStyle(color: Colors.white),)))

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

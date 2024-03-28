import 'package:activity_management_system/constants/screensize.dart';
import 'package:activity_management_system/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/buttons.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeBg(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, top: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  child: Image.asset(
                    "assets/images/seal_of_odisha.png",
                    height: 120,
                    width: 120,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Co-operation \nDepartment",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Manage your expenses",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Text(
                  "Seamlessly and intuitively",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                 SizedBox(
                  //height: MediaQuery.of(context).size.height * 0.08,
                  height: ScreenSize.height(context) * 0.08,
                ),
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Buttons(
                      onTapBtn: () {
                        //Get.to(() => const LoginPage());
                        Get.toNamed('/LoginPage');
                      },
                      bgColor: Colors.white,
                      text: 'Login',
                      textColor: const Color.fromARGB(221, 25, 97, 222),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Get.to(() => const LoginPage());
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.white,
                    //     shape: const RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(10))),
                    //   ),
                    //   child: const Text(
                    //     "Login",
                    //     style: TextStyle(color: Color.fromARGB(221, 25, 97, 222)),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ),
        ),
      )),
    ));
  }
}

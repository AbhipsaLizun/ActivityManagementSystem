import 'dart:developer';
import 'package:activity_management_system/constants/screensize.dart';
import 'package:activity_management_system/screens/dashboard/dashboard_page.dart';
import 'package:activity_management_system/screens/login/controller/login_controller.dart';
import 'package:activity_management_system/widgets/buttons.dart';
import 'package:activity_management_system/widgets/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    LoginController controller = Get.put(LoginController());

    return Obx(
      ()=> Scaffold(
        body: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                //fit: StackFit.passthrough,
                children: [
                  SizedBox(
                    height: 220,
                    child: Image.asset(
                      "assets/images/login.png",
                      // height: 120,
                      // width: 120,
                      
                      fit: BoxFit.cover,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 50, left: 16),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_sharp,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 135,
                    left: 20,
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 1),
                    ),
                  ),
                  Positioned(
                    //bottom: 0,
                    top: 210,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Text(
                                "Welcome Back",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Hello there , sign in to continue!",
                              style: TextStyle(
                                  color: Colors.blueGrey.withOpacity(0.9),
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            const Text(
                              "Username or email",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            InputTextField(
                              inputType: TextInputType.text,
                              textEditingController: controller.usernameController,
                              hint: "Enter your username or email",
                              secureText: false,
                              onTextChanged: (value) {
                                
                              },
                              onValidator: (username) {
                                if (username == null ||
                                    username.isEmpty ||
                                    username == " ") {
                                  return "Username is empty";
                                }
                                return null;
                              },
                                                 
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 86, 86),
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            InputTextField(
                              inputType: TextInputType.number,
                              textEditingController: controller.passwordController,
                              hint: "Enter your Password",
                              
                              secureText: controller.passwordVisible.value,
                              onTextChanged: (value) {},
                              onValidator: (password) {
                                if (password!.isEmpty || password == " ") {
                                  return "Enter your Password";
                                }
                                return null;
                              },
                              iconSuffix: IconButton(
                                icon: Icon(controller.passwordVisible.value
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  controller.iconButtonClicked();
                                
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                  fontSize: 17),
                            ),
                             SizedBox(
                              height: ScreenSize.height(context) * 0.06,
                            ),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              child: Buttons(
                                onTapBtn: () async{
                                  log("LOG ${controller.usernameController.text}");
                                  if (controller.formKey.currentState!.validate()) {
    
                                    final prefs = await SharedPreferences.getInstance();
                                     prefs.setString("LoggerName",controller.usernameController.text);
                                     
    
                                      Get.off(() => const DashboardScreen());
                                     
    
    
                                  } else {
                                    return " over......";
                                  }
                                },
                                bgColor: Colors.blue,
                                text: 'Sign in',
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

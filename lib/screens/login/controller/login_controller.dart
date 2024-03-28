import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool passwordVisible = true.obs;

  iconButtonClicked(){
     passwordVisible.value = !passwordVisible.value;
  }


}
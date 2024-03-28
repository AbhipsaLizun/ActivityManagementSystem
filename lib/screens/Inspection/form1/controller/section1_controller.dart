import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Section1Controller extends GetxController {
  final nameController = TextEditingController();
  final regController = TextEditingController();
  final affiliateController = TextEditingController();
  final operationController = TextEditingController();
  final executeController = TextEditingController();
  final officerController = TextEditingController();
  final authorityInspController = TextEditingController();
  final inspectionController = TextEditingController();
  final introductionController = TextEditingController();
  final funDateController = TextEditingController();
  final insDateController = TextEditingController();
  final aimController = TextEditingController();
  final textOneController = TextEditingController();
  final textTwoController = TextEditingController();
  final textThreeController = TextEditingController();

  DateTime? picked;
  RxString? formattedDate;

  Future selectDate(String type) async {
    final selectedDate = await showDatePicker(
        context: Get.context!,
        initialDate: picked ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));

    if (type == "function") {
      picked = selectedDate;
      formattedDate = " ${picked!.day}-${picked!.month}-${picked!.year} ".obs;
      funDateController.text = formattedDate.toString();
      
    } else {
      picked = selectedDate;
      formattedDate = " ${picked!.day}-${picked!.month}-${picked!.year} ".obs;
      insDateController.text = formattedDate.toString();
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    regController.dispose();
    affiliateController.dispose();
    operationController.dispose();
    executeController.dispose();
    officerController.dispose();
    authorityInspController.dispose();
    inspectionController.dispose();
    introductionController.dispose();
    funDateController.dispose();
    insDateController.dispose();
    aimController.dispose();
    textOneController.dispose();
    textTwoController.dispose();
    textThreeController.dispose();
    super.onClose();  
  }
}

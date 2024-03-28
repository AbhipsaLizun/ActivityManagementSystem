import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Section4Controller extends GetxController{

  final electionDateController = TextEditingController();
  final memberController = TextEditingController();
  final dateController = TextEditingController();
  final decisionController = TextEditingController();

  final staffFieldController1 = TextEditingController();
  final staffFieldController2 = TextEditingController();
  final staffFieldController3 = TextEditingController();
  final staffFieldController4 = TextEditingController();
  final staffFieldController5 = TextEditingController();
  final staffFieldController6 = TextEditingController();
  final staffFieldController7 = TextEditingController();
  final staffFieldController8 = TextEditingController();

  final nameController1 = TextEditingController();
  final educationController1 = TextEditingController();
  final trainedController1 = TextEditingController();
  final salaryController1 = TextEditingController();

  final nameController2 = TextEditingController();
  final educationController2 = TextEditingController();
  final trainedController2 = TextEditingController();
  final salaryController2 = TextEditingController();

  final nameController3 = TextEditingController();
  final educationController3 = TextEditingController();
  final trainedController3 = TextEditingController();
  final salaryController3 = TextEditingController();

  final nameController4 = TextEditingController();
  final educationController4 = TextEditingController();
  final trainedController4 = TextEditingController();
  final salaryController4 = TextEditingController();

  final nameController5 = TextEditingController();
  final educationController5 = TextEditingController();
  final trainedController5 = TextEditingController();
  final salaryController5 = TextEditingController();

    final nameController6 = TextEditingController();
  final educationController6 = TextEditingController();
  final trainedController6 = TextEditingController();
  final salaryController6 = TextEditingController();

    final nameController7 = TextEditingController();
  final educationController7 = TextEditingController();
  final trainedController7 = TextEditingController();
  final salaryController7= TextEditingController();

    final nameController8 = TextEditingController();
  final educationController8 = TextEditingController();
  final trainedController8 = TextEditingController();
  final salaryController8 = TextEditingController();

    final nameController9 = TextEditingController();
  final educationController9 = TextEditingController();
  final trainedController9 = TextEditingController();
  final salaryController9 = TextEditingController();

    final nameController10 = TextEditingController();
  final educationController10 = TextEditingController();
  final trainedController10 = TextEditingController();
  final salaryController10 = TextEditingController();

  DateTime? picked;
  RxString? formattedDate;

  final scrollController = ScrollController();

    Future selectDate() async {
    final selectedDate = await showDatePicker(
        context: Get.context!,
        initialDate: picked ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));

      picked = selectedDate;
      formattedDate = " ${picked!.day}-${picked!.month}-${picked!.year} ".obs;
      dateController.text = formattedDate.toString();
      // dateController.text = selectedDate.toString();
      //log("message ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}");
  
  }


}
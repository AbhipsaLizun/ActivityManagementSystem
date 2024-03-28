import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/document_list.dart';

class TaskContoller extends GetxController {
  final dateController = TextEditingController();
  final docNameController = TextEditingController();
  final remarkController = TextEditingController();
  final uploadDocController = TextEditingController();

  RxDouble spaceHeight = 10.0.obs;
  RxDouble containerHeight = 45.0.obs;

  RxString? docFileName;
  RxString? fileName;


  RxList documentList = [].obs;
  RxList<File>? file;
 

  @override
  void onInit() {
    documentList
        .add(DocumentList(docName: '', uploadDocName: '', filePath: null));
    super.onInit();
  }

  // CategoryType List
  RxList categoryList = [
    "Arbitration of Dispute cases",
    "Stock verification of Co-operative Societies",
    "Inspection of Co-operative Institutions",
    "Conducting different enquiries",
    "Execution of E.P. Cases",
    "Conducting election to the Management of Co-op. Societies",
  ].obs;
  RxString dropdownvalue = 'Choose'.obs;

  DateTime? picked;
  RxString? formattedDate;

// select date
  Future selectDate() async {
    final selectedDate = await showDatePicker(
        context: Get.context!,
        initialDate: picked ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));

    picked = selectedDate;
    formattedDate = " ${picked!.day}-${picked!.month}-${picked!.year} ".obs;
    dateController.text = formattedDate.toString();
  }

 // File picker
  Future filepicker(int index) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      String fileName = result.files.first.name;

      documentList[index].uploadDocName = fileName.toString();
      documentList[index].filePath = file;

      log("NAME "+documentList[index].uploadDocName);
      documentList.refresh()
;
      
    }else {

    }
  }

  @override
  void onClose() {
    dateController.dispose();
    docNameController.dispose();
    remarkController.dispose();
    super.onClose();
  }
}

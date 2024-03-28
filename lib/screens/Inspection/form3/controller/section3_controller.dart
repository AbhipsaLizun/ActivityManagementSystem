import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Section3Controller extends GetxController{

  final scrollController = ScrollController();
  final memHeadingDate1 = TextEditingController();
  final memHeadingDate2 = TextEditingController();
  final memHeadingDate3 = TextEditingController();

  final memField1 = TextEditingController();
  final memField2 = TextEditingController();
  final memField3 = TextEditingController();
  final memField4 = TextEditingController();

  final memField5 = TextEditingController();
  final memField6 = TextEditingController();
  final memField7 = TextEditingController();
  final memField8 = TextEditingController();

  final memField9 = TextEditingController();
  final memField10 = TextEditingController();
  final memField11 = TextEditingController();
  final memField12 = TextEditingController();

  final memField13 = TextEditingController();
  final memField14 = TextEditingController();
  final memField15 = TextEditingController();
  final memField16 = TextEditingController();

  final memAreaField1 = TextEditingController();
  final memAreaField2 = TextEditingController();
  final memAreaField3 = TextEditingController();
  final memAreaField4 = TextEditingController();

  final memQuesField1 = TextEditingController();
  final memQuesField2 = TextEditingController();
  final memQuesField3 = TextEditingController();
  final memQuesField4 = TextEditingController();
  final memQuesField5 = TextEditingController();
  final memQuesField6 = TextEditingController();
  final memQuesField7 = TextEditingController();
  final targetField8 = TextEditingController();
  final achievementField8 = TextEditingController();
  final memQuesField9 = TextEditingController();
  final memQuesField10 = TextEditingController();
  final memQuesField11 = TextEditingController();


@override
  void onClose() {
    memHeadingDate1.dispose();
    memHeadingDate2.dispose();
    memHeadingDate3.dispose();
    memField1.dispose();
    memField2.dispose();
    memField3.dispose();
    memField4.dispose();
    memField5.dispose();
    memField6.dispose();
    memField7.dispose();
    memField8.dispose();
    memField9.dispose();
    memField10.dispose();
    memField11.dispose();
    memField12.dispose();
    memField13.dispose();
    memField14.dispose();
    memField15.dispose();
    memField16.dispose();
    memAreaField1.dispose();
    memAreaField2.dispose();
    memAreaField3.dispose();
    memAreaField4.dispose();
    super.onClose();
  }


}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../commons/color_gallery.dart';

class FormInputField extends StatelessWidget {
  const FormInputField(
      {super.key, required this.fieldController, required this.keyboardType});

  final TextEditingController fieldController;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 0.5)),
      height: MediaQuery.of(context).size.height * 0.05,
      child: TextFormField(
        controller: fieldController,
        keyboardType: keyboardType,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.only(left: 8, bottom: 10, top: 10, right: 8),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.blue))),
      ),
    );
  }
}

class FormHeading extends StatelessWidget {
  const FormHeading({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: ColorGallery.headingcolor),
    );
  }
}

class ConditionHeading extends StatelessWidget {
  const ConditionHeading({super.key, required this.conText});
  final String conText;

  @override
  Widget build(BuildContext context) {
    return Text(
      conText,
      //"Name of Chief Executive",
      style: GoogleFonts.roboto(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: ColorGallery.headingcolor),
    );
  }
}

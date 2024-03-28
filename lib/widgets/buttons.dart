import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../commons/color_gallery.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    this.onTapBtn,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final Function()? onTapBtn;
  final String text;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTapBtn,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}

 /* SAVE Button */

class SaveBtn extends StatelessWidget {
  final Function()? pressed;
  const SaveBtn({super.key, this.pressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.65,
      child: ElevatedButton(
        onPressed: pressed,
        // () {
        //   // Get.to(() => const InspectionForm2());
        // },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorGallery.secondary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: const TextStyle(
            fontSize: 15.0,
          ),
        ),
        child: Text(
          "Save & Next",
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}

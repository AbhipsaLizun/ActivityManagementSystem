import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../commons/color_gallery.dart';

// ignore: non_constant_identifier_names
PreferredSize Appbar( BuildContext context, String title){
  return PreferredSize(
  preferredSize: Size(
    MediaQuery.of(context).size.width, 
  55
  ),
  child: AppBar(
    automaticallyImplyLeading: true,
     iconTheme: const IconThemeData(
    color: Colors.white, //change your color here
  ),
  titleSpacing: 1,
    title: Text(title,
    style: GoogleFonts.aboreto(fontSize: 20, fontWeight: FontWeight.bold, color: ColorGallery.textColorwhite),
      
    ),
     backgroundColor: ColorGallery.secondary,
  ), 
  );
}


// ignore: non_constant_identifier_names
PreferredSize AppBarText( BuildContext context, String title){
  return PreferredSize(
  preferredSize: Size(
    MediaQuery.of(context).size.width, 
  55
  ),
  child: AppBar(
    automaticallyImplyLeading: true,
     iconTheme: const IconThemeData(
    color: Colors.black, //change your color here
  ),
  titleSpacing: 1,
    title: Text(title,
    style: GoogleFonts.lato(fontSize: 18, 
    fontWeight: FontWeight.w400, 
    color: ColorGallery.text_colorblack),
      
    ),
     backgroundColor: Colors.grey[200],
  ), 
  );
}
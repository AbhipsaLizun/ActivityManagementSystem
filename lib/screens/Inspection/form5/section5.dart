import 'package:activity_management_system/commons/color_gallery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/buttons.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section5_controller.dart';

class InspectionForm5 extends StatelessWidget {
   const InspectionForm5({super.key}); 

  @override
  Widget build(BuildContext context) {
    Section5Controller section5controller = Get.put(Section5Controller());
    return Scaffold(
       bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
        child: SizedBox(
            height: 40,
            child: Align(
                alignment: Alignment.center,
                child: SaveBtn(
                  pressed: () {
                    Get.toNamed('/InspectionForm6');
                  },
                ))),
      ),
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 5"),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                "5.INDIVIDUAL MAXIMUM BORROWING POWER :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12,
              ),

               SizedBox(
                //height: 45,
                child: Text(
                        "(a). Comment on the adequacy of",
                        style: TextStyle(
                          color: ColorGallery.headingcolor,
                          fontSize: 15
                        ),),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding:  const EdgeInsets.only(left: 8, right: 8),
                child: SizedBox(
                  //height: 45,
                  child: Text(
                          "(i). The maximum borrowing power of the Society",
                          style: TextStyle(
                            color: ColorGallery.headingcolor,
                            fontSize: 13
                          ),),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: TableFormInputFieldTwo(areaController: section5controller.borrowingController1),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding:  const EdgeInsets.only(left: 8, right: 8),
                child: SizedBox(
                  //height: 45,
                  child: Text(
                          "(ii). The I.M.B.P. of the members for short term and medium term agriculture loans.",
                          style: TextStyle(
                            color: ColorGallery.headingcolor,
                            fontSize: 13
                          ),),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: TableFormInputFieldTwo(areaController: section5controller.borrowingController2),
              ),

              const SizedBox(
                height: 12,
              ),

               SizedBox(
                //height: 45,
                child: Text(
                        "(b). Whether the inadequacy of the maximum borrowing power of the Society individual member, if any, had come in the way of implementation of the programs allotted to the Society and also in the issues of loans to member for SAO/ KCC purposes and medium term purposes such as dug wells, pump sets etc?",
                        style: TextStyle(
                          color: ColorGallery.headingcolor,
                          fontSize: 14
                        ),),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section5controller.borrowingController3),
            ],
          ),
        ),
      )),
    );
  }
}

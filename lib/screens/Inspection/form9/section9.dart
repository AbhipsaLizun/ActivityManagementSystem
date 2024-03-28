import 'package:activity_management_system/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section9_controller.dart';

class InspectionForm9 extends StatelessWidget {
  const InspectionForm9({super.key});

  @override
  Widget build(BuildContext context) {
     Section9Controller section9controller = Get.put(Section9Controller());
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
        child: SizedBox(
            height: 40,
            child: Align(
                alignment: Alignment.center,
                child: SaveBtn(
                  pressed: () {
                    Get.toNamed('/InspectionForm10');
                  },
                ))),
      ),
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 9"),
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
                "9.LINKING OF CREDIT WITH MARKETING :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Was there any arrangements of linking credit with marketing in the area of operation?s"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section9controller.marketingController1),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Whether the members of the Society delivered their produce near by marketing Societies, the role played by the credit Society in this regard and genuineness or otherwise of the recoveries effected through linking of credit with marketing.  "),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section9controller.marketingController2),
            ],
          ),
        ),
      )),
    );
  }
}

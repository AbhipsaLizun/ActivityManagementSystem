import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section20_controller.dart';

class InspectionForm20 extends StatelessWidget {
  const InspectionForm20({super.key});

  @override
  Widget build(BuildContext context) {
    Section20Controller section20controller = Get.put(Section20Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 20"),
       bottomNavigationBar: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
                        child: SizedBox(
                          height: 40,
                          child:  Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm21');
                        },
                      )
                    )
                        ),
                      ),
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
                height: 10,
              ),
              Text(
                "20. FRAUDS :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Was there any instance of mis-appropriation/ embezzlement of funds, etc? If so full details including the disciplinary action initiated against the staff involved, filing of police complaint, etc. decides the amount recovered may be given."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section20controller.fraudField),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                      height: ScreenSize.height(context) * 0.04,
                    ),
                    
            ],
          ),
        ),
      )),
    );
  }
}
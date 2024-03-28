import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section21_controller.dart';

class InspectionForm21 extends StatelessWidget {
  const InspectionForm21({super.key});

  @override
  Widget build(BuildContext context) {
     Section21Controller section21controller = Get.put(Section21Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 21"),
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
                "22. DEVELOPMENT /ASPECTS :",
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
                        "I. Whether the society was preparing annual business development plan on the lines of DAP. If prepared, the achievement against various targets fixed for the last two years may be commented upon. Whether progress reports on the above were being sent to DCCB regularly?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section21controller.devQuesField1),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Comment on the financial assistance under Cooperation Development Fund. If any, received for infrastructure development and its utilization thereof."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section21controller.devQuesField2),
              const SizedBox(
                height: 10,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Comment on the level of computerization and steps taken by the society for full computerization of its working."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section21controller.devQuesField3),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Initiatives taken by the Society in the promotion of SHG in its area of operation may be highlighted."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section21controller.devQuesField4),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                      height: ScreenSize.height(context) * 0.04,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm22');
                        },
                      )
                    )
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section18_controller.dart';

class InspectionForm18 extends StatelessWidget {
  const InspectionForm18({super.key});

  @override
  Widget build(BuildContext context) {
    Section18Controller section18controller = Get.put(Section18Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 18"),
      bottomNavigationBar: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
                        child: SizedBox(
                          height: 40,
                          child:  Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm19');
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
                height: 8,
              ),
              Text(
                "18. AUDIT :",
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
                        "I. When was the Society last audited and for which year? Furnish the audit classification of the Society as per the latest audit report."),
              ),
               const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section18controller.auditControllerOne),
                const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Indicate the serious defects pointed out in the audit note and steps taken by the Society for rectification."),
              ),
               const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section18controller.auditControllerTwo),
               const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Was copy of the audited report promptly received by it and rectification report sent to the department within a reasonable time?"),
              ),
               const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section18controller.auditControllerThree),
               const SizedBox(
                height: 15,
              ),

               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Were there any Bad & Doubtful assets in the Society as per the latest audit report and if so what steps had been taken by the Society to write off the amount."),
              ),
               const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section18controller.auditControllerFour),
               const SizedBox(
                height: 15,
              ),

              //  SizedBox(
              //         height: ScreenSize.height(context) * 0.05,
              //       ),
              //       Align(
              //         alignment: Alignment.center,
              //          child: SaveBtn(
              //           pressed: () {
              //             Get.to(() => const InspectionForm19());
              //           },
              //         )
              //       ),

            ],
          ),
        ),
        )
      ),
    );
  }
}
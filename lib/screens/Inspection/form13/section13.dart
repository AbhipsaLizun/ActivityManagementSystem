import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section13_controller.dart';

class InspectionForm13 extends StatelessWidget {
  const InspectionForm13({super.key});

  @override
  Widget build(BuildContext context) {
    Section13Controller section13controller = Get.put(Section13Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 13"),
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
                "13. RECOVERIES :",
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
                        "I. Comment on the recovery mechanism. Any assistance/ Cooperation was provided by DCCB/SCBs and State Govt. in the recovery of loan amount."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController1),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Whether notices were issued in advance to the members for recovery of loan?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController2),
               const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Was there a system of issuing receipts / Pass Books to members for recoveries / Loan advanced?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController3),
               const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Whether recoveries effected from members were genuine, accounted for on the same day and promptly remitted to the Bank? (Comments to be made after examining Cash Book, Loan Ledger, members Pass Book / Counter Foil / receipts etc.)"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController4),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Whether the Society was in the habit of re-loaning of recoveries?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController5),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Whether a time lag of minimum seven days was maintained between recovery of loan from members and loan disbursement to them?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController6),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VII. Book adjustment, if any resorted to by the Society to show better recovery position by keeping the books of account open and other methods may be highlighted with full details."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController7),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VIII. Comment on the appropriation of recoveries received from borrowers received from the Society in the books of DCCBs. and whether they were in accordance with the accounting principles?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController8),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IX. Special efforts made by the Society for improving its recovery position by organizing recovery melas/ recovery drives/ effective persuasion/ door-to-door collection drives."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section13controller.recoveryController9),
              SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm14');
                        },
                      )
                    )
            ],
          ),
        ),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section12_controller.dart';

class InspectionForm12 extends StatelessWidget {
  const InspectionForm12({super.key});

  @override
  Widget build(BuildContext context) {
    Section12Controller section12controller = Get.put(Section12Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 12"),
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
                "12. BOOKS OF ACCOUNT :",
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
                        "I. Whether all the prescribed section12controller.registers and Books of Account maintained and posted up to date? Check entries in Day Book, General Ledger, Deposit, Advance Registers and discrepancies observed, if any, may be indicated in detail."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController1),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Status of balancing / reconciliation of Subsidy Ledgers with that of General Ledger, prepare reconciliation statements for each type of account with the CCB and indicate long outstanding entries with date and amount."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController2),
               const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Comment, in particular on the maintenance of registers of land cultivated by members and separate accounts in loan ledger for small/marginal and economically weak farmers and other farmers."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController3),
               const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Whether the entries in the register of land were get verified from the revenue records periodically?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController4),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Efforts made by the Society to regularize long outstanding entries in sundry debtors / sundry creditors’ account, if any."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController5),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Efforts made by the Society towards improvements of its management information system (MIS.) by installation of computers etc. may be highlighted."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController6),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VII. Whether the Society furnished all the prescribed returns and statements to DCCB/ Department regularly?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section12controller.recoveryController7),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VIII. Whether share certificates had been issued to all the members?"),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm13');
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
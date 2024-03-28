import 'package:activity_management_system/screens/Inspection/form11/bank_balance_table.dart';
import 'package:activity_management_system/screens/Inspection/form11/controller/section11_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';

class InspectionForm11 extends StatelessWidget {
  const InspectionForm11({super.key});

  @override
  Widget build(BuildContext context) {
    Section11Controller controller = Get.put(Section11Controller());
    final scrollController = ScrollController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 11"),
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
                "11. CASH :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Examine and bring out irregularities, if any, in regard to the arrangements for custody of overnight cash balances and whether the arrangements were satisfactory?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController1),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. What was the limit fixed for keeping overnight cash balances and whether this was adhered to? (If the limit had been exceeded continuously for long periods, instances may be furnished)"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController2),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Whether the cash was adequately insured and whether the insurance policy was in force?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController3),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Whether the Society was maintaining Current Account with any other Banks except DCCB. ? Was there any limit fixed for current account balances?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController4),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Verify the Cash Balances/ with reference to the Cash Book and bring out deficiencies such as shortage, excess etc., if any."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController5),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Whether spoiled notes were included in cash balances for long period?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController6),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VII. Investment made with DCCB/ other Banks and custody of investment documents may be verified and commented."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.cashController7),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "BANK BALANCES :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        child: const BankBalanceTable(),
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: ScreenSize.height(context) * 0.05,
              ),
              Align(
                  alignment: Alignment.center,
                  child: SaveBtn(
                    pressed: () {
                      Get.toNamed('/InspectionForm12');
                    },
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

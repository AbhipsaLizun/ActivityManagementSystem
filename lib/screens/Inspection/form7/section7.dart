import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section7_controller.dart';
import 'loan_table.dart';


class InspectionForm7 extends StatelessWidget {
  const InspectionForm7({super.key});

  @override
  Widget build(BuildContext context) {
    Section7Controller section7controller = Get.put(Section7Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 7"),
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
                "7. BORROWINGS:",
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
                        "I. Furnished and comment on the purpose wise borrowings/ limits availed by the Society during the last two years"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section7controller.borrowController1),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: section7controller.scrollController,
                      child: SingleChildScrollView(
                        controller: section7controller.scrollController,
                        scrollDirection: Axis.horizontal,
                        child: const LoanTableInput(),
                      )),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Did the Society default in repayment of its dues to the D.C.C.B.? If so, what was the amount of penal interest, if any charged / paid by the Society towards such default?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section7controller.borrowController2),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Did such default hamper flow of funds to new and non-defaulting members of the Society?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section7controller.borrowController3),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Comment on diversion of borrowings for meeting establishment cost, refund of deposits etc."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section7controller.borrowController4),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                child: ConditionHeading(
                  conText: "(a) Borrowed from D.C.C.B. /others",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section7controller.otherController1),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                child: ConditionHeading(
                  conText: "(b) Diversion of borrowed funds, if any",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section7controller.otherController2),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                child: ConditionHeading(
                  conText:
                      "(c) Collection of loans during the year under inspection.",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            child: ConditionHeading(
                              conText: "Principal",
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TableFormInputFieldTwo(
                              areaController: section7controller.otherController3),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            child: ConditionHeading(
                              conText: "Interest",
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TableFormInputFieldTwo(
                              areaController: section7controller.otherController4),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                child: ConditionHeading(
                  conText: "(d) Eligible Interest Margin to meet the Cost of Management",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section7controller.otherController5),
              const SizedBox(
                height: 15,
              ),
             
              const SizedBox(
                child: ConditionHeading(
                  conText: "(e) Actual Expenditures made by the Society towards Cost of Management",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section7controller.otherController6),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                child: ConditionHeading(
                  conText: "(f) Difference between (d – e) which was diverted by the Society to meet the Cost of Management.",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section7controller.otherController7),
              const SizedBox(
                height: 15,
              ),


              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Examine, with reference to the maintenance of surplus cash reserve, if any, the possibility for repayment of borrowings for cost reduction."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section7controller.borrowController5),
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
                          Get.toNamed('/InspectionForm8');
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

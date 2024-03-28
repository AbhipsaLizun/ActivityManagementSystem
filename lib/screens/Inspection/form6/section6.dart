import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section6_controller.dart';
import 'tables.dart';

class InspectionForm6 extends StatelessWidget {
  const InspectionForm6({super.key});

  @override
  Widget build(BuildContext context) {
     Section6Controller section6controller = Get.put(Section6Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 6"),
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
                "6. DEPOSITS :",
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
                        "I. Efforts made by the Society in deposit mobilization with a view to promote thrift among its members and strengthening its financial position."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController1),
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
                              controller: section6controller.scrollController1,
                              child: SingleChildScrollView(
                                controller: section6controller.scrollController1,
                                scrollDirection: Axis.horizontal,
                                child: TableInputOne(),
                                
                              )
                              ),
                          ),
              ),
                const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
                 const SizedBox(
                height: 10,
              ),
                const Text("INVESTMENT OUT OF DEPOSITS",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),),
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
                              controller: section6controller.scrollController2,
                              child: SingleChildScrollView(
                                controller: section6controller.scrollController2,
                                scrollDirection: Axis.horizontal,
                                child: TableInputTwo(),
                                
                              )
                              ),
                          ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
                 const SizedBox(
                height: 10,
              ),
                const Text("Comment on the growth of deposits with details of deposit mix like savings, Current & fixed deposit mobilization during the last two years by the Society:",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),),
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
                              controller: section6controller.scrollController3,
                              child: SingleChildScrollView(
                                controller: section6controller.scrollController3,
                                scrollDirection: Axis.horizontal,
                                child: TableInputThree(),
                                
                              )
                              ),
                          ),
              ),


               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Furnish the quantum of deposit mobilized from the non-members and its proportion to total deposits. Whether prescribed percentage of such deposits was deposited with DCCB as per RCS’s instruction?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController2),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Comment on the procedure followed which opening deposit a/cs like proper introduction of depositors, obtaining photographs and other operational aspects."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController3),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Whether deposits mobilized were covered by any guaranteed fund to protect the interests of the depositors."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController4),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Whether provision of I.T.Act was followed while accepting term deposits of Rs.50,000/- or more and payment of interest there against?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController5),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VII. Comment on the ability of PACS to meet repayment of its deposits obligation on the due dates of maturity and default, if any in this regard with reason."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController6),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VIII. Did the Society borrow from DCCB for refund of high cost deposits and if so, cost of such borrowings?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController7),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IX. Whether the Society was extending loan against deposit mobilized? Term and conditions, documents taken margin availability, charging of interest may be examined and commented upon?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController8),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "X. Comment on rate of interest on various types of deposits allotted vis-à-vis the rates of interest offered by DCCB and commercial Banks in the District and jurisdiction for offering higher rate of interests by PACS, if any."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController9),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "XI. Whether deposits with the banks were renewed/withdrawn in time and interest accrued thereon promptly on due dates?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section6controller.depositController10),
                  SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm7');
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
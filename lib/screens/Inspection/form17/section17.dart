import 'package:activity_management_system/screens/Inspection/form17/provision_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section17_controller.dart';

class InspectionForm17 extends StatelessWidget {
  const InspectionForm17({super.key});

  @override
  Widget build(BuildContext context) {
    Section17Controller provisionController = Get.put(Section17Controller());
    final scrollController = ScrollController(); 
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 17"),
      bottomNavigationBar: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
                        child: SizedBox(
                          height: 40,
                          child:  Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm18');
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
                "17. PROVISION FOR BAD DEBTS :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
               SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Examine the estimate of Bad & Doubtful debts by the auditors in respect of the loan and advances of the Society and other assets and furnish the same in the table given below. (As per Provisional Balance Sheet for the year __________)"),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                areaController: provisionController.debtsController1
                ),
                const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        child:  const ProvisionTable(),
                      )),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
               const  SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Examine and comment on the adequacy of reserves / provisions made against such bad and doubtful assets."),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                areaController: provisionController.debtsController2
                ),
            ],
          ),
        ),
      )),
    );
  }
}

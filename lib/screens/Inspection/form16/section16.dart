import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section16_controller.dart';
import 'imbalance_table.dart';

class InspectionForm16 extends StatelessWidget {
  const InspectionForm16({super.key});

  @override
  Widget build(BuildContext context) {

    Section16Controller section16controller = Get.put(Section16Controller());
    final scrollController = ScrollController();

    return Scaffold(

       backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 16"),
      bottomNavigationBar: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
                        child: SizedBox(
                          height: 40,
                          child:  Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm17');
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
                "16. IMBALANCE :",
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
                        "I. Comment on the status of imbalance between loans outstanding at the PACS level and the borrowings outstanding to the DCCB., reason for imbalance and steps taken to reduce the same."),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                areaController: section16controller.imbalanceController1
                ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
               Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(124, 248, 213, 161),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        child:  ImbalanceTable(),
                      )),
                ),
              ),

              //  SizedBox(
              //         height: ScreenSize.height(context) * 0.12,
              //       ),
              //       Align(
              //         alignment: Alignment.center,
              //          child: SaveBtn(
              //           pressed: () {
              //             //Get.to(() => const InspectionForm1());
              //           },
              //         )
              //       )




            ],
          ),
        ),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section14_controller.dart';
import 'overdue_table.dart';

class InspectionForm14 extends StatelessWidget {
  const InspectionForm14({super.key});

  @override
  Widget build(BuildContext context) {

    Section14Controller controller = Get.put(Section14Controller());
    final scrollController1 = ScrollController();
    final scrollController2 = ScrollController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 14"),
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
                "14. OVERDUES :",
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
                        "I. Examine the DCB position of the Society for last 2 years and comment on the steps taken to recover overdues. The reasons for increase in the overdues, if any, may be examined and commented."),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: controller.overdueController1),
              const SizedBox(
                height: 15,
              ),
               Text(
                "Demand, Collection and Balance position of the Society for last three years.",
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
               const SizedBox(
                height: 8,
              ),
               Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController1,
                      child: SingleChildScrollView(
                        controller: scrollController1,
                        scrollDirection: Axis.horizontal,
                        child:  OverdueTableOne(),
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
               Text(
                "Interest (Demand, Collection & Balance).",
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController2,
                      child: SingleChildScrollView(
                        controller: scrollController2,
                        scrollDirection: Axis.horizontal,
                        child:  OverdueTableTwo(),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),


              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Whether the Society maintained DCB register and DCB position was worked out correctly?"),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: controller.overdueController1),
              const SizedBox(
                height: 15,
              ),

              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Examine the period wise and purpose-wise classification of overdues in detail to ascertain reasons for overdues and suggestion for remedial measures to improve recovery from farmers. (Period wise classification may be given for period of one year, for period from 1 to 3 years, 3 to 4 years, 4 to 6 years and above 6 years)."),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: controller.overdueController1),
              const SizedBox(
                height: 15,
              ),

              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Whether the list of overdues was prepared and placed before the managing committee at least once a month for review and further action?"),
              ),
               const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: controller.overdueController1),
               const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: ScreenSize.height(context) * 0.08,
              ),
              Align(
                  alignment: Alignment.center,
                  child: SaveBtn(
                    pressed: () {
                      Get.toNamed('/InspectionForm15');
                    },
                  ))


          
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:activity_management_system/screens/Inspection/form4/controller/section4_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../commons/color_gallery.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'table_data_input.dart';

class InspectionForm4 extends StatelessWidget {
   const InspectionForm4({super.key});

  @override
  Widget build(BuildContext context) {
   Section4Controller section4controller = Get.put(Section4Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 4"),
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
                "4. MANAGEMENT AND STAFF :",
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
                        "Did the Society had elected Management Committee or was it governed by the special Officer from the Cooperative Department of the State Govt.?"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Date of Election",
                          style: TextStyle(
                              color: ColorGallery.headingcolor, fontSize: 13),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TableFormInputFieldTwo(
                          areaController: section4controller.electionDateController,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Members of Managing Committee",
                          style: TextStyle(
                              color: ColorGallery.headingcolor, fontSize: 13),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        TableFormInputFieldTwo(
                          areaController: section4controller.memberController,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Whether the AGB and Managing committee were held regularly as required under the Byelaw/Act & Rules?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController1),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Details of the Managing Committee and interest evinced by it in the affairs of the Society may be commented."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController2),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(conText: "Date of AGB Meeting held"),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                //height: containerHeight,
                padding: const EdgeInsets.only(left: 3, right: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  // border: Border.all(
                  //     width: 0.5,
                  //     color:
                  //         const Color.fromARGB(255, 128, 127, 127)),
                ),
                child: TextFormField(
                  controller: section4controller.dateController,
                  readOnly: true,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600, fontSize: 15),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 8, bottom: 4, top: 0, right: 15),
                      hintText: "Choose Date",
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        size: 18,
                        color: Colors.grey,
                      )),
                  onTap: () {
                   section4controller.selectDate();
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Important decisions taken in the meetings managing committee"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.decisionController),
                const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Was any of the Managing Committee members a defaulter to the Society? Was any of them elected to office when in default continue on the Managing Committee despite default?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController3),
                const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Whether the important circulars received from the Coop. Deptt./DCCB were placed in the management Committee meeting and prompt follow up action initiated there on?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController4),
                const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "What was the procedure followed for recruitment of staff? Were the staff adequately qualified and properly trained to any specific job?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController5),
               const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
               const SizedBox(
                height: 5,
              ),
              const Text("Staff Position of the Society,",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),),
                const Divider(
                thickness: 1,
              ),
               const SizedBox(
                height: 5,
              ),

              Container(
                decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Scrollbar(
                              controller: section4controller.scrollController,
                              child: SingleChildScrollView(
                                controller: section4controller.scrollController,
                                scrollDirection: Axis.horizontal,
                                child:  TableDataInput(),
                              )
                              ),
                          ),
              ),
                 const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Did the Society had a whole time paid Chief Executive? Were the Chief Executive apart from other regular staff members trained and qualified and if not, action taken to got them trained?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController6),
                 const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Comment upon the quality of Chief Executive and other staff members of the Society."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController7),
                 const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Whether the Society received any managerial subsidy from the Govt. and, if so, whether the same had been utilized properly?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section4controller.staffFieldController8),

                SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm5');
                        },
                      )
                    ),
                     const SizedBox(
                      height: 10,
                    ),

            ],
          ),
        ),
      )),
    );
  }
}

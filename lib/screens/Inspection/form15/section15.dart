import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section15_controller.dart';

class InspectionForm15 extends StatelessWidget {
  const InspectionForm15({super.key});

  @override
  Widget build(BuildContext context) {
    Section15Controller section15controller = Get.put(Section15Controller());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 15"),
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
                "15. LEGAL ACTION AGAINST DEFAULTERS :",
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
                        "I. Were all the overdues over one year on the date of inspection were covered by legal action?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section15controller.legalController1),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Was important action such as issuing registered notices, obtaining decrees etc. initiated by the Society on the lines specified in the Act / Rules / Bye-laws?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section15controller.legalController2),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Was there any delay in taking legal action in any stage? (bring out instances where arbitration proceedings not filed within 6 months against willful defaulters / where arbitration references filed but pending for more than 6 months / execution petitions filed but pending for more than 6 months)."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section15controller.legalController3),
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
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Comment on the action taken against major categories of defaulters viz."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section15controller.legalController3),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "a. Members having 5 acres of land and above."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableFormInputFieldTwo(
                        areaController: section15controller.memberController1),
                      
                      const SizedBox(
                        height: 12,
                      ),
                      const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "b. Members who availed loan for purchase of tractors etc."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableFormInputFieldTwo(
                        areaController: section15controller.memberController2),                  
                      const SizedBox(
                        height: 12,
                      ),
                        const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "c. Members professionals, Mill owners etc."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableFormInputFieldTwo(
                        areaController: section15controller.memberController3),                  
                      const SizedBox(
                        height: 12,
                      ),
                        const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "d. Members who disposed mortgaged properly."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableFormInputFieldTwo(
                        areaController: section15controller.memberController4),                  
                      const SizedBox(
                        height: 12,
                      ),
                        const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "e. Members who mis-utilised the loans."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableFormInputFieldTwo(
                        areaController: section15controller.memberController5),                  
                      SizedBox(
                        height: 12,
                      ),
                        const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "f. Borrowers with loan amount of `.10,000 /- and above."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableFormInputFieldTwo(
                        areaController: section15controller.memberController6),                  
                      const SizedBox(
                        height: 12,
                      ),
                      const Divider(
                thickness: 1,
              ),


                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Attach a list of defaulter members indicating there in the full details i.e. date of default, amount of default, status of legal action initiated etc."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section15controller.legalController3),
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
                      Get.toNamed('/InspectionForm16');
                    },
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

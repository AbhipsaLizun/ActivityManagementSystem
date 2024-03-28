
import 'package:activity_management_system/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../form2/title.dart';
import 'controller/section1_controller.dart';
import 'form_input_field.dart';

class InspectionForm1 extends StatelessWidget {
  const InspectionForm1({super.key});



  @override
  Widget build(BuildContext context) {
   Section1Controller section1controller = Get.put(Section1Controller());
    return Scaffold(
      appBar: Appbar(context, "SECTION 1"),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(12, 10, 12, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "1.  STATUTORY DETAILS :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FormHeading(text: "Name and Address of the Society"),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.nameController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(text: "Registration No. & Date"),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.regController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Date of functioning",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                          width: 0.5,
                        ),
                      ),
                      child: TextFormField(
                        controller: section1controller.funDateController,
                        readOnly: true,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(
                                left: 8, bottom: 14, top: 0, right: 15),
                            hintText: "Choose Date",
                            suffixIcon: Icon(
                              Icons.calendar_month,
                              size: 18,
                              color: Colors.grey[700],
                            )),
                        onTap: () {
                          section1controller.selectDate("function");
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Affiliation",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.affiliateController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Area of Operation",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.operationController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Name of Chief Executive",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.executeController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Name of Inspecting Officer",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.officerController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Authority of Inspection",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.authorityInspController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Period of Inspection",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.inspectionController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Date of Inspection",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                          width: 0.5,
                        ),
                      ),
                      child: TextFormField(
                        controller: section1controller.insDateController,
                        readOnly: true,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(
                                left: 8, bottom: 14, top: 0, right: 15),
                            hintText: "Choose Date",
                            suffixIcon: Icon(
                              Icons.calendar_month,
                              size: 18,
                              color: Colors.grey[700],
                            )),
                        onTap: () {
                          section1controller.selectDate("Inspection");
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Introduction",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FormInputField(
                      fieldController: section1controller.introductionController,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FormHeading(
                      text: "Aims & Objects",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0.5)),
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: TextFormField(
                        controller: section1controller.aimController,
                        keyboardType: TextInputType.text,
                        maxLines: null,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(
                                left: 8, bottom: 15, top: 10, right: 15),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Colors.blue))),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    //...........Row 1............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          flex: 2,
                          child: ConditionHeading(
                            conText:
                                "Did Society have separate owned or rented premises to house its offices?",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section1controller.textOneController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //...........Row 2............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ConditionHeading(
                            conText:
                                "Whether all the amendments to the Byelaws of the Society approved By the DRCS/ARCS have been incorporated in the Byelaw copy with the Society?",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section1controller.textTwoController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //...........Row 3............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ConditionHeading(
                            conText:
                                "Was the Society viable oWas the Society viable or potential viable according to the prescribed standard? If it is potential viable, when it was likely to become viable?",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section1controller.textThreeController,
                            keyboardType: TextInputType.text,
                            
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),

                    //........Save Btn..........//
                    Align(
                      alignment: Alignment.center,
                      child: SaveBtn(
                        pressed: () {
                          //Get.to(() => const InspectionForm2());
                          Get.toNamed('/InspectionForm2');
                        },
                      )
                    
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

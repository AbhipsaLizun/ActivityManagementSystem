import 'package:activity_management_system/screens/Inspection/form8/investment_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../commons/color_gallery.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section8_controller.dart';
import 'member_table.dart'; 

class InspectionForm8 extends StatelessWidget {
  const InspectionForm8({super.key});

  @override
  Widget build(BuildContext context) {
    Section8Controller section8Controller = Get.put(Section8Controller());
    final scrollController = ScrollController();
    final scrollController2 = ScrollController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 8"),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                "8. LOAN AND ADVANCE :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Details of purpose-wise loans and advances granted by the Society to its members in the last two years may be given and comment.",
                style: GoogleFonts.roboto(
                    color: ColorGallery.headingcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Investment Position",
                    style: GoogleFonts.roboto(
                        color: Colors.blueGrey[700],
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TableFormInputFieldTwo(
                          areaController: section8Controller.loanController1)),
                ],
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
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(196, 248, 206, 206),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        child: InvestmentTable(),
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
              SizedBox(
                //height: 45,
                child: Text(
                  "S.T. (S.A.O.) Loans",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ColorGallery.headingcolor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "Examine the current N.C.L. statements of the Society and bring out deficiencies, if any in regard to the following aspects in particular."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController2),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Whether NCL statements had been prepared in two parts i.e. Part-I for economically weaker farmers and Part–II for other farmers and whether the classification of farmers was made correctly? (This should be checked with reference to the land registers maintained by the Society)"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController3),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Whether NCL statements prepared for a period of three years and if prepared whether annual review was taken for further improvement in the statement?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController4),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Whether scale of finance was adhered to while sanctioning/ disbursing crop loans? Comment on inadequate of SAF, if observed, particularly in respect of those crops where high-tech methods for production were adopted."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController5),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Whether kind component was allowed to be lifted in cash? If so, to give instances and to comment on mis-utilisation, if any observed."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController6),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Whether kind component was allowed to be lifted in cash? If so, to give instances and to comment on mis-utilisation, if any observed."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController7),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(a) Amount of kind component advanced during the year"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(areaController: section8Controller.yearController),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(conText: "(b) Out of which Others"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.othersController),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "(c) Distribution of",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(i) Fertilisers",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TableFormInputFieldTwo(
                            areaController: section8Controller.disController1),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(ii) Pesticides",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TableFormInputFieldTwo(
                            areaController: section8Controller.disController2),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "(iii) Seeds",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TableFormInputFieldTwo(
                            areaController: section8Controller.disController3),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "(iv) Others, please specify",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        TableFormInputFieldTwo(
                            areaController: section8Controller.disController4),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Total",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: ColorGallery.headingcolor),
              ),
              const SizedBox(
                height: 2,
              ),
              TableFormInputFieldTwo(areaController: section8Controller.disController5),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Whether there was variation in acreage recorded in the Register of Lands and N.C.L. Statements? Whether Crop Loans sanctioned were in proportion to the extent of land records indicated in the Land Register maintained by the Society?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController8),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Whether there was the system of verification on utilization of Crop Loans disbursed by the Society?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController9),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VII. Indicate the cropping pattern followed/charged and the major crops grown in the area of the Society. Bring out ghost acreage if any, financed and also availment of higher SOF by giving false declaration. (Comment by undertaking field visits.)"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController10),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VIII. Comment on the interest rates charged to ultimate borrowers (margin/spread) and whether they were as per the rates determined by DCCB/ RCS. Compare the same with the interest rates charged by Commercial Banks in the district."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController11),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IX. Comment whether security obtained from ST/MT/LT borrowers were as per RBI/ NABARD instructions received through DCCB from time to time."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController12),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "K.C.C Scheme :",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
                 const Text(
                "A. CROP LOAN :",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
                const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "YEAR",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 120,
                          child: TableFormInputFieldTwo(
                              areaController: section8Controller.cropController1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TARGET",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 120,
                          child: TableFormInputFieldTwo(
                              areaController: section8Controller.cropController2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ACHIEVEMENT",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: ColorGallery.headingcolor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 120,
                          child: TableFormInputFieldTwo(
                              areaController: section8Controller.cropController3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
               const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Comment on the coverage of Crop Loans issued under KCC vis-à-vis a target fixed during the last two years"),
              ),
               const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Scrollbar(
                      controller: scrollController2,
                      child: SingleChildScrollView(
                        controller: scrollController2,
                        scrollDirection: Axis.horizontal,
                        child:  MembersTable(),
                      )),
                ),
              ),
                const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 1,
              ),
               const SizedBox(
                height: 8,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Indicate the number of borrowers yet to be covered under the scheme. Also, indicate the target allotted for the issue of KCC during the current year and achievement there against."),
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
                              conText: "Traget",
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TableFormInputFieldTwo(
                              areaController: section8Controller.targetController),
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
                              conText: "Achievement",
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TableFormInputFieldTwo(
                              areaController: section8Controller.achievementController),
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
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Comment on proper following of operational guidance regarding determining the quantum of credit limit, drawals and repayment, issue of pass book, maintaining books of accounts, etc."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController13),
                  const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Comment on whether the limit sanctioned under the KCC scheme was operated as revolving credit or continued to operate on conventional loan type and if so, furnish the reasons thereof. (The cropping pattern i.e. mono or multi-cropping pattern followed, availability of adequate irrigation sources, awareness of the provisions of the scheme among the farmers, etc. may be kept in view while commenting on this aspect)"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController14),
                  const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Steps taken to popularize the K.C.C. scheme among the beneficiaries/rural clientele. Any programs, awareness workshops, banker–borrower meets were organized?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController15),
                  const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Implementation of crop insurance scheme under Rashtriya Krishi Bima Yojana (RKBY) and coverage of personal accident insurance scheme (PAIS) for KCC holders may be commented."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController16),
                  const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
                  const SizedBox(
                height: 10,
              ),
               const Text(
                "B. TERM LOAN :",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
                 const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(i) Comment on the coverage of term loans as working capital limits (for agril. And allied activities), consumption loans, and debt redemption loans under K.C.C."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController17),
                  const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(ii) Comment on the proper system (keeping distinct transaction records of different loan facilities viz. Crop Loan, Term loan, and working capital limit put in place to avoid misuse/mix-up of none/different facilities to take advantage in terms of security, margin, rate of interest, and applicable prudential norms)"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: section8Controller.loanController18),

                  SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm8SecondPage');
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

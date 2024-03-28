import 'package:activity_management_system/constants/screensize.dart';
import 'package:activity_management_system/screens/Inspection/form2/title.dart';
import 'package:activity_management_system/screens/Inspection/form3/tableform_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import 'controller/section3_controller.dart';

class InspectionForm3 extends StatelessWidget {
  const InspectionForm3({super.key});

  @override
  Widget build(BuildContext context) {
    Section3Controller section3controller = Get.put(Section3Controller());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 3"),
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
                height: 8,
              ),
              Text(
                "3. MEMBERSHIP :",
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
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Scrollbar(
                            controller: section3controller.scrollController,
                            child: SingleChildScrollView(
                              controller: section3controller.scrollController,
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                columnSpacing: 18,
                                headingRowHeight:
                                    ScreenSize.height(context) * 0.12,
                                columns: <DataColumn>[
                                  const DataColumn(
                                      label: Expanded(
                                    child: Text(
                                      'Particulars ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  )),
                                  const DataColumn(
                                      label: Expanded(
                                    child: Text(
                                      'NO.OF AGRIL. FAMILIES RESIDING IN THE AREA',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  )),
                                  DataColumn(
                                      label: Expanded(
                                    child: Column(
                                      children: [
                                        const Text(
                                          'AS ON \n 31.3.23',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        TableFormInputFieldOne(
                                          controller: section3controller
                                              .memHeadingDate1,
                                        ),
                                      ],
                                    ),
                                  )),
                                  DataColumn(
                                      label: Expanded(
                                    child: Column(
                                      children: [
                                        const Text(
                                          'AS ON \n 31.3.23',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        TableFormInputFieldOne(
                                          controller: section3controller
                                              .memHeadingDate2,
                                        ),
                                      ],
                                    ),
                                  )),
                                  DataColumn(
                                      label: Expanded(
                                    child: Column(
                                      children: [
                                        const Text(
                                          'AS ON \n 31.3.23',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        TableFormInputFieldOne(
                                          controller: section3controller
                                              .memHeadingDate3,
                                        ),
                                      ],
                                    ),
                                  )),
                                  const DataColumn(
                                    label: Expanded(
                                      child: Center(
                                        child: Text(
                                          '% OF GROWTH \nOVER LAST YEAR',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                rows: <DataRow>[
                                  //........Row 1 .........//
                                  DataRow(cells: <DataCell>[
                                    const DataCell(Text('SC')),
                                    DataCell(TableFormInputFieldTwo(
                                      areaController:
                                          section3controller.memAreaField1,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField1,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField2,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField3,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField4,
                                    )),
                                  ]),

                                  //........Row 2 .........//
                                  DataRow(cells: <DataCell>[
                                    const DataCell(Text('ST')),
                                    DataCell(TableFormInputFieldTwo(
                                      areaController:
                                          section3controller.memAreaField2,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField5,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField6,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField7,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField8,
                                    )),
                                  ]),

                                  //........Row 3  .........//
                                  DataRow(cells: <DataCell>[
                                    const DataCell(Text('O.B.C')),
                                    DataCell(TableFormInputFieldTwo(
                                      areaController:
                                          section3controller.memAreaField3,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField9,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField10,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField11,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField12,
                                    )),
                                  ]),

                                  //........Row 4  .........//
                                  DataRow(cells: <DataCell>[
                                    const DataCell(Text('TOTAL')),
                                    DataCell(TableFormInputFieldTwo(
                                      areaController:
                                          section3controller.memAreaField4,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField13,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField14,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField15,
                                    )),
                                    DataCell(TableFormInputFieldOne(
                                      controller: section3controller.memField16,
                                    )),
                                  ]),
                                ],
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      thickness: 0.5,
                    ),
                    const SizedBox(
                      // height: 45,
                      child: ConditionHeading(
                          conText:
                              "1) What percentage does the membership work out to the number of families in the area?"),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField1),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      // height: 45,
                      child: ConditionHeading(
                          conText:
                              "2) Comment on the increase/ decrease in the membership of the Society including membership during the last two years with special reference to small and marginal farmers in the area of operation of the Society."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField2),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "3) Comment on the steps taken to increase the total as well as borrowing membership of the Society to increase the credit flow to the agriculture sector."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField3),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "4) What percentage does the membership work out to the number of families in the area?"),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField4),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "5) Comment on the increase/ decrease in the membership of the Society including membership during the last two years with special reference to small and marginal farmers in the area of operation of the Society."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField5),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "6) Comment on the steps taken to increase the total as well as borrowing membership of the Society to increase the credit flow to the agriculture sector."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField6),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "7) What was the target fixed for the current year for admission of new members and the achievement there against?"),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField7),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "8) What was the target fixed for the current year for admission of new"),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TableFormInputFieldTwo(
                          areaController: section3controller.targetField8,
                          hintText: "Target",
                        )),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: TableFormInputFieldTwo(
                          areaController: section3controller.achievementField8,
                          hintText: "Achievement",
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "9) In case of reduction in borrowing members over the years, indicate the reasons therefore (facts like shrinkage in cultivable land due to conversion of land for housing purpose, loan left fallow due to inadequate irrigation source, farmers moving to other banks/ for private money lenders, activity not viable due to subdivision and from fragmentation etc."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField9),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "10) Whether rural artisans, share croppers, tenants etc. were also enrolled as members and financed by the Society with a view to achieve integrated rural development and if so, details may be furnished."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField10),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      //height: 45,
                      child: ConditionHeading(
                          conText:
                              "11) Details of members covered and financed under poverty alleviation program i.e. SGSY. and other special programs/ schemes for weaker sections including the impact on the quantity of their life may be highlighted."),
                    ),
                    TableFormInputFieldTwo(
                        areaController: section3controller.memQuesField11),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: SaveBtn(
                          pressed: () {
                            Get.toNamed('/InspectionForm4');
                          },
                        )),
                    const SizedBox(
                      height: 10,
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

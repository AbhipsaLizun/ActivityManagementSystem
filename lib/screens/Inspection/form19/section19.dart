import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../commons/color_gallery.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section19_controller.dart';

class InspectionForm19 extends StatelessWidget {
  const InspectionForm19({super.key});

  @override
  Widget build(BuildContext context) {
    Section19Controller section19controller = Get.put(Section19Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 19"),
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
                "19. ANALYSIS OF FINANCIAL STATEMENTS :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Examine the balance sheet and profit and loss account of the Society for the last two years (including as on the date of inspection) and comment on important items of the liabilities & assets and income and expenditure."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section19controller.analysisQuesOne),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Trading Account (Figures `. in lakhs)",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorGallery.headingcolor),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Scrollbar(
                    controller: section19controller.scrollControllerOne,
                    child: SingleChildScrollView(
                      controller: section19controller.scrollControllerOne,
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          columnSpacing: 15,
                          headingRowHeight: 40,
                          horizontalMargin: 10,
                          columns: const <DataColumn>[
                            DataColumn(
                                label: Expanded(
                              child: Text(
                                'Particulars',
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.normal),
                              ),
                            )),
                            DataColumn(
                                label: Expanded(
                              child: Text(
                                ' ',
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.normal),
                              ),
                            )),
                            DataColumn(
                                label: Expanded(
                              child: Text(
                                ' ',
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.normal),
                              ),
                            )),
                          ],
                          rows: <DataRow>[
                            //....Open Balance..........//
                            DataRow(
                              cells: <DataCell>[
                                const DataCell(Text(
                                  '(I) OPENING BALANCE',
                                  style: TextStyle(fontSize: 11),
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.opnBlnControllerOne,
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.opnBlnControllerTwo,
                                )),
                              ],
                            ),

                            //....PURCHASES..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                '(II) PURCHASES',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.purchaseControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.purchaseControllerTwo,
                              )),
                            ]),

                            //....TRADE CHARGES..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                '(III) TRADE CHARGES',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.chargesControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.chargesControllerTwo,
                              )),
                            ]),

                            //....GROSS PROFIT..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                '(IV) GROSS PROFIT',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.grossControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.grossControllerTwo,
                              )),
                            ]),

                            //....SALES..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                '(V) SALES',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.salesControllerone,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.salesControllerTwo,
                              )),
                            ]),

                            //....COMM. OF PADDY PROC..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                '(VI) COMM. OF PADDY PROC.',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.comControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.comControllerTwo,
                              )),
                            ]),

                            //....CLOSING BALANCE..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                '(VII) CLOSING BALANCE',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.closingBlnControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.closingBlnControllerTwo,
                              )),
                            ]),

                            //....PROFIT & LOSS A/C..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                'PROFIT & LOSS A/C',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.acControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.acControllerTwo,
                              )),
                            ]),

                            //....ACCUMULATED LOSS..........//
                            DataRow(cells: <DataCell>[
                              const DataCell(Text(
                                'ACCUMULATED LOSS',
                                style: TextStyle(fontSize: 11),
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.lossControllerOne,
                              )),
                              DataCell(TableFormInputFieldOne(
                                controller: section19controller.lossControllerTwo,
                              )),
                            ]),
                          ]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[350],
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. Comparative position of various items viz. interest paid on deposits and borrowings, interest received on investments and loans and advances, interest payable / interest receivable, cost of management including salary of officials on deputation from the Deptt. / Bank, creation of non-statutory reserves, release of reserves, in the last two years may be highlighted."),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Scrollbar(
                    controller: section19controller.scrollControllerTwo,
                    child: SingleChildScrollView(
                      controller: section19controller.scrollControllerTwo,
                      scrollDirection: Axis.horizontal,
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.grey),
                        child: DataTable(
                            showBottomBorder: true,
                            columnSpacing: 10,
                            headingRowHeight: 0,
                            horizontalMargin: 10,
                            dividerThickness: 0.0,
                            columns: const <DataColumn>[
                              DataColumn(
                                  label: Text(
                                ' ',
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.normal),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: Text(
                                  ' ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: Text(
                                  ' ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                            ],
                            rows: [
                              DataRow(cells: <DataCell>[
                                const DataCell(Text(
                                  'INT. RECEIVED ON LOAN.',
                                  style: TextStyle(fontSize: 11),
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.receiveControllerOne,
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.receiveControllerTwo,
                                )),
                              ]),
                              DataRow(cells: <DataCell>[
                                const DataCell(Text(
                                  'INTEREST PAID BORROWINGS',
                                  style: TextStyle(fontSize: 11),
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.borrowControllerOne,
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.borrowControllerTwo,
                                )),
                              ]),
                              DataRow(cells: <DataCell>[
                                const DataCell(Text(
                                  'INTEREST RECEIVED ON INVESTMENTS',
                                  style: TextStyle(fontSize: 11),
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.investControllerOne,
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.investControllerTwo,
                                )),
                              ]),
                              DataRow(cells: <DataCell>[
                                const DataCell(Text(
                                  'INTEREST PAID ON DEPOSITS',
                                  style: TextStyle(fontSize: 11),
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.depositControllerOne,
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.depositControllerTwo,
                                )),
                              ]),
                              DataRow(cells: <DataCell>[
                                const DataCell(Text(
                                  'C.O.M.',
                                  style: TextStyle(fontSize: 11),
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.controllerOne,
                                )),
                                DataCell(TableFormInputFieldOne(
                                  controller: section19controller.controllerTwo,
                                )),
                              ]),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. The accounting procedure followed, depreciation provided, accuracy of profit & loss arrived at and appropriation of profit as per Act / Rules, declaration of dividend etc. may be commented."),
              ),
              const SizedBox(
                height: 2,
              ),
              TableFormInputFieldTwo(areaController: section19controller.analysisQuesTwo),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Whether receipt and disbursement statements was prepared every month and placed before the management committee for Perusal and record?"),
              ),
              const SizedBox(
                height: 2,
              ),
              TableFormInputFieldTwo(areaController: section19controller.analysisQuesThree),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. If the society was in the loss reasons for incurring loss and steps taken to reduce / wipe out loss may be given."),
              ),
              const SizedBox(
                height: 2,
              ),
              TableFormInputFieldTwo(areaController: section19controller.analysisQuesFour),
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
                          Get.toNamed('/InspectionForm20');
                        },
                      )
                    ),
            ],
          ),
        ),
      )),
    );
  }
}

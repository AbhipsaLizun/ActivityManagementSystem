import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section6_controller.dart';

class TableInputOne extends StatelessWidget {
  const TableInputOne({super.key});

  @override
  Widget build(BuildContext context) {
     Section6Controller section6controller = Get.put(Section6Controller());
    return DataTable(
        horizontalMargin: 10,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.12,
        columns: <DataColumn>[
          const DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'II.	TYPES OF DEPOSIT',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Column(
              children: [
                const Text(
                  'AS ON \n 31.3.23',
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.depositTypeController1,
                  ),
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
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.depositTypeController2,
                  ),
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
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.depositTypeController3,
                  ),
                ),
              ],
            ),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            const DataCell(Text('1	S.B.D. A/C:')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.sbdAcController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.sbdAcController2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.sbdAcController3,
              ),
            )),
          ]),

          //.................Row2.................//
          DataRow(cells: <DataCell>[
            const DataCell(Text('2	RD A/C')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.rdAcController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.rdAcController2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.rdAcController3,
              ),
            )),
          ]),

          //................Row 3 ....................//
          DataRow(cells: <DataCell>[
             DataCell(Text('3	FD/BLD A/C')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.fdAcController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.fdAcController2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.fdAcController3,
              ),
            )),
          ]),

          //................Row 4 ....................//
          DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('TOTAL'))),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalController2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalController3,
              ),
            )),
          ]),
        ]);
  }
}

class TableInputTwo extends StatelessWidget {
  const TableInputTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Section6Controller section6controller = Get.put(Section6Controller());
    return DataTable(
        horizontalMargin: 10,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.12,
        columns: <DataColumn>[
          const DataColumn(
              label: Expanded(
            child: Text(
              'TYPES OF DEPOSIT',
              style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Column(
              children: [
                const Text(
                  'AS ON \n 31.3.23',
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.investDepositController1,
                  ),
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
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.investDepositController2,
                  ),
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
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.investDepositController3,
                  ),
                ),
              ],
            ),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            const DataCell(Text('1. DEPOSIT WITH CCB \nAS SBD A/C :')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.sbdDepositeAcController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.sbdDepositeAcController2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.sbdDepositeAcController3,
              ),
            )),
          ]),
          DataRow(cells: <DataCell>[
            const DataCell(Text('2. F.D/B.L.D.A/C')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.fdAcTable2Controller1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.fdAcTable2Controller2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.fdAcTable2Controller3,
              ),
            )),
          ]),
          DataRow(cells: <DataCell>[
            const DataCell(Text('TOTAL')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalTable2Controller1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalTable2Controller2,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalTable2Controller3,
              ),
            )),
          ]),
        ]);
  }
}

class TableInputThree extends StatelessWidget {
  const TableInputThree({super.key});

  @override
  Widget build(BuildContext context) {
    Section6Controller section6controller = Get.put(Section6Controller());
    return DataTable(
        horizontalMargin: 10,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.12,
        columns: <DataColumn>[
          const DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'II.	TYPES OF DEPOSIT',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Column(
              children: [
                const Text(
                  'AS ON \n 31.3.23',
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.depositTypeController1,
                  ),
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
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                  child: TableFormInputFieldOne(
                    controller: section6controller.depositTypeController2,
                  ),
                ),
              ],
            ),
          )),
        ],
        rows: <DataRow>[
          
          DataRow(cells: <DataCell>[
            const DataCell(Text('1. SAVING DEPOSIT')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.savingDepositController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.savingDepositController2,
              ),
            )),
          ]),

          DataRow(cells: <DataCell>[
            const DataCell(Text('2. RECURRING DEPOSIT')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.recDepositController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.recDepositController2,
              ),
            )),
          ]),

          DataRow(cells: <DataCell>[
            const DataCell(Text('3. FD/BLD DEPOSIT')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.bldDepositController1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.bldDepositController2,
              ),
            )),
          ]),
            DataRow(cells: <DataCell>[
            const DataCell(Text('3. TOTAL')),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalTable3Controller1,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: section6controller.totalTable3Controller2,
              ),
            )),
          ]),
        ]);
  }
}

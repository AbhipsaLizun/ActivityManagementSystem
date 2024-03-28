import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section16_controller.dart';

class ImbalanceTable extends StatelessWidget {
  const ImbalanceTable({super.key});

  @override
  Widget build(BuildContext context) {
    Section16Controller imblnController = Get.put(Section16Controller());
    return DataTable(
        horizontalMargin: 5,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.05,
        columns: const <DataColumn>[
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                ' ',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'BORROWINGS OF THE SOCIETY\n(LOAN PAYABLE TO CCB.)',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'LOAN OUTSTANDING\nAGINST MEMBERS',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'DIFFERENCE\n(1 – 2) / IMBALANCE',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            const DataCell(Text(
              'PRINCIPAL',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )),
            DataCell(SizedBox(
              width: 160,
              //height: 40,
              child: TableFormInputFieldTwo(
                areaController: imblnController.principalController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: imblnController.principalController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: imblnController.principalController3,
              ),
            )),
          ]),
          DataRow(cells: <DataCell>[
            const DataCell(Text(
              'INTEREST',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )),
            DataCell(SizedBox(
              width: 160,
              //height: 40,
              child: TableFormInputFieldTwo(
                areaController: imblnController.interestController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: imblnController.interestController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: imblnController.interestController3,
              ),
            )),
          ]),
          DataRow(cells: <DataCell>[
            const DataCell(Text(
              'TOTAL',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            )),
            DataCell(SizedBox(
              width: 160,
              //height: 40,
              child: TableFormInputFieldTwo(
                areaController: imblnController.totalController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: imblnController.totalController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: imblnController.totalController3,
              ),
            )),
          ]),
          // DataRow(cells: <DataCell>[
          //   const DataCell(Text(
          //     'REASONS FOR IMBALANCE:',
          //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          //   )),
          //   DataCell(SizedBox(
          //     width: 160,
          //     //height: 40,
          //     child: TableFormInputFieldTwo(
          //       areaController: imblnController.reasonController,
          //     ),
          //   )),
          //   DataCell(SizedBox(
          //     width: 160,
          //     child: Text(
          //       ' ',
          //       style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
          //     ),
          //     // TableFormInputFieldTwo(
          //     //   areaController: imblnController.totalController2,
          //     // ),
          //   )),
          //   DataCell(SizedBox(
          //     width: 160,
          //     child: Text(
          //       ' ',
          //       style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
          //     ),
          //     // TableFormInputFieldTwo(
          //     //   areaController: imblnController.totalController3,
          //     // ),
          //   )),
          //]),
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section14_controller.dart';

class OverdueTableOne extends StatelessWidget {
  const OverdueTableOne({super.key});

  @override
  Widget build(BuildContext context) {

    Section14Controller controller = Get.put(Section14Controller());

    return DataTable(
       horizontalMargin: 5,
        columnSpacing: 12,       
        headingRowHeight: ScreenSize.height(context) * 0.05,
      columns: const <DataColumn>[
         DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'YEAR',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'DEMAND',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'COLLECTION',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'BALANCE',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '% OF COLLECTION',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
      ], 
      rows: <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.yearController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.demandController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.collectionController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.balanceController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.ofBlnController1,
              ),
            )),
        ]),

        //.......Row 2............//
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.yearController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.demandController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.collectionController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.balanceController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.ofBlnController2,
              ),
            )),
        ]),

           //.......Row 3............//
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.yearController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.demandController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.collectionController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.balanceController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.ofBlnController3,
              ),
            )),
        ]),
      ]
      );
  }
}
class OverdueTableTwo extends StatelessWidget {
  const OverdueTableTwo({super.key});

  @override
  Widget build(BuildContext context) {
     Section14Controller overdueTableController = Get.put(Section14Controller());
    return DataTable(
       horizontalMargin: 5,
        columnSpacing: 12,       
        headingRowHeight: ScreenSize.height(context) * 0.05,
      columns: const <DataColumn>[
         DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'YEAR',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'DEMAND',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'COLLECTION',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'BALANCE',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '% OF COLLECTION',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
      ], 
      rows: <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.yearTableTwoController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.demandTableTwoController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.collectionTableTwoController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.balanceTableTwoController1,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.ofBlnTableTwoController1,
              ),
            )),
        ]),

        //.......Row 2............//
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.yearTableTwoController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.demandTableTwoController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.collectionTableTwoController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.balanceTableTwoController2,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.ofBlnTableTwoController2,
              ),
            )),
        ]),

           //.......Row 3............//
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.yearTableTwoController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.demandTableTwoController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.collectionTableTwoController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.balanceTableTwoController3,
              ),
            )),
              DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: overdueTableController.ofBlnTableTwoController3,
              ),
            )),
        ]),
      ]
      );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section17_controller.dart';

class ProvisionTable extends StatelessWidget {
  const ProvisionTable({super.key});

  @override
  Widget build(BuildContext context) {
    Section17Controller provisionController = Get.put(Section17Controller());
    
    return DataTable(
        horizontalMargin: 5,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.05,
        columns: const <DataColumn>[
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'AMOUNT CONSIDERED OF BAD \n& DOUBTFUL RECOVERY',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'UNDER LOANS \nAND ADVANCES (`.)',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'UNDER OTHER ASSETS (`.)',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'TOTAL (`.)',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            DataCell(SizedBox(
              width: 180,
              //height: 40,
              child: TableFormInputFieldTwo(
                areaController: provisionController.recoveryController,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: provisionController.advanceController,
              ),
            )),
            DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: provisionController.assetController,
              ),
            )),
             DataCell(SizedBox(
              width: 180,
              child: TableFormInputFieldTwo(
                areaController: provisionController.totalController,
              ),
            )),
          ]
          )
        ]);
  }
}

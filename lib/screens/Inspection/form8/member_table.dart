import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section8_controller.dart';

class MembersTable extends StatelessWidget {
  const MembersTable({super.key});

  @override
  Widget build(BuildContext context) {
     Section8Controller controller = Get.put(Section8Controller());
    return DataTable(
      horizontalMargin: 5,
        columnSpacing: 3,       
        headingRowHeight: ScreenSize.height(context) * 0.05,
      columns: const <DataColumn>[
         DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '(A) TOTAL MEMBERS OF THE SOCIETY	',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'OUT OF WHICH BORROWED MEMBERS',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'KCC ISSUED UP TO THE YEAR UNDER INSPECTION	',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'NO. OF BORROWERS YET TO BE COVERED UNDER ',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
      ], 
      rows: <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(SizedBox(
             // width: 120,
              child: TableFormInputFieldTwo(
                areaController: controller.memberController1,
              ),
            )),
             const DataCell( VerticalDivider()),
            DataCell(SizedBox(
             // width: 120,
              child: TableFormInputFieldTwo(
                areaController: controller.memberController2,
              ),
            )),
             const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              //width: 120,
              child: TableFormInputFieldTwo(
                areaController: controller.memberController3,
              ),
            )),
             const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              //width: 120,
              child: TableFormInputFieldTwo(
                areaController: controller.memberController4,
              ),
            )),
        ]
        )
      ]
      );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section8_controller.dart';

class InvestmentTable extends StatelessWidget {
  const InvestmentTable({super.key});

  @override
  Widget build(BuildContext context) {
    Section8Controller controller = Get.put(Section8Controller());
    return DataTable(
      horizontalMargin: 5,
        columnSpacing: 0,       
        headingRowHeight: ScreenSize.height(context) * 0.05,
      columns: const <DataColumn>[
         DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'SL NO.',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(label: VerticalDivider()),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
      ], 
      rows: <DataRow>[
        DataRow(cells: <DataCell>[
          const DataCell(Text("(A)",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          )),
            const DataCell( VerticalDivider()),
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController1,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController2,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController3,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController4,
              ),
            )),
            const DataCell( VerticalDivider()),
             DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController5,
              ),
            )),
        ]
        ),
        DataRow(cells: <DataCell>[
          const DataCell(Text(" ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          )),
            const DataCell( VerticalDivider()),
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController6,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController7,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController8,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController9,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController10,
              ),
            )),
        ]
        ),

        DataRow(cells: <DataCell>[
          const DataCell(Text(" ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          )),
            const DataCell( VerticalDivider()),
          DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController11,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController12,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController13,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController14,
              ),
            )),
            const DataCell( VerticalDivider()),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.investmentTableController15,
              ),
            )),
        ]
        ),

      ]
      );
  }
}
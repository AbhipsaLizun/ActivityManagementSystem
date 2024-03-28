import 'package:activity_management_system/screens/Inspection/form11/controller/section11_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';

class BankBalanceTable extends StatelessWidget {
  const BankBalanceTable({super.key});

  @override
  Widget build(BuildContext context) {
    Section11Controller controller = Get.put(Section11Controller());
    return DataTable(
        horizontalMargin: 10,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.12,
        columns: const <DataColumn>[
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'FD/BLD NO/DATE',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'AMOUNT',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'DATE OF MATURITY',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'RATE OF INTEREST',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'REMARKS',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
        ],
        rows: <DataRow>[
          //..........Row 1..............//
          DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            const DataCell(Text(' ')),
            // DataCell(SizedBox(
            //   width: 180,
            //   child: TableFormInputFieldTwo(
            //     areaController: controller.maturityController1,
            //   ),
            // )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController1,
              ),
            )),
          ]),

          //..........Row 2..............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController1,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController2,
              ),
            )),
          ]),

          //..........Row 3.............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController2,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController3,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController3,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController1,
              ),
            )),
          ]),

          //..........Row 4..............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController3,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController3,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController4,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController4,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController4,
              ),
            )),
          ]),

          //..........Row 5..............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController4,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController4,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController5,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController5,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController5,
              ),
            )),
          ]),

          //..........Row 6..............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController5,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController5,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController6,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController6,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController6,
              ),
            )),
          ]),

          //..........Row 7..............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController6,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController6,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController7,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController7,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController7,
              ),
            )),
          ]),

          //..........Row 8..............//
          DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController7,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController7,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController8,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController8,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController8,
              ),
            )),
          ]),

                   //..........Row 9..............//
           DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController8,
              ),
            )),
             DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController8,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController9,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController9,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController9 ,
              ),
            )),
        ]
        ),
                 //..........Row 10..............//
           DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController9,
              ),
            )),
             DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController9,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController10,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController10,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController10  ,
              ),
            )),
        ]
        ),
                 //..........Row 11..............//
           DataRow(cells: <DataCell>[
            // DataCell(Center(child: Text('DEPOSIT COUNTER'))),
            // DataCell(Text(' ')),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.depositController10,
              ),
            )),
             DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.amountController10,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.maturityController11,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.interestController11,
              ),
            )),
            DataCell(SizedBox(
              width: 160,
              child: TableFormInputFieldTwo(
                areaController: controller.remarkController11  ,
              ),
            )),
        ]
        ),
        ]);
  }
}

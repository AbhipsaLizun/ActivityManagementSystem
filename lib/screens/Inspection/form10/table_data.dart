import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../form3/tableform_input_field.dart';
import 'controller/section10_controller.dart';

class DataTableFormat extends StatefulWidget {
  const DataTableFormat({super.key});
  @override
  State<DataTableFormat> createState() => _DataTableFormatState();
}

class _DataTableFormatState extends State<DataTableFormat> {

  @override
  Widget build(BuildContext context) {
    Section10Controller section10controller = Get.put(Section10Controller());
    return DataTable(
      columnSpacing: 0,
     horizontalMargin: 10,
      columns: const <DataColumn>[
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'SL. No.',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
      DataColumn(
          label: VerticalDivider(
        thickness: 0.5,
      )),
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'Particulars',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
      DataColumn(
          label: VerticalDivider(
        thickness: 0.5,
      )),
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'Opening Balance',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
      DataColumn(
          label: VerticalDivider(
        thickness: 0.5,
      )),
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'Receipt',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
      DataColumn(
          label: VerticalDivider(
        thickness: 0.5,
      )),
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'Total',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
      DataColumn(
          label: VerticalDivider(
        thickness: 0.5,
      )),
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'Disposal',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
      DataColumn(
          label: VerticalDivider(
        thickness: 0.5,
      )),
      DataColumn(
          label: Expanded(
        child: Center(
          child: Text(
            'Balance',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ),
      )),
    ], rows: <DataRow>[
      //........Row 1 .........//
      DataRow(cells: <DataCell>[
        const DataCell(Text('01.')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        const DataCell(Text('UREA')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.blnController1,
          onchange: (value) {
            setState(() {});
            //DataTableFormat.balance = value;
          },
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.receiptController1,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.totalController1,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.disposalController1,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.balanceController1,
        )),
      ]),

      //........Row 2.........//
      DataRow(cells: <DataCell>[
        const DataCell(Text('02.')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        const DataCell(Text('M.O.P')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.blnController2,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.receiptController2,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.totalController2,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.disposalController2,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.balanceController2,
        )),
      ]),

      //........Row 3.........//
      DataRow(cells: <DataCell>[
        const DataCell(Text('03.')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        const DataCell(Text('D.A.P')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.blnController3,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.receiptController3,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.totalController3,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.disposalController3,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.balanceController3,
        )),
      ]),

      //........Row 4.........//
      DataRow(cells: <DataCell>[
        const DataCell(Text('04.')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        const DataCell(Text('20:20:0:13')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.blnController4,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.receiptController4,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.totalController4,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.disposalController4,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.balanceController4,
        )),
      ]),

      //........Row 5.........//
      DataRow(cells: <DataCell>[
        const DataCell(Text('05.')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        const DataCell(Text('IFFCO')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.blnController5,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.receiptController5,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.totalController5,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.disposalController5,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.balanceController5,
        )),
      ]),

      //........Row 6.........//
      DataRow(cells: <DataCell>[
        const DataCell(Text(' ')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        const DataCell(Text('TOTAL')),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.blnController6,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.receiptController6,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.totalController6,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.disposalController6,
        )),
        const DataCell(VerticalDivider(
          thickness: 0.5,
        )),
        DataCell(TableFormInputFieldOne(
          controller: section10controller.balanceController6,
        )),
      ]),
    ]);
  }
}



class TableTwo extends StatefulWidget {
  const TableTwo({super.key});

  @override
  State<TableTwo> createState() => _TableTwoState();
}

class _TableTwoState extends State<TableTwo> {
  final slNoController = TextEditingController();
  final particularController = TextEditingController();
  final opnbalanceController = TextEditingController();
  final receiptController = TextEditingController();
  final totalController = TextEditingController();
  final disposalController = TextEditingController();
  final blncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columnSpacing: 8,
        horizontalMargin: 12,
        headingTextStyle:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        columns: const <DataColumn>[
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'SL. No.',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'Particulars',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'OPENING BALANCE',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'RECEIPT',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'TOTAL',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'DISPOSAL',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'BALANCE',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
              ),
            ),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            //1
            DataCell(
              TableFormInputFieldOne(
                controller: slNoController,
              ),
            ),
            DataCell(
              TableFormInputFieldOne(
                controller: particularController,
              ),
            ),
            DataCell(
              TableFormInputFieldOne(
                controller: opnbalanceController,
              ),
            ),
            DataCell(
              TableFormInputFieldOne(
                controller: receiptController,
              ),
            ),
            DataCell(
              TableFormInputFieldOne(
                controller: totalController,
              ),
            ),
            DataCell(
              TableFormInputFieldOne(
                controller: disposalController,
              ),
            ),
            DataCell(
              TableFormInputFieldOne(
                controller: blncontroller,
              ),
            ),
          ]),
        ]);
  }
}

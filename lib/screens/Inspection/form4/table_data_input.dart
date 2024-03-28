import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../form3/tableform_input_field.dart';
import 'controller/section4_controller.dart';

class TableDataInput extends StatelessWidget {
   TableDataInput({super.key});

 final Section4Controller section4controller = Get.put(Section4Controller());

  @override
  Widget build(BuildContext context) {
    return DataTable(
        horizontalMargin: 10,
        columnSpacing: 8,
        columns: const <DataColumn>[
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'SL.No.',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
          DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'NAME & DESIGNATION',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'EDUCATIONAL QUALIFICATION',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'TRAINED/ UN-TRAINED',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'SALARY PER MONTH',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('1'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController1,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController1,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController1,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController1,
              ),
            )),
          ]),

          //.................Row2.................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('2'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController2,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController2,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController2,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController2,
              ),
            )),
          ]),

          //................Row 3 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('3'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController3,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController3,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController3,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController3,
              ),
            )),
          ]),

          //................Row 4 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('4'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController4,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController4,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController4,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController4,
              ),
            )),
          ]),

          //................Row 5 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('5'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController5,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController5,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController5,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController5,
              ),
            )),
          ]),

          //................Row 6 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('6'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController6,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController6,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController6,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController6,
              ),
            )),
          ]),

          //................Row 7 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('7'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController7,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController7,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController7,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController7,
              ),
            )),
          ]),

          //................Row 8 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('8'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController8,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController8,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController8,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController8,
              ),
            )),
          ]),

          //................Row 9 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('9'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController9,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController9,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController9,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController9,
              ),
            )),
          ]),

          //................Row 10 ....................//
           DataRow(cells: <DataCell>[
            const DataCell(Center(child: Text('10'))),
            DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.nameController10,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.educationController10,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.trainedController10,
              ),
            )),
             DataCell(SizedBox(
              width: 200,
              child: TableFormInputFieldTwo(
                areaController: section4controller.salaryController10,
              ),
            )),
          ]),



        ]);
  }
}

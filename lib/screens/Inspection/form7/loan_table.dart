import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/screensize.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section7_controller.dart';

class LoanTableInput extends StatelessWidget {
  const LoanTableInput({super.key});

  @override
  Widget build(BuildContext context) {
     Section7Controller section7controller = Get.put(Section7Controller());
    return DataTable(
       horizontalMargin: 10,
        columnSpacing: 12,
        headingRowHeight: ScreenSize.height(context) * 0.12,
      columns: <DataColumn>[
        const DataColumn(
              label: Expanded(
            child: Center(
              child: Text(
                'PURPOSE OF LOAN',
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              ),
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'During',
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 320,
                  child: TableFormInputFieldTwo(
                    areaController: section7controller.duringController1,
                  ),
                ),
              ],
            ),
          )),
           DataColumn(
              label: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'During',
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 320,
                  child: TableFormInputFieldTwo(
                    areaController: section7controller.duringController2, 
                  ),
                ),
              ],
            ),
          )),

      ], 
      rows: <DataRow>[
        //........Row..........//
        const DataRow(cells: <DataCell>[
            DataCell(Text(' ')),

            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("khariff",),
                  Text("Rabi"),
                  Text("Total"),
                ],
              ),
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("khariff"),
                  Text("Rabi"),
                  Text("Total"),
                ],
              )
            )),
        ]),

         //......Row 1..........//
        DataRow(cells: <DataCell>[
            const DataCell(Text('1) S.T. (AGRIL) PADDY',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.paddyController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.paddyController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.paddyController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.paddyController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.paddyController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.paddyController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),

        //......Row 2..........//
        DataRow(cells: <DataCell>[
            const DataCell(Text('2) S.T. (AGRIL.) SUGARCANE',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.sugarcaneController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.sugarcaneController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.sugarcaneController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.sugarcaneController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.sugarcaneController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.sugarcaneController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),

        //......Row 3.........//
        DataRow(cells: <DataCell>[
            const DataCell(Text('3) S.T. FOR OTHER AGRIL. PURPOSE',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.purposeController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.purposeController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.purposeController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.purposeController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.purposeController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.purposeController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
       
       //......Row 4.........//
       DataRow(cells: <DataCell>[
            const DataCell(Text('TOTAL',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.totalOneController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalOneController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalOneController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.totalOneController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalOneController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalOneController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
       
       //......Row 5.........//
       DataRow(cells: <DataCell>[
            const DataCell(Text('4) MEDIUM TERM LOAN',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.mediumLoanController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mediumLoanController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mediumLoanController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.mediumLoanController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mediumLoanController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mediumLoanController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
        //......Row 6.........//
      DataRow(cells: <DataCell>[
            const DataCell(Text('5) CONSUMPTION LOAN',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.consumptionLoanController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.consumptionLoanController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.consumptionLoanController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.consumptionLoanController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.consumptionLoanController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.consumptionLoanController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
       
       //......Row 7.........//
       DataRow(cells: <DataCell>[
             const DataCell(Text('6) S.H.G. LOAN',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.loanController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.loanController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.loanController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.loanController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.loanController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.loanController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
       
       //......Row 8.........//
       DataRow(cells: <DataCell>[
            const DataCell(Text('7) M.T. (CONVERSION)',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.mtController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mtController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mtController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.mtController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mtController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.mtController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
      
      //......Row 9.........//
       DataRow(cells: <DataCell>[
            const DataCell(Text('8) OTHERS',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.othersController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.othersController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.othersController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.othersController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.othersController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.othersController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
      //......Row 10.........//
      DataRow(cells: <DataCell>[
            const DataCell(Text('TOTAL',
            style: TextStyle(fontSize: 12),)),
            DataCell(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.totalTwoController1,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalTwoController2,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalTwoController3,
                                   ),
                   ),
                 ),
              ],
            )),
            DataCell(SizedBox(
              //width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: SizedBox(
                    width: 100,
                    child: TableFormInputFieldOne(
                      controller: section7controller.totalTwoController4,
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalTwoController5,
                                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 3),
                   child: SizedBox(
                    width: 100,
                     child: TableFormInputFieldOne(
                      controller: section7controller.totalTwoController6,
                                   ),
                   ),
                 ),
                 
                ],
              ),
            )),
          ]),
  
      ]);
  }
}
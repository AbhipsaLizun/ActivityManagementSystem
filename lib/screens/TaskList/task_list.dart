import 'package:activity_management_system/screens/Inspection/form2/title.dart';
import 'package:flutter/material.dart';


class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  final List<Map<String, dynamic>> tableData = [
    {'Serial no.': 'John', 'Job task': 25, 'City': 'New York'},
    {'Serial no': 'Emily', 'Job task': 30, 'City': 'London'},
    {'Serial no': 'Michael', 'Job task': 35, 'City': 'Paris'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarText(
        context, 
        "My Task List"
        ),
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
              
                    Table(
                          border: TableBorder.all(color: Colors.black),
                          children:  [
                            const TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('Serial no.')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('Job Task')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('Status')),
                              ),
                            ]),
                            TableRow(children: [
                            //  Container(
                            //   height: 25,
                            //   decoration: BoxDecoration(
                            //     color: Colors.amber,
                            //     borderRadius: BorderRadius.circular(8)
                            //   ),
                            //  ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(' 1'),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text('Inspection of Co-operative Institutions'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 3),
                                  decoration: BoxDecoration(color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8)),
                                  
                                  child: const Center(child: Text('OnGoing',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                              ),
                            ]),
                             TableRow(children: [
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(' 2'),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text('Execution of E.P. Cases'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 3),
                                  decoration: BoxDecoration(color: Colors.green,
                                  borderRadius: BorderRadius.circular(8)),
                                  
                                  child: const Center(child: Text('Completed',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                              ),
                            ])
                          ],
                        ),
                      // SizedBox(
                      //   height: 100,
                      //   child: ScrollableTableView(
                      //   headers: [
                      //     "product_id",
                      //     "product_name",
                      //     "price",
                      //   ].map((label) {
                      //     return TableViewHeader(
                      //       label: label,
                      //     );
                      //   }).toList(),
                      //   rows: [
                      //     ["PR1000", "Milk", "20.00"],
                      //     ["PR1001", "Soap", "10.00"],
                      //   ].map((record) {
                      //     return TableViewRow(
                      //       height: 60,
                      //       cells: record.map((value) {
                      //         return TableViewCell(
                      //           child: Text(value),
                      //         );
                      //       }).toList(),
                      //     );
                      //   }).toList(),
                      // ),
                      // ),   
                  ],
                ),
              ),
            ),
          )
          ),
    );
  }
}
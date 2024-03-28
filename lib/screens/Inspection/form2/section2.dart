import 'package:activity_management_system/screens/Inspection/form2/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import 'controller/section2_controller.dart';

class InspectionForm2 extends StatelessWidget {
  const InspectionForm2({super.key});

  @override
  Widget build(BuildContext context) {
    Section2Controller section2controller = Get.put(Section2Controller());

    var fieldmargin = const EdgeInsets.symmetric(vertical: 5);
    return Scaffold(
      appBar: Appbar(context, "SECTION 2"),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(12, 10, 12, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "2. SHARE CAPITAL :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12)),
                        child: Scrollbar(
                          controller: section2controller.scrollController,
                          child: SingleChildScrollView(
                            controller: section2controller.scrollController,
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              columnSpacing: 20,
                              columns: const <DataColumn>[
                                DataColumn(
                                  label: Expanded(
                                    child: Text(
                                      'Particulars',
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Center(
                                      child: Text(
                                        'AS ON \n31.3.2010',
                                        style: TextStyle(
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Center(
                                      child: Text(
                                        'AS ON \n31.3.2010',
                                        style: TextStyle(
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Center(
                                      child: Text(
                                        'AS ON \n31.3.2010',
                                        style: TextStyle(
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Center(
                                      child: Text(
                                        '% OF GROWTH \nOVER LAST YEAR',
                                        style: TextStyle(
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: <DataRow>[
                                //..............Row 1 ...............//
                                DataRow(
                                  cells: <DataCell>[
                                    const DataCell(Text('(a) Members Share')),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .mShareController1,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .mShareController2,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .mShareController3,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .mShareController4,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                                //..............Row 2 ...............//
                                DataRow(
                                  cells: <DataCell>[
                                    const DataCell(Text('(b) Govt. Share')),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .gShareController1,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .gShareController2,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .gShareController3,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .gShareController4,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                                //..............Row 3 ...............//
                                DataRow(
                                  cells: <DataCell>[
                                    const DataCell(Text('Total')),
                                    DataCell(Container(
                                      width: 120,
                                      // height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .totalController1,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .totalController2,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .totalController3,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                    DataCell(Container(
                                      width: 120,
                                      height: 40,
                                      margin: fieldmargin,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: section2controller
                                              .totalController4,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    //...........Condition Row 1............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ConditionHeading(
                            conText:
                                "If the Society had been stated partnered, the amount of contribution partnered, the amount of contribution received from the Govt. as on the date of inspection may be given.",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section2controller.textController1,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //...........Condition Row 2............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: const ConditionHeading(
                            conText:
                                "Was there any delay in receipt of State Govt. Share Capital?",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section2controller.textController2,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //...........Condition Row 3............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ConditionHeading(
                            conText:
                                "What is the purpose for which the amount was utilized and was there any deviation in utilizing the same?",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section2controller.textController3,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //...........Condition Row 4............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ConditionHeading(
                            conText:
                                "Comment on the effect of State Govt. partnership on the working of the Society.",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section2controller.textController4,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //...........Condition Row 5............//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u2022',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ConditionHeading(
                            conText:
                                "Increase  in Share Capital  with reference to share linking with issue of fresh loans may also be examined and commented.",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 80,
                          child: FormInputField(
                            fieldController: section2controller.textController5,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: SaveBtn(
                          pressed: () {
                            Get.toNamed('/InspectionForm3');
                          },
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

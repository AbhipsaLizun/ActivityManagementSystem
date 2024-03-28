import 'package:activity_management_system/constants/screensize.dart';
import 'package:activity_management_system/model/document_list.dart';
import 'package:activity_management_system/screens/Inspection/form2/title.dart';
import 'package:activity_management_system/screens/my_task/controller/task_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_dropdown.dart';

class AssignTaskScreen extends StatelessWidget {
  const AssignTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TaskContoller controller = Get.put(TaskContoller());

    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBarText(
          context,
          " Assign Task",
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 20,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Job Task",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: controller.containerHeight.value,
                          padding: const EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5,
                                  color: const Color.fromARGB(
                                      255, 128, 127, 127))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              items: controller.categoryList.map((list) {
                                return DropdownMenuItem(
                                  value: list.toString(),
                                  child: Text(
                                    list.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                controller.dropdownvalue.value = value!;
                              },
                              hint: Row(
                                children: [
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Obx(
                                      () => Text(
                                        controller.dropdownvalue.toString(),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: controller.spaceHeight.value,
                        ),
                        Text(
                          "Expected Date Of Completion",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          //height: containerHeight,
                          padding: const EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: Border.all(
                                width: 0.5,
                                color:
                                    const Color.fromARGB(255, 128, 127, 127)),
                          ),
                          child: TextFormField(
                            controller: controller.dateController,
                            readOnly: true,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600, fontSize: 15),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 8, bottom: 10, top: 0, right: 15),
                                hintText: "Choose Date",
                                suffixIcon: Icon(
                                  Icons.calendar_month,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                            onTap: () {
                              controller.selectDate();
                            },
                          ),
                        ),
                        SizedBox(
                          height: controller.spaceHeight.value,
                        ),
                      ])),
              Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Document Details",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    //.....Add btn.........................//
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, left: 8, bottom: 0, right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            controller.documentList.add(DocumentList(
                                docName: '',
                                uploadDocName: '',
                                filePath: null));
                            // documentList.add(data(0));
                          },
                          child: Container(
                            //height: 40,
                            width: 65,
                            decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "+ ",
                                    style: GoogleFonts.lato(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: "Add ",
                                    style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.only(top: 5, left: 8, bottom: 0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => ListView.builder(
                          key: Key(controller.documentList.length.toString()),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.documentList.length,
                          itemBuilder: (context, index) {
                            return data(index, controller);
                          }),
                    ),

                    SizedBox(
                      height: controller.spaceHeight.value,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, left: 15, bottom: 0, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Remark",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(width: 0.5)),
                            child: TextFormField(
                              controller: controller.remarkController,
                              maxLines: null,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(3),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: ScreenSize.height(context) * 0.10,
                    ),
                    //...........Buttons........................//
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  textStyle: const TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                child: Text(
                                  "Cancel",
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  // ignore: unrelated_type_equality_checks
                                  if (controller.dropdownvalue ==
                                      "Inspection of Co-operative Institutions") {
                                    //Get.to(() => InspectionForm1());
                                    Get.toNamed('/InspectionForm1');
                                  } else {}
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  textStyle: const TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                child: Obx(
                                  () => Text(
                                    // ignore: unrelated_type_equality_checks
                                    controller.dropdownvalue ==
                                            "Inspection of Co-operative Institutions"
                                        ? "Go to Inspection form"
                                        : "Submit",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              //   ],
              //   ),
              // ),
            ],
          ),
        )),
      ),
    );
  }

  data(int index, TaskContoller controller) {
    return Card(
      elevation: 1,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Visibility(
              visible: index > 0 ? true : false,
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    //setState(() {
                    //log("remove index "+index.toString());
                    controller.documentList.removeAt(index);

                    //});
                  },
                  child: const Icon(
                    Icons.cancel_rounded,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ),
            ),

            Text(
              "Document Name :",
              textAlign: TextAlign.start,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 0.5)),
                height: controller.containerHeight.value,
                child: TextFormField(
                  initialValue: controller.documentList[index].docName,
                  onChanged: (value) {
                    controller.documentList[index].docName = value;
                  },
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(
                          left: 8, bottom: 15, top: 12, right: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
              ),
            ),
            SizedBox(
              height: controller.spaceHeight.value,
            ),

            //...........Upload Documents................//
            Text(
              "Upload Document :",
              textAlign: TextAlign.end,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const SizedBox(
              height: 8,
            ),

            Obx(
              () => Container(
                height: controller.containerHeight.value,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 0.5)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 110,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(5),
                              backgroundColor: Colors.blue[400],
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ))),
                          onPressed: () async {
                            //log("INDEX  "+ index.toString());
                            controller.filepicker(index);
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Choose file",
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  letterSpacing: 0.5,
                                  color: Colors.white),
                            ),
                          )),
                    ),
                    Obx(
                      () => Expanded(
                        child: SizedBox(
                          // height: containerHeight,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                                controller.documentList[index].uploadDocName),
                          ),

                          // Text(

                          //  )
                          //     TextFormField(
                          //  //     controller: docNameController,
                          // //  initialValue: documentList[index].uploadDocName,
                          //   // onChanged: (value) {
                          //   //   documentList[index].uploadDocName = value;
                          //   //   setState(() {});
                          //   // },

                          //   /// controller: uploadDocController,
                          //   // readOnly: true,
                          //   // enabled: false,
                          //   style: const TextStyle(
                          //     fontSize: 14,
                          //     fontWeight: FontWeight.w500,
                          //     color: Colors.black87,
                          //   ),
                          //   decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       // hintText: "no",
                          //       contentPadding: const EdgeInsets.only(
                          //           left: 8, bottom: 15, top: 12, right: 15),
                          //       focusedBorder: OutlineInputBorder()),
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> _selectFile(
  //     int index, TextEditingController docNameController) async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     File file = File(result.files.single.path!);
  //     String fileName = result.files.first.name;

  //     documentList[index].uploadDocName = fileName.toString();
  //     documentList[index].filePath = file;

  //     log("name: " + documentList[index].uploadDocName);
  //     log("file: " + documentList[index].filePath.toString());

  //     setState(() {});
  //   } else {
  //     // User canceled the picker
  //   }
  // }

  // createController(int index) {
  //   //docController
  //    for (var i = 0; i < documentList.length; i++) {
  //             docController.add(TextEditingController());
  //             //uploadDocList.add(fileName);

  //           }

  // }
}

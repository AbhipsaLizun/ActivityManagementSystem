import 'package:activity_management_system/screens/Inspection/form2/title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InspectionForm22 extends StatefulWidget {
  const InspectionForm22({super.key});

  @override
  State<InspectionForm22> createState() => _InspectionForm22State();
}

class _InspectionForm22State extends State<InspectionForm22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        context, 
      "SECTION 22"
      ),
      bottomNavigationBar: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              // flex: 2,
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              //flex: 3,
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    textStyle: const TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  child: Text(
                                    "Final Submit",
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
                height: 12,
              ),
              Text(
                "22. OTHER ASPECTS :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
               // height: ScreenSize.height(context) * 0.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(width: 0.5)),
                            child: TextFormField(
                              //controller: remarkController,
                              maxLines: null,
                              decoration:  const InputDecoration(
                                contentPadding: EdgeInsets.all(3),
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)
                                )
                              ),
                            ),
                          ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
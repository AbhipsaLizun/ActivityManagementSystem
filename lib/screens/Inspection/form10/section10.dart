import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../commons/color_gallery.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form2/title.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section10_controller.dart';
import 'table_data.dart';

class InspectionForm10 extends StatelessWidget {
  const InspectionForm10({super.key});

  @override
  Widget build(BuildContext context) {
    Section10Controller section10controller = Get.put(Section10Controller());
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: Appbar(context, "SECTION 10"),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                "10. OTHER BUSINESS / SERVICES :",
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "I. Did the Society undertake any other activity such as fertilizer distribution, consumer goods etc. besides loaning??"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController1),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "II. If it had borrowed from the Bank for the above purpose, whether it had adhered to the terms and conditions stipulated by the Bank?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController2),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "III. Whether it was maintaining separate accounts for such business to judge the profitability of each activity? Indicate the income and expenditure of the Society in the business of these activities during the last three years."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController3),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "IV. Indicate the extent of agricultural inputs and consumer goods handled during the period covered under inspection."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController4),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                //height: 45,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text(
                        "(a). Comment on the adequacy of",
                        style: TextStyle(
                            color: ColorGallery.headingcolor, fontSize: 13),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TableFormInputFieldOne(controller: section10controller.yearController)
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Scrollbar(
                      controller: section10controller.scrollController1,
                      child: SingleChildScrollView(
                          controller: section10controller.scrollController1,
                          scrollDirection: Axis.horizontal,

                          //............Table............//
                          child: const DataTableFormat())),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Text(
                  "b) Consumer Activities :",
                  style:
                      TextStyle(color: ColorGallery.headingcolor, fontSize: 13),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Scrollbar(
                    controller: section10controller.scrollController2,
                    child: SingleChildScrollView(
                      controller: section10controller.scrollController2,
                      scrollDirection: Axis.horizontal,
                      child: const TableTwo(),
                    )
                  ),
                ),
              ),


              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "V. Verify physically the stock of agricultural inputs / consumer goods and offers comments."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController5),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VI. Whether the Society made adequate arrangements for storage of Agricultural inputs/ consumer goods?"),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController6),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "VII. Comment on provisions of farm machineries/ implements on hire, technical personnel, if any, to the farmers as a multi purpose Society (FSS)."),
              ),
              const SizedBox(
                height: 5,
              ),
              TableFormInputFieldTwo(areaController: section10controller.businessController7),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm11');
                        },
                      )
                    )

            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/screensize.dart';
import '../../../widgets/buttons.dart';
import '../form1/form_input_field.dart';
import '../form3/tableform_input_field.dart';
import 'controller/section8_controller.dart';

class InspectionForm8SecondPage extends StatelessWidget {
  const InspectionForm8SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Section8Controller controller = Get.put(Section8Controller());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              const Text(
                "C. PRODUCE PLEDGE ADVANCES:-",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "If the Society had granted advances against the pledge of agril. produce; bring out discrepancies, if any, regarding the following aspects with instances."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController1),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(i) Advances/stocks outstanding for more than twelve months."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController2),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(ii) Deficiencies in godown facilities where the stocks were stored."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController3),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(iii) Non-receipt of stock statements from the borrowers."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController4),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(iv) Periodically verification of stocks by the staff of the Society."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController5),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(v) Insurance of produce pledged."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController6),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(vi) Quantum of Loan amount exceeding Rs.5.00 lakhs per borrower and the quantum of produce pledged is not in keeping with the borrowers’ land holdings."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController7),
              const SizedBox(
                height: 15,
              ),
                  const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(vii) Mis-utilisation of the facilities by traders / businessmen, if any."),
              ),
              const SizedBox(
                height: 8,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.pedgeController8),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "D. MEDIUM TERM LOANS:",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

                  const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(i) Examine the LT loans granted by the Society to the members and bring out deficiencies, if any in the procedure followed in the disbursement of loans."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController1),
              const SizedBox(
                height: 15,
              ),
                  const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(ii) Comment on various NFS. Activities finance, if any, with details."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController2),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(iii) Verification of utilization of loans by the MD/supervisor and submission of utilization statements/certificates to the DCCB may be commented upon."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController3),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(iv) Verify the loan utilization of few MT loans through field visits and bring out the deficiencies/mis-utilisation, if any, wherever possible."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController4),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(v) Comment on the procedures followed in grant of MT(C) loan. Whether the benefits were given to the loan account of borrowing members promptly?"),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController5),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(vi) MT(C) granted to any in-eligible member, with reference to village-wise annawari certificates and members loan ledgers may be highlighted."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController6),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(vii)Whether the adjustment of subsidy amount, if any, received from DRDA. In respect of beneficiaries covered under SGSY was in order and according to the instructions? Loan accounts that were closed prematurely (within three months) and adjustment of subsidy of such cases may be highlighted."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController7),
              const SizedBox(
                height: 15,
              ),
               const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(viii) Role of Society in promoting SHGs. And extension of credit facility to such groups, if any may be given."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController8),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(ix)  Examine S.T. and M.T. loan disbursement statement sent to the bank with reference to the relative loan applications, cash book and loan registers and bring out the discrepancies/irregularities if any noticed with instances."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController9),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                //height: 45,
                child: ConditionHeading(
                    conText:
                        "(x) Examine the loan documents obtained by the Society from the borrowers for ST and MT loans and comment whether they were in order or whether there were any time-barred promissory notes."),
              ),
              const SizedBox(
                height: 10,
              ),
              TableFormInputFieldTwo(
                  areaController: controller.mediumTermLoanController10),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                      height: ScreenSize.height(context) * 0.05,
                    ),
                    Align(
                      alignment: Alignment.center,
                       child: SaveBtn(
                        pressed: () {
                          Get.toNamed('/InspectionForm9');
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

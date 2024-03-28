import 'package:activity_management_system/commons/color_gallery.dart';
import 'package:activity_management_system/constants/screensize.dart';
import 'package:activity_management_system/screens/TaskList/task_list.dart';
import 'package:activity_management_system/screens/dashboard/controller/dashboard_controller.dart';
import 'package:activity_management_system/screens/dashboard/graph_status.dart';
import 'package:activity_management_system/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'analysis.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  //bool _customTileExpanded = false;
  String? userName;

  //final user

  TooltipBehavior? _tooltipBehavior;

  final List<ChartData1> barData = [
    ChartData1('Jan', 52, Colors.blue),
    ChartData1('Feb', 30, const Color.fromARGB(255, 255, 166, 0)),
    ChartData1('Mar', 45, Colors.blue),
    ChartData1('Apr', 12, const Color.fromARGB(255, 255, 166, 0)),
    ChartData1('May', 66, Colors.blue),
    ChartData1('Jun', 25, const Color.fromARGB(255, 255, 166, 0)),
    ChartData1('Jul', 71, Colors.blue),
    ChartData1('Aug', 15, const Color.fromARGB(255, 255, 166, 0)),
    ChartData1('Sep', 28, Colors.blue),
    ChartData1('Oct', 36, const Color.fromARGB(255, 255, 166, 0)),
    ChartData1('Nov', 43, Colors.blue),
    ChartData1('Dec', 56, const Color.fromARGB(255, 255, 166, 0)),
  ];
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    userLogin();
    super.initState();
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.put(DashboardController());
    return WillPopScope(
      onWillPop: () { 
        Navigator.pop(context, "back pressed"); //YESSSS
          return Future.value(false);
       },
      child: Scaffold(
        key: _key,
        drawer: drawerOpen(controller),
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          leading: InkWell(
            child: const SizedBox(height: 20, width: 20, child: Icon(Icons.menu)),
            onTap: () {
              _key.currentState!.openDrawer();
            },
          ),
          actions:   [
            const Padding(padding: EdgeInsets.only(right: 15),
            child: Text('Inspector',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),),),
            GestureDetector(
              onTap: () {
                 logoutDialog();
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.logout),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                   SizedBox(
                    height: ScreenSize.height(context) * 0.65, 
                    child: const AnalysisScreen()),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 4),
                    child: Card(
                      shadowColor: Colors.grey,
                      elevation: 2,
                      child: Container(
                        alignment: Alignment.center,
                        // margin: const EdgeInsets.fromLTRB(12, 10, 12, 4),
                        color: Colors.grey[200],
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  "Work Overview",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  //textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                          //......graph status................//
                              const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      GraphStatus(
                                          avtarColor: Colors.blue,
                                          text: "Completed"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      GraphStatus(
                                          avtarColor:
                                              Color.fromARGB(255, 255, 166, 0),
                                          text: "Pending"),
                                    ],
                                  )
                                  ),
                              const SizedBox(
                                height: 10,
                              ),
                           //........Bar graph .........//
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SfCartesianChart(
                                    margin: const EdgeInsets.only(top: 0),
                                    backgroundColor: Colors.grey[200],
                                    //borderColor: Colors.black,
                                    tooltipBehavior: _tooltipBehavior,
                                    enableAxisAnimation: true,
                                    plotAreaBorderWidth: 1,
                                    primaryXAxis: CategoryAxis(
                                      majorGridLines:
                                          const MajorGridLines(width: 1),
                                      axisLine: const AxisLine(width: 1),
                                    ),
                                    primaryYAxis: NumericAxis(
                                        // isVisible: true,
                                        // //anchorRangeToVisiblePoints: true,
                                        // labelStyle: const TextStyle(fontSize: 0),
                                        // majorGridLines: const MajorGridLines(width: 1),
                                        // axisLine: const AxisLine(width: 2)
                                        ),
                                    series: <ChartSeries<ChartData1, String>>[
                                      // Renders column chart
                                      ColumnSeries<ChartData1, String>(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5)),
                                          dataSource: barData,
                                          pointColorMapper:
                                              (ChartData1 data, _) => data.color1,
                                          xValueMapper: (ChartData1 data, _) =>
                                              data.x1,
                                          yValueMapper: (ChartData1 data, _) =>
                                              data.y1)
                                    ]),
                              )
                            
                            
                            
                            ]),
                      ),
                    ),
                  ),
    
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    elevation: 2,
                    child:  const VisitorData(
                      visitors: '24.12M', 
                      visitorsPercent: '2.43 %', 
                      boxcolor: Color.fromARGB(255, 178, 186, 234), 
                      title: 'Overall Visitor',
    
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    elevation: 2,
                    child:  const VisitorData(
                      visitors: '12:38', 
                      visitorsPercent: '12.65 %', 
                      boxcolor: Color.fromARGB(255, 247, 210, 147), 
                      title: 'Visitor Duration',
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    elevation: 2,
                    child:  const VisitorData(
                      visitors: '639.82', 
                      visitorsPercent: '5.62%', 
                      boxcolor: Color.fromARGB(255, 115, 193, 127), 
                      title: 'Pages/Visit',
    
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  drawerOpen(DashboardController controller) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.58,
      color: Colors.blue,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.3)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/images/seal_of_odisha.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Co-operation \nDepartment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text(
                "Assign Task",
                style:
                    TextStyle(fontSize: 12, color: ColorGallery.textColorwhite),
              ),
              leading: Icon(
                Icons.task_alt_rounded,
                color: ColorGallery.iconColorwhite,
              ),
              trailing: Obx(

                ()=> Icon(
                 // ignore: unrelated_type_equality_checks
                 controller.customTileExpanded == 0
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_down,
                  color: ColorGallery.iconColorwhite,
                ),
              ),
              onExpansionChanged: (value) {
                controller.onExpansion(); 
                // setState(() {
                //   _customTileExpanded = !_customTileExpanded;
                // });
              },
              childrenPadding: const EdgeInsets.only(
                left: 40,
              ),
              children: [
                ListTile(
                  title: Text(
                    "My Task",
                    style: TextStyle(
                        fontSize: 12, color: ColorGallery.textColorwhite),
                  ),
                  onTap: () {
                    //Get.to(()=>  const AssignTaskScreen());
                    Get.toNamed('/AssignTaskScreen');
                    //Get.toNamed('/InspectionForm10');
                  },
                ),
                ListTile(
                  title: Text(
                    "My Task List",
                    style: TextStyle(
                        fontSize: 12, color: ColorGallery.textColorwhite),
                  ),
                  onTap: () {
                     Get.to(()=> const TaskList());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  
  void userLogin() async{
     final prefs = await SharedPreferences.getInstance();
     userName = prefs.getString('LoggerName') ?? " ";
     //log("name "+ userName.toString());

  }
  
  void logoutDialog() {
     showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        barrierColor: const Color.fromARGB(162, 0, 0, 0),
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: SizedBox(
              height: 180,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Logout",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Are you sure, you want to logout?",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const SizedBox(
                            width: 55,
                            height: 30,
                            //color: Colors.amber,
                            child: Center(
                              child: Text(
                                "No",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        InkWell(
                          onTap: () async {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WelcomePage()),
                                  (Route<dynamic> route) => route is DashboardScreen);
                              //dataVisibility();
                            
                          },
                          child: const SizedBox(
                            width: 55,
                            height: 30,
                            child: Center(
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class ChartData1 {
  ChartData1(this.x1, this.y1, this.color1);
  final String x1;
  final double y1;
  final Color color1;
}

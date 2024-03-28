import 'package:activity_management_system/commons/color_gallery.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AnalysisData {
 late final String title, text, data;
 late final Icon dataIcon;
 //late Color iconColor;
 
   AnalysisData({
    required this.title,
    required this.text,
    required this.data,
    required this.dataIcon,
    //required this.iconColor,
    
  });
}


final List<AnalysisData> dataList = [
  AnalysisData(
      title: "Society Registered",
      text: "from last week",
      data: "405",
      dataIcon: Icon(Icons.bar_chart, color: ColorGallery.iconColorwhite,),
     // iconColor: Colors.blue,
     ),
  AnalysisData(
      title: "Society Inspected",
      text: "from last week",
      data: "245",
      dataIcon: Icon(Icons.bar_chart, color: ColorGallery.iconColorwhite,),
     // iconColor: Colors.yellow,
     ),
  AnalysisData(
      title: "Society liquidated",
      text: "from last week",
      data: "160",
      dataIcon: Icon(Icons.bar_chart, color: ColorGallery.iconColorwhite,),
      //iconColor: Colors.green,
      ),
  AnalysisData(
      title: "EP Cases Executed",
      text: "from last week",
      data: "84",
      dataIcon: Icon(Icons.bar_chart, color: ColorGallery.iconColorwhite,),
      //iconColor: Colors.pink,
      ),
       AnalysisData(
      title: "Enquiries Conducted",
      text: "from last week",
      data: "203",
      dataIcon: Icon(Icons.bar_chart, color: ColorGallery.iconColorwhite),
      //iconColor: const Color.fromARGB(255, 255, 170, 0),
      ),
       AnalysisData(
      title: "Dispute Adjudicated",
      text: "from last week",
      data: "120",
      dataIcon: Icon(Icons.bar_chart, color: ColorGallery.iconColorwhite),
      //iconColor: Colors.blue,
      ),
];




class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        
        child: MediaQuery.removePadding(
          context: context,
           removeTop: true,
          child: GridView.builder(
          itemCount: dataList.length,
           physics: const BouncingScrollPhysics(
                    parent: NeverScrollableScrollPhysics()),
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.1,
                ),
            itemBuilder: (context, index) => AnalysisContent(
              title: dataList[index].title,
              text: dataList[index].text,
              data: dataList[index].data,
              dataIcon: dataList[index].dataIcon,
              )
            ),
        ),
      ),
    );
  }
}




class AnalysisContent extends StatefulWidget {
  const AnalysisContent({super.key, required this.title, required this.text, required this.data, required this.dataIcon});
    final String title, text, data;
  final Icon dataIcon;

  @override
  State<AnalysisContent> createState() => _AnalysisContentState();
}

class _AnalysisContentState extends State<AnalysisContent> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 120,
          child: Card(
             elevation: 3,
           
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                     borderRadius: BorderRadius.circular(10)
                  ),
                  //padding: EdgeInsets.only(left: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,  
                          width: 40,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: 
                            [
                              Colors.pink,
                              Colors.pink.withOpacity(0.3)
                            ]
                            )
                         ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: widget.dataIcon,
                            
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ), 
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.data,
                            style: const TextStyle(color: Colors.blue, fontSize: 25),),
                            const SizedBox(
                          height: 10,
                        ), 
                             Text(widget.text,
                            style: const TextStyle(color: Colors.black, fontSize: 13),),
                      
                          
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),

        Text(widget.title,
        style: GoogleFonts.roboto(color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14)
        ),
      ],
    );
  }
}


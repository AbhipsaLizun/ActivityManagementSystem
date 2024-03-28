import 'package:flutter/material.dart';

class GraphStatus extends StatelessWidget {
  const GraphStatus({super.key, required this.avtarColor, required this.text});
  final Color avtarColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 5,
              backgroundColor: avtarColor,
            ), 
            const SizedBox(
              width: 5,
            ),
            Text(text, 
            style: const TextStyle(
              fontSize: 12
            ),)
          ],
        ),
      ),
    );
  }
}

class VisitorData extends StatefulWidget {
  const VisitorData({super.key, required this.visitorsPercent, required this.visitors, required this.boxcolor, required this.title});
  final String visitorsPercent;
  final String visitors;
  final String title;
  final Color boxcolor;

  @override
  State<VisitorData> createState() => _VisitorDataState();
}

class _VisitorDataState extends State<VisitorData> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  BoxDecoration(
          color: Colors.black.withOpacity(0.4),
         //border: Border(left: BorderSide()),
          borderRadius: const BorderRadius.only(topRight: Radius.circular(50),
          bottomRight: Radius.circular(50), bottomLeft: Radius.circular(5),)
        ),
      child: Padding(
        padding: const EdgeInsets.only(left: 3,bottom: 4),
        child: Container(
          height: 50,
          decoration:  BoxDecoration(
            color: widget.boxcolor,
            //color: Color.fromARGB(255, 178, 186, 234),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(50),
            bottomRight: Radius.circular(50), bottomLeft: Radius.circular(0),)
          ),
          child:  Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                     Text(widget.title),
                    Row(
                      children: [
                        const Icon(Icons.arrow_upward,
                        size: 15,
                        color: Colors.red,),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(widget.visitorsPercent,
                        style: const TextStyle(fontSize: 13),)
                      ],
                    ),
                  ],
                ),
                 Text(widget.visitors,
                     style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18
                     ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
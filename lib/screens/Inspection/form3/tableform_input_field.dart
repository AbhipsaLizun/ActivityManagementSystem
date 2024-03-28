import 'package:flutter/material.dart';

class TableFormInputFieldOne extends StatelessWidget {
  const TableFormInputFieldOne({super.key, required this.controller, this.onchange});

  final TextEditingController controller;
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    var fieldmargin = const EdgeInsets.symmetric(vertical: 5);
    return Container(
      width: 120,
      height: 40,
      margin: fieldmargin,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        maxLines: 1,
        style: const TextStyle(fontSize: 12),
        controller: controller,
        onChanged: onchange,
        decoration: const InputDecoration(
          border: InputBorder.none,
          //isDense: true,
          contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)
          )
        ),
      ),
    );
  }
}

class TableFormInputFieldTwo extends StatelessWidget {
  const TableFormInputFieldTwo({super.key, required this.areaController,  this.hintText});

   final TextEditingController areaController;
   final String? hintText;

  @override
  Widget build(BuildContext context) {
    //var fieldmargin = const EdgeInsets.symmetric(vertical: 5);
    return Container(     
      //width: 120,
       height: 35,
       //margin: fieldmargin,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child:  
      TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 13),
        controller: areaController,
        decoration:  InputDecoration(
          //isCollapsed: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400]
          ),
         // isDense: true,
          contentPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none
          )
        ),
      ),
     
    );
  }
}

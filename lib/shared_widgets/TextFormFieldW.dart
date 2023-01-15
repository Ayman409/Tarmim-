import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:get/get.dart';

class TextFormFieldW extends StatefulWidget {
  final TextInputType textInputType;
  final TextEditingController controller;
  final String hintText;
  final String icon;
  TextFormFieldW(
      {required this.textInputType,
      required this.controller,
      required this.hintText,
      required this.icon
});
  @override
  _TextFormFieldWState createState() => _TextFormFieldWState();
}

class _TextFormFieldWState extends State<TextFormFieldW> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width ,
      decoration: BoxDecoration(
          // border: Border.all(color: Color.fromRGBO(193, 194, 202, 1.0)),
          borderRadius: BorderRadius.circular(18),
          color: whiteColor),
      height: 50,
      child: Row(

        children: <Widget>[
         const SizedBox(width: 8,),
    Image.asset("${widget.icon}" , width: 20,height: 20,),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Color.fromRGBO(193, 194, 202, 1.0)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                style: hintTextFieldStyle,
                keyboardType: widget.textInputType,
                controller: widget.controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                      right: 16.0, top: 0.0, left: 16, bottom: 0),
                  hintText: widget.hintText,
                  hintStyle: hintTextFieldStyle,
                  errorStyle: TextStyle(
                      fontSize: 14.0, color: Colors.red, fontFamily: 'Tajawal'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

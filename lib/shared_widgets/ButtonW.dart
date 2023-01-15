// ignore_for_file: must_be_immutable

import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';

class ButtonW extends StatelessWidget {
  String buttonName;

  double width;
  double height;
  VoidCallback function;
  ButtonW(
      {required this.buttonName,
      required this.height,
      required this.width,
      required this.function,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: yellowPrimaryColor,
          borderRadius: BorderRadius.circular(38),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Text(
                  buttonName,
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

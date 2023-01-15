import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EachPage extends StatelessWidget {

  final String message;
  final String image;

  EachPage(this.message, this.image);

  @override
  Widget build(BuildContext context) {

    return  Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  image,
                  fit: BoxFit.scaleDown,
                  width: 270,
                  height: Get.height/2.2,),
              ),
             
            ],
          );
     
  }
}
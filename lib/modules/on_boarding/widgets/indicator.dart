import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends AnimatedWidget {

  final PageController controller;
  const Indicator({required this.controller}) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 50,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return _createIndicator(index);
              })],
        ),
      ),
    );
  }
  Widget _createIndicator(index) {
    double w=20;
    double h=20;
    Color color = medianGreyColor;

    if(controller.page==index)
    {
      color=whiteColor;
      h=25;
      w=25;
    }

    return Container(
      height: 30,
      width: 35,
      child: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.all(5),
        
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) ,   color: color,),
          width: w,
          height: h,
          duration: Duration(milliseconds: 100 ),
        ),
      ),
    );
  }
}
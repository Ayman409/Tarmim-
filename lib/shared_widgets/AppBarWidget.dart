// ignore_for_file: depend_on_referenced_packages

import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
   String title;
    bool home;
  late  GlobalKey<ScaffoldState> scaffoldKey;
   AppBarWidget(this.title,this.home ,scaffoldKey , {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: grey100,
      title: Text("$title" , style: appBarTextStyle,),
      centerTitle: true,
      actions:  <Widget>[
 home == false ? const SizedBox() : IconButton(
              icon:const Icon(
                Icons.menu,
                color: greyColor,
              ),
              onPressed: () {
                 scaffoldKey.currentState?.openDrawer();
              },
            ),

      ],
      leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: greyColor,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          
            
            
      elevation: 0,
    );
  }
}


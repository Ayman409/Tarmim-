// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../utils/style.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(color: Colors.white),
      child:const Center(
          child: CircularProgressIndicator(
        backgroundColor: royalBlue,
      )),
    );
  }
}

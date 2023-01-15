import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

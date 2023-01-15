import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/style.dart';

class Signup_Controller extends GetxController {
  final defaultPinTheme = PinTheme(
    width: 74,
    height: 74,
    margin: EdgeInsets.symmetric(horizontal: 4),
    textStyle: const TextStyle(
      fontSize: 24,
      color: textButtonBlackColor,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: borderPinColor),
    ),
  );
}

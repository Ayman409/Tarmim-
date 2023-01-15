import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginController extends GetxController {
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passController = TextEditingController();
  final TextEditingController phineController = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

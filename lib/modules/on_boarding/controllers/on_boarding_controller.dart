import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../auth/login/login_screen.dart';
import '../../auth/login/loginscreen.dart';
import '../../auth/otp/otp_screen.dart';
import '../screens/onboarding.dart';

class SplashController extends GetxController {
  /// loading event
  static bool isLoggedIn = false;
  @override
  onInit() {
    log("loading");
    Timer(const Duration(seconds: 3), () async {
      Get.off(() => OnBoarding_screen());
      super.onInit();
    });
  }

  bool isLoading = false;
  void changeLoadingEvent(bool loading) {
    this.isLoading = loading;

    update();
  }

  ////
  ///  final controller = PageController();
  final pageController = PageController();
  final messages = [
    "First Screen",
    "Second Screen",
    "Third Screen",
  ];
  final images = [
    'assets/images/onboarding1.png',
    'assets/images/onboarding2.png',
    'assets/images/onboarding3.png',
  ];

  int numberOfPages = 3;
  int currentPage = 0;

  changeCurentPage(int index) {
    currentPage = index;
    update();
  }
}

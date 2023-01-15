// ignore_for_file: depend_on_referenced_packages

import 'package:tramim_worker/modules/auth/login/login_screen.dart';
import 'package:tramim_worker/modules/on_boarding/controllers/on_boarding_controller.dart';
import 'package:tramim_worker/modules/on_boarding/widgets/each_page.dart';
import 'package:tramim_worker/modules/on_boarding/widgets/indicator.dart';
import 'package:tramim_worker/shared_widgets/ButtonW.dart';
import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (SplashController controller) => Scaffold(
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: Get.height / 1.6,
                      width: Get.width,
                      child: PageView.builder(
                        controller: controller.pageController,
                        onPageChanged: (index) {
                          controller.changeCurentPage(index);
                        },
                        itemCount: controller.numberOfPages,
                        itemBuilder: (BuildContext context, int index) {
                          bool showSkip = true;
                          if (index == 1) showSkip = false;
                          return EachPage(
                            controller.messages[index],
                            controller.images[index],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Indicator(
                          controller: controller.pageController,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              const Text(
                                "تعرف على قدراتك الإبداعية ",
                                style: appBarTextStyle,
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              ButtonW(
                                  buttonName: "أنشئ حسابك",
                                  height: 40,
                                  width: Get.width,
                                  function: () {}),
                              const SizedBox(
                                height: 8,
                              ),
                              InkWell(
                                  onTap: (() {
                                    Get.to(() => LoginScreen());
                                  }),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "لديك حساباً بالفعل؟",
                                        style: hintTextFieldStyle,
                                      ),
                                      const Text(
                                        "سجل الدخول",
                                        style: titleTextFieldStyleRoyalBlue,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}

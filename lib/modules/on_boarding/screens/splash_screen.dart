import 'package:tramim_worker/modules/on_boarding/controllers/on_boarding_controller.dart';
import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (SplashController controller) => Container(
              width: Get.width,
              height: Get.height,
              decoration: const BoxDecoration(
                // color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/spalshScreen.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ));
  }
}

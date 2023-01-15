import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tramim_worker/shared_widgets/ButtonW.dart';
import '../../../utils/style.dart';
import '../../auth/login/loginscreen.dart';
import '../controllers/on_boarding_controller.dart';
import '../widgets/content_model.dart';

class OnBoarding_screen extends StatelessWidget {
  OnBoarding_screen({super.key});
  final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              controller.pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 250),
                curve: Curves.linear,
              );
            },
            child: const Text(
              'skip',
              style: TextStyle(color: skipColor),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller.pageController,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    controller.changeCurentPage(index);
                  },
                  itemBuilder: (_, i) {
                    return Column(
                      children: [
                        Image.asset(
                          contents[i].image!,
                          height: 300,
                        ),
                        Text(contents[i].title!, style: kTitleStyle),
                        const SizedBox(height: 10),
                        Text(contents[i].discription!,
                            textAlign: TextAlign.center, style: kSubTitleStyle)
                      ],
                    );
                  },
                ),
              ),
              GetBuilder(
                init: SplashController(),
                builder: (controller) => Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(14, 10, 14, 20),
                  child: GetBuilder(
                    init: SplashController(),
                    builder: (controller) => Container(
                      child: ButtonW(
                        buttonName:
                            controller.currentPage == contents.length - 1
                                ? "Get started"
                                : "Next,",
                        height: 50,
                        width: Get.width,
                        function: () {
                          if (controller.currentPage == contents.length - 1) {
                            Get.to(() => LoginSScreen());
                          }
                          controller.pageController.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear,
                          );
                        },
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: controller.currentPage == index ? 28 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: yellowPrimaryColor,
      ),
    );
  }
}

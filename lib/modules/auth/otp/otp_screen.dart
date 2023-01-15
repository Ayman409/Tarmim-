import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../shared_widgets/ButtonW.dart';
import '../../../utils/style.dart';
import 'otp_controller.dart';

class Otp_Screen extends StatelessWidget {
  Otp_Screen({super.key});
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Signup_Controller(),
      builder: (controller) => Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'OTP Vertification',
            style: kSubTitleStyle,
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/OTP-panal.png'),
                const SizedBox(
                  height: 37,
                ),
                Text(
                  'Add OTP number to make your \n account more secure',
                  textAlign: TextAlign.center,
                  style: kSubTitle2Style,
                ),
                const SizedBox(
                  height: 25,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Directionality(
                        // Specify direction if desired
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          controller: pinController,
                          focusNode: focusNode,
                          androidSmsAutofillMethod:
                              AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          defaultPinTheme: controller.defaultPinTheme,
                          // validator: (value) {
                          //   return value == '2222' ? null : 'Pin is incorrect';
                          // },
                          // onClipboardFound: (value) {
                          //   debugPrint('onClipboardFound: $value');
                          //   pinController.setText(value);
                          // },
                          // hapticFeedbackType: HapticFeedbackType.lightImpact,
                          // onCompleted: (pin) {
                          //   debugPrint('onCompleted: $pin');
                          // },
                          // onChanged: (value) {
                          //   debugPrint('onChanged: $value');
                          // },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 22,
                                height: 1,
                                color: yellowPrimaryColor,
                              ),
                            ],
                          ),
                          focusedPinTheme: controller.defaultPinTheme.copyWith(
                            decoration:
                                controller.defaultPinTheme.decoration!.copyWith(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: yellowPrimaryColor),
                            ),
                          ),
                          submittedPinTheme:
                              controller.defaultPinTheme.copyWith(
                            decoration:
                                controller.defaultPinTheme.decoration!.copyWith(
                              color: borderPinColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: borderPinColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: 200,
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18, top: 200),
                  child: ButtonW(
                    buttonName: 'Get started',
                    height: 50,
                    width: Get.width,
                    function: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

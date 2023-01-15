import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tramim_worker/shared_widgets/ButtonW.dart';
import 'package:tramim_worker/utils/style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../otp/otp_screen.dart';
import 'login_controller.dart';

class LoginSScreen extends StatelessWidget {
  LoginSScreen({super.key});
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LoginController(),
        builder: (controller) => Scaffold(
              backgroundColor: whiteColor,
              body: SingleChildScrollView(
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 154,
                      ),
                      Image.asset('assets/images/logo.png'),
                      const SizedBox(
                        height: 48,
                      ),
                      Text(
                        'Login To Your Account',
                        style: kHeadingStyle,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Welcome back, please enter your \n details.',
                        style: kSubTitle2Style,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: 343,
                        height: 54,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: containerDarkGreyColor,
                          ),
                          color: containerDarkGreyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InternationalPhoneNumberInput(
                          textFieldController: controller.phineController,
                          // searchBoxDecoration: InputDecoration() ,
                          onInputChanged: (PhoneNumber value) {},
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          selectorConfig: const SelectorConfig(
                            trailingSpace: false,
                            leadingPadding: 0.0,
                          ),
                          autoFocus: false,
                          selectorTextStyle: const TextStyle(fontSize: 11),
                          spaceBetweenSelectorAndTextField: 0,
                          countrySelectorScrollControlled: true,
                          initialValue: number,
                          inputDecoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(bottom: 15, left: 0),
                            border: InputBorder.none,
                            fillColor: containerDarkGreyColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: ButtonW(
                          buttonName: 'Get started',
                          height: 50,
                          width: Get.width,
                          function: () {
                            Get.to(() => Otp_Screen());
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don’t Have An Account?',
                              style: GoogleFonts.poppins(
                                color: Color(0XFF757575),
                                textStyle: const TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          TextButton(
                            child: Text('Sign Up',
                                style: GoogleFonts.poppins(
                                  color: yellowPrimaryColor,
                                  textStyle: const TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}

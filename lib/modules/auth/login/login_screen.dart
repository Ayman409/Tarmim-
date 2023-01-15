import 'package:tramim_worker/modules/auth/login/login_controller.dart';
import 'package:tramim_worker/shared_widgets/AppBarWidget.dart';
import 'package:tramim_worker/shared_widgets/ButtonW.dart';
import 'package:tramim_worker/shared_widgets/TextFormFieldW.dart';
import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (LoginController controller) => Scaffold(
          appBar:PreferredSize(child: AppBarWidget( "تسجيل الدخول", false, _scaffoldKey), preferredSize: Size.fromHeight(70)) ,
              body: Container(
                  color: grey100,
                  width: Get.width,
                  height: Get.height,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
Row(
  children: [
        Text("البريد الالكتروني", style:titleTextFieldStyle ,),
  ],
),
SizedBox(height: 8,),
                        TextFormFieldW(
                              controller: LoginController.emailController,
                              hintText: "عنوان بريد الكتروني صحيح",
                              textInputType: TextInputType.emailAddress,
                              icon: "assets/images/email.png",
                            ),
                            SizedBox(height: 16,),
                      Row(
  children: [
        Text("الرمز السري", style:titleTextFieldStyle ,),
  ],
),

                              TextFormFieldW(
                              controller: LoginController.passController,
                              hintText: "أدخل الرمز الصحيج",
                              textInputType: TextInputType.text,
                              icon: "assets/images/pass.png",
                            ),
const  SizedBox(height: 32,),
                             ButtonW(buttonName: "سجل الدخول", height: 50, width: Get.width, function: (){}),
                  const  SizedBox(height: 32,),

                     Text("إعادة إرسال الرمز" ,style: titleTextFieldStyleRoyalBlue,),

const  SizedBox(height: 32,),

                      Text("للمشاركة في الأنشطة الإبداعية يجب أن تملك رمز دخول خاص من إدارة المشروع، إذا كنت تملك رمز فقم بإدخاله في الخانة المخصصة، وإذا لم تملك رمز فقم بإرسال طلب للإدارة وسيتم إرسال الكود عبر البريد الإلكتروني." ,style: hintTextFieldStyle,)
                      ],
                    ),
                  )),
            ));
  }
}

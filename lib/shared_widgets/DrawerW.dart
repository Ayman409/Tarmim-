import 'package:tramim_worker/utils/style.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';


class DrawerW extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  DrawerW({required this.scaffoldKey});

  @override
  _DrawerWState createState() => _DrawerWState();
}

class _DrawerWState extends State<DrawerW> {
  final String _localeDisplayedText = Get.locale!.languageCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width / 1.2,
      child: Drawer(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromRGBO(32, 165, 170, 1.0),
                Color.fromRGBO(25, 152, 116, 1.0)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerLeft,
            )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        height: 200,
                        child: new Image.asset("images/logo3.png")),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'CHANGE_LANGUAGE_TO'.tr,
                      style: drawerTextStyle,
                    ),
                    trailing: Text(
                      _localeDisplayedText == 'en' ? "عربي" : "EN",
                      style: drawerTextStyle,
                    ),
                    onTap: () async {
                
                    },
                  ),
                  InkWell(
                    onTap: () {
                 
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.receipt,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "TRANSACTION_LIST".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                     
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.person,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "PROFILE".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
              InkWell(
                    onTap: () {
               
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.card_travel,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "CARD_INFO".tr,
                        style: drawerTextStyle,
                        
                      ),
                    ),
                  ),
                  Divider(
                    color: whiteColor,
                  ),
               InkWell(
                          onTap: () {
                           
                          },
                          child: new ListTile(
                            leading: Icon(
                              Icons.apps,
                              color: whiteColor,
                              size: 30,
                            ),
                            title: Text(
                              "PRODUCTS".tr,
                              style: drawerTextStyle,
                            ),
                          ),
                        ),
                   Divider(
                          color: whiteColor,
                        ),
              Column(
                          children: [
                            InkWell(
                              onTap: () {
                         
                              },
                              child: new ListTile(
                                leading: Icon(
                                  Icons.money_off,
                                  color: whiteColor,
                                  size: 30,
                                ),
                                title: Text(
                                  "BALANCE_RECHARGE".tr,
                                  style: drawerTextStyle,
                                ),
                              ),
                            ),
                            Divider(
                              color: whiteColor,
                            ),
                          ],
                        )
                   ,
                InkWell(
                          onTap: () {
                         
                          },
                          child: new ListTile(
                            leading: Icon(
                              Icons.shopping_cart,
                              color: whiteColor,
                              size: 30,
                            ),
                            title: Text(
                              "SHOPPING_CART".tr,
                              style: drawerTextStyle,
                            ),
                          ),
                        ),
                  Divider(
                          color: whiteColor,
                        ),
                  InkWell(
                    onTap: () {
              
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.group,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "ABOUT_US".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                  Divider(
                    color: whiteColor,
                  ),
                  InkWell(
                    onTap: () {
               
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.contact_mail,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "CONTACT_US".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                  Divider(
                    color: whiteColor,
                  ),
                  InkWell(
                    onTap: () {
                   
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.privacy_tip,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "PRIVACY".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                  Divider(
                    color: whiteColor,
                  ),
                  InkWell(
                    onTap: () {
                 
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.file_copy_rounded,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "TERMS".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                  Divider(
                    color: whiteColor,
                  ),
                  InkWell(
                    onTap: () {
                
                    },
                    child: new ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: whiteColor,
                        size: 30,
                      ),
                      title: Text(
                        "LOGOUT".tr,
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

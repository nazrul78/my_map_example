import 'dart:typed_data';
import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:image_picker/image_picker.dart';

import '../config/app_theme.dart';
import '../helpers/get_file_name.dart';
import '../helpers/k_text.dart';
import '../helpers/route.dart';
import '../pages/home_page.dart';
import '../pages/main_page.dart';
import '../services/api_service.dart';
import '../services/validation_service.dart';

enum Phase {
  signUp,
  otp,
  confirmed,
}

class AuthController extends GetxController with ApiService, ValidationService {
  final ImagePicker _picker = ImagePicker();
  // final otpTimer = Rx
  // Sign Up Phase
  final phase = Rx<Phase>(Phase.signUp);

  final pickedImage = Rx<XFile?>(null);
  final pickedImageMemory = Rx<Uint8List?>(null);

  final isLoading = RxBool(false);
  final isRegLoading = RxBool(false);
  // Login type
  final loginType = RxString('online');
  // --------------------------------  ----------------------------

  // For login
  final username = RxString('');
  final password = RxString('');
  // ------------------------------------------------------------
  // For SignUp
  final fullName = RxString('');

  final regUsername = RxString('');
  final mobileNumer = RxString('');
  final email = RxString('');
  final gender = RxString('male');
  final dateOfBirth = RxString('');
  final address = RxString('');
  final isTermsAgree = RxBool(false);

  final regPassword = RxString('');
  final regConfirmPassword = RxString('');
  final otp = RxString('');

  // ------------------------------------------------------------

  bool isSubmitButtonValid() {
    if (pickedImage.value != null &&
        fullName.value.isNotEmpty &&
        regUsername.value.isNotEmpty &&
        mobileNumer.value.length > 10 &&
        email.value.contains('@') &&
        gender.value.isNotEmpty &&
        dateOfBirth.value.isNotEmpty &&
        address.value.isNotEmpty &&
        isTermsAgree.value) {
      return true;
    } else {
      return false;
    }
  }

  bool isOtpButtonValid() {
    if (otp.value.length == 4 &&
        regPassword.value.isNotEmpty &&
        regConfirmPassword.value.isNotEmpty &&
        regPassword.value == regConfirmPassword.value) {
      return true;
    } else {
      return false;
    }
  }

  bool isLoginButtonValid() {
    if (username.value.isNotEmpty && isPasswordValid(password.value)) {
      return true;
    } else {
      return false;
    }
  }

  final obscure = RxBool(true);

  void changeObscure() {
    obscure.toggle();
  }

  void login() async {
    try {
      Codec<String, String> stringToBase64 = utf8.fuse(base64);

      isLoading.value = true;
      // cEtvZGVhYmMxMjM0NTZBQQ==
      final res = await post(
        path: '/user_authentication',
        body: {
          'apiKey': 'ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5',
          'username': username.value,
          'password': stringToBase64.encode('pKode${password.value}'),
          'appCode': 'SHOUT',
          'version': 1
        },
      );

      if (res.data['message'] != null &&
          res.data['message'].contains('INVALID_CREDENTIALS') == true) {
        Get.defaultDialog(
          backgroundColor: Colors.white,
          title: '',
          content: SizedBox(
            height: 200,
            width: Get.width,
            child: Column(
              children: [
                Icon(
                  EvaIcons.alertTriangleOutline,
                  color: Colors.red.withOpacity(.6),
                  size: 60,
                ),
                SizedBox(
                  height: 22,
                ),
                KText(
                  text: 'Username or password wrong',
                  fontSize: 17,
                  bold: false,
                  color: AppTheme.textColor,
                ),
                SizedBox(
                  height: 22,
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: TextButton(
                    onPressed: () => Get.back(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.primaryColor)),
                    child: KText(
                      text: 'OK',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        print(res.data);
        offAll(MainPage());
      }

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      print(e);
      print(e);
    }
  }

  void signUp() async {
    try {
      isRegLoading.value = true;
      // phase.value = Phase.signUp;

      final res = await post(
        path: '/request_for_otp',
        body: {
          'apiKey': 'ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5',
          'username': regUsername.value,
          'email': email.value,
          'mobile': mobileNumer.value,
        },
      );

      if (res.data['message'] != null &&
          res.data['message'].contains('Email already exists.') == true) {
        isRegLoading.value = false;
        Get.defaultDialog(
          backgroundColor: Colors.white,
          title: '',
          content: SizedBox(
            height: 200,
            width: Get.width,
            child: Column(
              children: [
                Icon(
                  EvaIcons.alertTriangleOutline,
                  color: Colors.red.withOpacity(.6),
                  size: 60,
                ),
                SizedBox(
                  height: 22,
                ),
                KText(
                  text: 'Email already exists.',
                  fontSize: 17,
                  bold: false,
                  color: AppTheme.textColor,
                ),
                SizedBox(
                  height: 22,
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: TextButton(
                    onPressed: () => Get.back(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.primaryColor)),
                    child: KText(
                      text: 'OK',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else if (res.data['message'] != null &&
          res.data['message'].contains('Mobile already exists.') == true) {
        isRegLoading.value = false;
        Get.defaultDialog(
          backgroundColor: Colors.white,
          title: '',
          content: SizedBox(
            height: 200,
            width: Get.width,
            child: Column(
              children: [
                Icon(
                  EvaIcons.alertTriangleOutline,
                  color: Colors.red.withOpacity(.6),
                  size: 60,
                ),
                SizedBox(
                  height: 22,
                ),
                KText(
                  text: 'Mobile number already exists.',
                  fontSize: 17,
                  bold: false,
                  color: AppTheme.textColor,
                ),
                SizedBox(
                  height: 22,
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: TextButton(
                    onPressed: () => Get.back(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.primaryColor)),
                    child: KText(
                      text: 'OK',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else if (res.data['message'] != null &&
          res.data['message'].contains('Username already exists.') == true) {
        isRegLoading.value = false;
        Get.defaultDialog(
          backgroundColor: Colors.white,
          title: '',
          content: SizedBox(
            height: 200,
            width: Get.width,
            child: Column(
              children: [
                Icon(
                  EvaIcons.alertTriangleOutline,
                  color: Colors.red.withOpacity(.6),
                  size: 60,
                ),
                SizedBox(
                  height: 22,
                ),
                KText(
                  text: 'Username already exists.',
                  fontSize: 17,
                  bold: false,
                  color: AppTheme.textColor,
                ),
                SizedBox(
                  height: 22,
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: TextButton(
                    onPressed: () => Get.back(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.primaryColor)),
                    child: KText(
                      text: 'OK',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        isRegLoading.value = false;
        phase.value = Phase.otp;
      }
    } catch (e) {
      isRegLoading.value = false;
      print(e);
      print(e);
    }
  }

  void confirmSignUp() async {
    try {
      isRegLoading.value = true;
      Codec<String, String> stringToBase64 = utf8.fuse(base64);

      isLoading.value = true;
      final data = FormData.fromMap(
        {
          'apiKey': 'ZWR1Y2l0aW9uQkRBMTIzNDU2Nzg5',
          'appCode': 'SHOUT',
          'version': 1,
          'personName': fullName.value,
          'username': regUsername.value,
          'password': stringToBase64.encode('pKode${regPassword.value}'),
          'mobile': mobileNumer.value,
          'email': email.value,
          'gender': gender.value,
          'homeAddress': address.value,
          'birthDate': dateOfBirth.value,
          'otp': otp.value,
          'uiCodes': ['555'],
          'files': await MultipartFile.fromFile(pickedImage.value!.path,
              filename: 'photo${getFileName(path: pickedImage.value!.path)}'),
        },
      );
      final res = await post(
        path: '/add_user_form',
        body: data,
      );

      if (res.data['message'] != null &&
          res.data['message'].contains('INVALID_CREDENTIALS') == true) {
        Get.defaultDialog(
          backgroundColor: Colors.white,
          title: '',
          content: SizedBox(
            height: 200,
            width: Get.width,
            child: Column(
              children: [
                Icon(
                  EvaIcons.alertTriangleOutline,
                  color: Colors.red.withOpacity(.6),
                  size: 60,
                ),
                SizedBox(
                  height: 22,
                ),
                KText(
                  text: 'Username or password wrong',
                  fontSize: 17,
                  bold: false,
                  color: AppTheme.textColor,
                ),
                SizedBox(
                  height: 22,
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: TextButton(
                    onPressed: () => Get.back(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppTheme.primaryColor)),
                    child: KText(
                      text: 'OK',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        print(res.data);
        offAll(HomePage());
      }
      print(res.data);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }

  // Select user avatar image
  void selectAvatar() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image!.path.isNotEmpty) {
      pickedImage.value = image;
      pickedImageMemory.value = await image.readAsBytes();
    }
  }

  // ----------------------------------------------

  disposeData() {
    phase.value = Phase.signUp;

    fullName.value = '';

    regUsername.value = '';
    mobileNumer.value = '';
    email.value = '';
    gender.value = 'male';
    dateOfBirth.value = '';
    address.value = '';
    isTermsAgree.value = false;

    regPassword.value = '';
    regConfirmPassword.value = '';
    otp.value = '';
    // isLoading.value = false;
    isRegLoading.value = false;
  }
}

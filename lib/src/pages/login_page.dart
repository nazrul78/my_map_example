import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../config/app_theme.dart';
import '../config/base.dart';
import '../config/constants.dart';
import '../helpers/hex_color.dart';
import '../helpers/k_text.dart';
import '../helpers/loading.dart';
import '../helpers/route.dart';
import '../pages/signup_page.dart';
import '../services/validation_service.dart';

class LoginPage extends StatelessWidget with ValidationService, Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: SvgPicture.asset(
                    '${Constants.svgPath}/avatar_placeholder.svg',
                    width: 130,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                          ),
                        ),
                        child: KText(
                          text: 'Password',
                          color: Colors.white,
                          bold: true,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          // color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                          ),
                          border: Border.all(
                              width: 1, color: AppTheme.primaryColor),
                        ),
                        child: KText(
                          text: 'Biometric',
                          color: hexToColor('#84BEF3'),
                          bold: true,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  onChanged: authC.username,
                  decoration: InputDecoration(
                    errorText: validateUsername(authC.username.value),
                    label: KText(
                      text: 'Username',
                      color: AppTheme.textColor,
                      fontSize: 16,
                    ),
                    hintText: 'Enter your username',
                    // prefixIcon: Icon(
                    //   Icons.person_outline,
                    //   color: AppTheme.color3,
                    // ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextField(
                  onChanged: authC.password,
                  obscureText: authC.obscure.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => authC.changeObscure(),
                      icon: Icon(
                        authC.obscure.value
                            ? EvaIcons.eyeOutline
                            : EvaIcons.eyeOffOutline,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    label: KText(
                      text: 'Password',
                      color: AppTheme.textColor,
                      fontSize: 16,
                    ),
                    errorMaxLines: 2,
                    errorText: validatePassword(authC.password.value),
                    hintText: 'Enter your password',
                    // prefixIcon: Icon(
                    //   Icons.lock_outline,
                    //   color: AppTheme.color3,
                    // ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.only(left: 3),
                  child: KText(
                    text: 'Login type',
                    color: hexToColor('#80939D'),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio<String>(
                      visualDensity: VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: authC.loginType.value,
                      onChanged: (v) {
                        authC.loginType.value = 'online';
                      },
                      groupValue: 'online',
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        authC.loginType.value = 'online';
                      },
                      child: KText(
                        text: 'Online',
                        color: AppTheme.black,
                        fontSize: 16,
                      ),
                    ),
                    Radio<String>(
                      visualDensity: VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      value: authC.loginType.value,
                      onChanged: (v) {
                        authC.loginType.value = 'offline';
                      },
                      groupValue: 'offline',
                    ),
                    GestureDetector(
                      onTap: () {
                        authC.loginType.value = 'offline';
                      },
                      child: KText(
                        text: 'Offline',
                        color: AppTheme.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: Get.width,
                  height: .6,
                  color: AppTheme.primaryColor,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: KText(
                    bold: true,
                    text: 'Forgot Password?',
                    color: AppTheme.color2,
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () =>
                        authC.isLoginButtonValid() ? authC.login() : null,
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor
                            .withOpacity(authC.isLoginButtonValid() ? 1 : .6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: authC.isLoading.value
                          ? Loading(
                              color: Colors.white,
                            )
                          : KText(
                              text: 'Login',
                              color: Colors.white,
                              bold: true,
                              fontSize: 21,
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KText(
                      text: 'Don\'t have an account?',
                      color: AppTheme.color1,
                      fontSize: 19,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        push(SignUpPage());
                      },
                      child: KText(
                        bold: true,
                        text: 'Sign Up',
                        color: AppTheme.color2,
                        fontSize: 19,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

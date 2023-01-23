import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../config/app_theme.dart';
import '../config/base.dart';
import '../config/constants.dart';
import '../helpers/k_text.dart';

class KAppbar extends StatelessWidget with PreferredSizeWidget, Base {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          menuC.globalKey.currentState!.openDrawer();
        },
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: SvgPicture.asset(
              '${Constants.svgPath}/top_left.svg',
              color: AppTheme.textColor,
            ),
          ),
        ),
      ),
      title: KText(text: 'My Map', fontSize: 25, color: AppTheme.color7),
      titleSpacing: 0,
      surfaceTintColor: AppTheme.appbarColor,
      backgroundColor: AppTheme.appbarColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppTheme.appbarColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.grey[50],
        systemNavigationBarColor: Colors.grey[50],
      ),
      actions: menuC.appbarMenus
          .map(
            (item) => GestureDetector(
              onTap: () {
                switch (menuC.appbarMenus.indexOf(item)) {
                  case 5:
                    menuC.globalKey.currentState!.openEndDrawer();
                    break;
                  default:
                }
              },
              child: Padding(
                padding: EdgeInsets.all(7),
                child: SvgPicture.asset(
                  '${Constants.svgPath}/$item',
                  color: AppTheme.textColor,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

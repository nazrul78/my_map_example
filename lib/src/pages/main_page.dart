import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/k_appbar.dart';
import '../components/left_sidebar_component.dart';
import '../components/right_sidebar_component.dart';
import '../config/app_theme.dart';
import '../config/base.dart';
import '../helpers/render_svg.dart';

class MainPage extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: menuC.globalKey,
        drawer: LeftSidebarComponent(),
        endDrawer: RightSidebarComponent(),
        appBar: KAppbar(),
        bottomNavigationBar: Container(
          color: AppTheme.appbarColor,
          height: 50,
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: menuC.bottomMenus
                .map(
                  (item) => Expanded(
                    child: GestureDetector(
                      onTap: () => menuC.setCurrentIndex = item,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RenderSvg(
                              path: item,
                              width: 35,
                              color: menuC.currentIndex.value ==
                                      menuC.getMenuIndex(item)
                                  ? AppTheme.color7
                                  : AppTheme.color8,
                            ),
                            Container(
                              color: menuC.currentIndex.value ==
                                      menuC.getMenuIndex(item)
                                  ? AppTheme.color7
                                  : null,
                              height: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        body: menuC.getCurrentPage(),
      ),
    );
  }
}

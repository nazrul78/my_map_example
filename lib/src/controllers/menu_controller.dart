import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helpers/k_text.dart';
import '../models/sidebar.dart';
import '../models/sidebar_children.dart';
import '../pages/bottom_page1.dart';
import '../pages/bottom_page2.dart';
import '../pages/home_page.dart';

class MenuController extends GetxController {
  final globalKey = GlobalKey<ScaffoldState>();

  final leftSidebar = [
    Sidebar(
      svgPath: 'personal_data_icon',
      title: 'About Me',
      children: [
        SidebarChildren(
          title: 'My Profile',
        ),
        SidebarChildren(
          title: 'Change My Password',
        ),
      ],
    ),
    Sidebar(
      title: 'Feedback',
      svgPath: 'user_feedback',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      svgPath: 'app_settings',
      title: 'App Settings',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
  ];
  final rightSidebar = [
    Sidebar(
      svgPath: 'project_reporting_icon',
      title: 'Project Reporting',
      children: [
        SidebarChildren(
          title: 'Project Plan with Status',
        ),
        SidebarChildren(
          title: 'Project Team',
        ),
        SidebarChildren(
          title: 'Enroll My Biometrics',
        ),
        SidebarChildren(
          title: 'Project Activity Status',
        ),
        SidebarChildren(
          title: 'My Project Task Dashboard',
        ),
        SidebarChildren(
          title: 'My Dependency Status',
        ),
      ],
    ),
    Sidebar(
      title: 'Project Operation',
      svgPath: 'project_operating_icon',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      title: 'Tasks',
      svgPath: 'task_list',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      svgPath: 'transport_report_icon',
      title: 'Transport Reporting',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      svgPath: 'transport_operation_icon',
      title: 'Transport Operation',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      svgPath: 'site_reporting_icon',
      title: 'Site Reporting',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      svgPath: 'site_operation_icon',
      title: 'Site Operation',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
    Sidebar(
      svgPath: 'payment_icon',
      title: 'Payment',
      children: [
        SidebarChildren(
          title: 'Demo content',
        ),
        SidebarChildren(
          title: 'Demo content',
        ),
      ],
    ),
  ];

  final currentIndex = RxInt(2);

  set setCurrentIndex(String item) => currentIndex.value = getMenuIndex(item);

  Widget getCurrentPage() {
    switch (currentIndex.value) {
      case 0:
        return BottomPage1();
      case 1:
        return BottomPage2();
      case 2:
        return HomePage();
      case 3:
        return Center(child: KText(text: 'Page 4'));
      case 4:
        return Center(child: KText(text: 'Page 5'));
      default:
        return Center(child: KText(text: 'page'));
    }
  }

  final bottomMenus = [
    'bottom_1',
    'bottom_2',
    'bottom_3',
    'bottom_4',
    'bottom_5'
  ];

  final appbarMenus = [
    // 'top_0.svg',
    // 'top_1.svg',
    // 'top_2.svg',
    'top_3.svg',
    'top_4.svg',
    'top_5.svg'
  ];

  int getMenuIndex(String item) {
    return bottomMenus.indexOf(item);
  }
}

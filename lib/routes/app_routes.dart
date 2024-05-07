import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/explore_container_screen/explore_container_screen.dart';
import '../presentation/profile_screen/profile_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String explorePage = '/explore_page';

  static const String exploreTabContainerPage = '/explore_tab_container_page';

  static const String exploreContainerScreen = '/explore_container_screen';

  static const String chatPage = '/chat_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    exploreContainerScreen: (context) => ExploreContainerScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => ExploreContainerScreen()
  };
}

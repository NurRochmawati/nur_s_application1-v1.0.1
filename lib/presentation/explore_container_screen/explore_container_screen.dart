import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../chat_page/chat_page.dart';
import '../explore_tab_container_page/explore_tab_container_page.dart'; // ignore_for_file: must_be_immutable

class ExploreContainerScreen extends StatelessWidget {
  ExploreContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.exploreTabContainerPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.exploreTabContainerPage;
      case BottomBarEnum.Wishlist:
        return "/";
      case BottomBarEnum.Camera:
        return "/";
      case BottomBarEnum.Chat:
        return AppRoutes.chatPage;
      case BottomBarEnum.Setting:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.exploreTabContainerPage:
        return ExploreTabContainerPage();
      case AppRoutes.chatPage:
        return ChatPage();
      default:
        return DefaultWidget();
    }
  }
}

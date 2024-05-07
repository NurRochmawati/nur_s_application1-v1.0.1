import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../explore_page/explore_page.dart';
import 'widgets/productcard_item_widget.dart'; // ignore_for_file: must_be_immutable

class ExploreTabContainerPage extends StatefulWidget {
  const ExploreTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreTabContainerPageState createState() => ExploreTabContainerPageState();
}

class ExploreTabContainerPageState extends State<ExploreTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 28.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildForYouColumn(context),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "Explore",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildTabview(context),
                SizedBox(
                  height: 417.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ExplorePage(),
                      ExplorePage(),
                      ExplorePage(),
                      ExplorePage()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 20.h),
        hintText: "Where is your next destination?",
        controller: searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 3.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildForYouColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Text(
            "For you",
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 12.v),
        SizedBox(
          height: 160.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10.h,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return ProductcardItemWidget();
            },
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 22.v,
      width: 359.h,
      margin: EdgeInsets.only(left: 16.h),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.red300,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: appTheme.red300,
        tabs: [
          Tab(
            child: Text(
              "Country",
            ),
          ),
          Tab(
            child: Text(
              "Activity",
            ),
          ),
          Tab(
            child: Text(
              "Food & Beverage",
            ),
          ),
          Tab(
            child: Text(
              "Museum",
            ),
          )
        ],
      ),
    );
  }
}

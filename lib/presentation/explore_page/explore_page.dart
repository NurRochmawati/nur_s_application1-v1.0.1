import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../../core/app_export.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key})
      : super(
          key: key,
        );

  @override
  ExplorePageState createState() => ExplorePageState();
}

class ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin<ExplorePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: _buildUserProfileSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 4,
              crossAxisSpacing: 10.h,
              mainAxisSpacing: 10.h,
              staggeredTileBuilder: (index) {
                return StaggeredTile.fit(2);
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return UserprofileItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}

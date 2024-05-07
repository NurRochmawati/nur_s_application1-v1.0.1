import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/profile_item_widget.dart';
import 'widgets/userprofile2_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

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
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Row(
                      children: [
                        Text(
                          "Upcoming holiday",
                          style: theme.textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                          child: CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFacebook,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "1 May   ",
                                  style: CustomTextStyles.bodyMediumGray800,
                                ),
                                TextSpan(
                                  text: "|    Labour day",
                                  style: CustomTextStyles.bodyMedium_1,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomElevatedButton(
                          width: 54.h,
                          text: "Plan",
                          margin: EdgeInsets.only(left: 19.h),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 42.v),
                  _buildItinerary(context),
                  SizedBox(height: 42.v),
                  _buildBookingHistory(context),
                  SizedBox(height: 38.v),
                  _buildPhotos(context),
                  SizedBox(height: 24.v),
                  _buildProfile(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 17.h,
          top: 15.v,
          bottom: 17.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgPlay,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 6.v,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  AppbarTitle(
                    text: "Mathew Liao",
                    margin: EdgeInsets.only(right: 49.h),
                  ),
                  SizedBox(height: 4.v),
                  AppbarSubtitle(
                    text: "ID : mathewmathverygood",
                  )
                ],
              ),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPrinter,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 29.v,
            right: 7.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.fromLTRB(53.h, 17.v, 26.h, 12.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildItinerary(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Itinerary",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 19.v),
          SizedBox(
            height: 120.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Userprofile2ItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingHistory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Booking History",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.0.v),
                  child: SizedBox(
                    width: 346.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray100,
                    ),
                  ),
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ViewhierarchyItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotos(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 14.h,
          right: 20.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Photos",
              style: theme.textTheme.headlineSmall,
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text(
                "Select",
                style: theme.textTheme.titleLarge,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 756.v,
        width: 344.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle91,
              height: 206.v,
              width: 167.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.bottomRight,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle101,
              height: 157.v,
              width: 167.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.bottomLeft,
            ),
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 4,
              crossAxisSpacing: 10.h,
              mainAxisSpacing: 10.h,
              staggeredTileBuilder: (index) {
                return StaggeredTile.fit(2);
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return ProfileItemWidget();
              },
            )
          ],
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

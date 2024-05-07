import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.v,
      width: 148.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle21,
            height: 120.v,
            width: 148.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Camping",
                    style: CustomTextStyles.titleSmallWhiteA700,
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "30 Apr - 3 May",
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgReactIconsRi,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "1 day before",
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 17.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: Text(
                          "Mate",
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      ),
                      SizedBox(
                        height: 20.v,
                        width: 46.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                decoration: AppDecoration.fillYellowA,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                decoration: AppDecoration.fillRed,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                decoration: AppDecoration.fillGray,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

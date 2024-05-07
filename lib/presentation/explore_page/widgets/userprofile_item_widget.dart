import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.v,
      width: 167.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 206.v,
            width: 167.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 136.v),
              padding: EdgeInsets.symmetric(vertical: 6.v),
              decoration: AppDecoration.gradientGrayToBlack.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MT. Slamet",
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "4D 3N",
                          style: CustomTextStyles.bodyMediumWhiteA700,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 39.v),
                    child: Text(
                      "116",
                      style: CustomTextStyles.titleSmallWhiteA700Bold,
                    ),
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

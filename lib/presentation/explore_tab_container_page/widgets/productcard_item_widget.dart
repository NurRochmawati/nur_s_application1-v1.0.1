import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.v,
      width: 150.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: 160.v,
            width: 150.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 90.v),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.gradientGrayToBlack.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prau",
                          style: theme.textTheme.titleMedium,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "3D 2N",
                            style: CustomTextStyles.bodyMediumWhiteA700,
                          ),
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

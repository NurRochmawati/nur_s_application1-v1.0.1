import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_search_view.dart'; // ignore: must_be_immutabl
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutab
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({Key? key, this.hintText, this.controller, this.margin})
      : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 252.h,
        controller: controller,
        hintText: "Where is your next destination?",
      ),
    );
  }
}

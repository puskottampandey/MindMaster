import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindmaster/global/constants/colors_text.dart';

class ReuseableScaffold extends StatelessWidget {
  final String? text;
  final bool appbar;
  final Widget? child;
  final bool? back;
  final bool? changeColor;
  final Color? color;
  final bool? bottomnavigation;
  final Widget? bottomnavigationWidget;
  final Widget? floatingActionButton;

  const ReuseableScaffold({
    this.text,
    this.appbar = false,
    this.back = true,
    this.changeColor = false,
    this.color,
    this.child,
    this.bottomnavigation = false,
    this.bottomnavigationWidget,
    this.floatingActionButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          bottomnavigation! ? FloatingActionButtonLocation.centerDocked : null,
      floatingActionButton: bottomnavigation! ? floatingActionButton : null,
      backgroundColor: changeColor! ? color : AppColors.whiteColor,
      bottomNavigationBar: bottomnavigation! ? bottomnavigationWidget : null,
      appBar: appbar
          ? AppBar(
              automaticallyImplyLeading: back! ? true : false,
              iconTheme: IconThemeData(
                  color: changeColor! ? kvverylightColor : kPrimaryDarkColor),
              centerTitle: true,
              backgroundColor: changeColor! ? color : AppColors.whiteColor,
              title: Text(
                text!,
                style: textPoppions.bodyLarge!.copyWith(
                  fontSize: 16.sp,
                  color: changeColor! ? kvverylightColor : klightDarkColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : null,
      body: child,
    );
  }
}

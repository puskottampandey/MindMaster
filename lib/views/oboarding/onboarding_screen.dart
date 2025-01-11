import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/constants/colors_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Onboarding",
                style: textPoppions.displaySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

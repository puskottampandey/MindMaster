import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindmaster/global/constants/colors_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      // ignore: use_build_context_synchronously
      context.go("/onboard");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
    );
  }
}

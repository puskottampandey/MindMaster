import 'package:flutter/material.dart';
import 'package:mindmaster/global/constants/colors_text.dart';
import 'package:mindmaster/global/reuseable/formfield.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          titleSpacing: 0,
          title: ReusableFormField(
            hint: "Search",
            controller: TextEditingController(),
          )),
    );
  }
}

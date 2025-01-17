import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../global/constants/colors_text.dart';
import '../../../global/reuseable/button.dart';
import '../../../global/reuseable/formfield.dart';
import '../../../global/reuseable/scaffold.dart';

final nametext = AutoDisposeProvider((ref) => TextEditingController());
final emailtext = AutoDisposeProvider((ref) => TextEditingController());
final passwordtext = AutoDisposeProvider((ref) => TextEditingController());
final formKeySignUp = StateProvider((ref) => GlobalKey<FormState>());

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = ref.watch(nametext);
    final emailController = ref.watch(emailtext);
    final passwordController = ref.watch(passwordtext);
    final signUp = ref.watch(formKeySignUp);
    return ReuseableScaffold(
      appbar: true,
      text: "Sign Up",
      child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Form(
                  key: signUp,
                  child: Column(
                    children: [
                      ReusableFormField(
                        controller: nameController,
                        textInputAction: TextInputAction.next,
                        hint: "Name",
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a first name";
                          }
                          return null;
                        },
                      ),
                      ReusableFormField(
                        textInputAction: TextInputAction.next,
                        controller: emailController,
                        hint: "Email",
                        keyboardType: TextInputType.emailAddress,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a email";
                          }
                          return null;
                        },
                      ),
                      ReusableFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.go,
                        hint: "Password",
                        validation: true,
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ReuseableButton(
                        minimumSize: Size(double.infinity, 40.h),
                        text: "Sign Up",
                        bgcolor: kPrimaryGreenColor,
                        textcolor: kwhitelightColor,
                        ontap: () {
                          if (signUp.currentState!.validate()) {}
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Or with",
                        style: textPoppions.bodyLarge!.copyWith(
                          fontSize: 14.sp,
                          color: kPrimarylightColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push('/signIn');
                        },
                        child: RichText(
                          text: TextSpan(
                              text: "Already have an account? ",
                              style: textPoppions.bodyLarge!.copyWith(
                                fontSize: 12.sp,
                                color: kPrimarylightColor,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: "SignIn",
                                  style: textPoppions.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12.sp,
                                    color: kPrimaryGreenColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

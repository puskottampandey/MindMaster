import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mindmaster/global/reuseable/button.dart';
import 'package:mindmaster/global/reuseable/scaffold.dart';

import '../../../global/constants/colors_text.dart';
import '../../../global/reuseable/formfield.dart';

final email = AutoDisposeProvider((ref) => TextEditingController());
final password = AutoDisposeProvider((ref) => TextEditingController());
final formKeySignIn = StateProvider((ref) => GlobalKey<FormState>());

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailcontroller = ref.watch(email);
    final passwordcontroller = ref.watch(password);
    final signIn = ref.watch(formKeySignIn);
    return ReuseableScaffold(
      appbar: true,
      text: "Sign In",
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
                key: signIn,
                child: Column(
                  children: [
                    ReusableFormField(
                      controller: emailcontroller,
                      hint: "Email",
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ReusableFormField(
                      obscureText: true,
                      controller: passwordcontroller,
                      hint: "Password",
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a password";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ReuseableButton(
                      bgcolor: kPrimaryGreenColor,
                      text: "Sign In",
                      textcolor: kvverylightColor,
                      ontap: () {
                        if (signIn.currentState!.validate()) {}
                        context.push("/myApp");
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push("/forgotpassword");
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forgot Password?",
                          style: textPoppions.bodyLarge!.copyWith(
                            fontSize: 12.sp,
                            color: kPrimaryGreenColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push("/signup");
                      },
                      child: RichText(
                        text: TextSpan(
                            text: "Don't have an account yet? ",
                            style: textPoppions.bodyLarge!.copyWith(
                              fontSize: 12.sp,
                              color: kPrimarylightColor,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                text: "SignUp",
                                style: textPoppions.bodyLarge!.copyWith(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12.sp,
                                  color: kPrimaryGreenColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

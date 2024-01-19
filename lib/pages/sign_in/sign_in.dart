import 'package:flutter/material.dart';
import 'package:flutter_rust_complete/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                const Center(
                  child: reusableText(text: "Or use your email account login"),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 50.h,
                  ),
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const reusableText(text: "Email"),
                      SizedBox(height: 3.h),
                      const BuildTextField(
                        hintText: "Enter your email address",
                        textType: "email",
                        iconName: "user",
                      ),
                      const reusableText(text: "Password"),
                      SizedBox(height: 3.h),
                      const BuildTextField(
                        hintText: "Enter your password",
                        textType: "password",
                        iconName: "lock",
                      ),
                    ],
                  ),
                ),
                const forgotPassword(),
                const BuildLogInAndRegButton(
                  buttonName: "Log in",
                  buttonType: "login",
                ),
                const BuildLogInAndRegButton(
                  buttonName: "Sign up",
                  buttonType: "register",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

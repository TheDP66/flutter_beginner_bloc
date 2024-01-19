import 'package:flutter/material.dart';
import 'package:flutter_rust_complete/common/values/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(.3),
        // height define the thickness fo the line
        height: .5,
      ),
    ),
    title: Text(
      "Log In",
      style: TextStyle(
        color: AppColors.primaryText.withOpacity(.5),
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

// we need context for accessing bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Center(
    child: Container(
      width: 200.w,
      margin: EdgeInsets.only(
        top: 30.h,
        bottom: 15.h,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableIcons(iconName: "google"),
          _reusableIcons(
            iconName: "apple",
          ),
          _reusableIcons(iconName: "facebook"),
        ],
      ),
    ),
  );
}

// ignore: camel_case_types
class _reusableIcons extends StatelessWidget {
  const _reusableIcons({
    required this.iconName,
  });

  final String iconName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 35.w,
        height: 35.w,
        child: Image.asset("assets/icons/$iconName.png"),
      ),
    );
  }
}

// ignore: camel_case_types
class reusableText extends StatelessWidget {
  const reusableText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 5.h,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey.withOpacity(.5),
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {super.key,
      required this.hintText,
      required this.textType,
      required this.iconName});

  final String hintText;
  final String textType;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.h,
      height: 40.h,
      margin: EdgeInsets.only(
        bottom: 20.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.w),
        ),
        border: Border.all(
          color: AppColors.primaryFourElementText,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 17.w,
            ),
            width: 16.w,
            height: 50.w,
            child: Image.asset("assets/icons/$iconName.png"),
          ),
          SizedBox(
            width: 270.w,
            height: 40.h,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: 12.sp,
              ),
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: hintText,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                hintStyle: TextStyle(
                  color: AppColors.primarySecondaryElementText.withOpacity(.5),
                ),
              ),
              autocorrect: false,
              obscureText: textType == "password" ? true : false,
            ),
          ),
        ],
      ),
    );
  }
}

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.w,
      ),
      width: 260.h,
      height: 44.h,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "Forgot password",
          style: TextStyle(
            color: AppColors.primaryText,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryText,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}

class BuildLogInAndRegButton extends StatelessWidget {
  const BuildLogInAndRegButton(
      {super.key, required this.buttonName, required this.buttonType});

  final String buttonName;
  final String buttonType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 45.h,
        width: 325.w,
        margin: EdgeInsets.fromLTRB(
          25.w,
          buttonType == "login" ? 40.h : 20.h,
          25.w,
          0,
        ),
        decoration: BoxDecoration(
          color: buttonType == "login"
              ? AppColors.primaryElement
              : AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(
            // check for registration button border color
            color: buttonType == "login"
                ? Colors.transparent
                : AppColors.primaryFourElementText,
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2),
              color: Colors.grey.withOpacity(.1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: buttonType == "login"
                  ? AppColors.primaryBackground
                  : AppColors.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        // height define the thickness fo the line
        height: 1.0,
      ),
    ),
    title: Text(
      "Log In",
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

// we need context for accessing bloc
Widget buildThridPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      top: 40.h,
      bottom: 20.h,
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
        width: 40.w,
        height: 40.w,
        child: Image.asset("icons/$iconName.png"),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          // responsive for mobile devices
          width: 375.w,
          child: Stack(
            children: [
              PageView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 345.w,
                        height: 345.h,
                        child: const Text(
                          "Image one",
                        ),
                      ),
                      Container(
                        child: Text(
                          "First See Learning",
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: 375.w,
                        padding: EdgeInsets.only(
                          left: 30.2,
                          right: 30.w,
                        ),
                        child: Text(
                          "Forget about a for of paper all knowledge in one learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(.5),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 325.w,
                        height: 50.h,
                        margin: EdgeInsetsDirectional.only(
                          top: 100.h,
                          start: 25.w,
                          end: 25.w,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.w),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 10,
                              blurRadius: 20,
                              offset: const Offset(10, 10),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../my_state/mystate.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_images/app_images.dart';
import '../utils/app_text_styles/app_styles.dart';
import '../view/home_screen/home_screen.dart';
import '../widgets/custom_text/custom_text.dart';


class BottomNavigatorExample extends StatefulWidget {
  const BottomNavigatorExample({Key? key}) : super(key: key);

  @override
  _BottomNavigatorExampleState createState() => _BottomNavigatorExampleState();
}

class _BottomNavigatorExampleState extends State<BottomNavigatorExample> {
  MyState myState = MyState();

  int currentTab = 0;
  bool onTap = true;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen =  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      // useInheritedMediaQuery: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.btnColor,
            onPressed: () {
              // myState.showBottomSheet(context);
            },
            shape: const CircleBorder(),
            child:  SvgPicture.asset(
              AppImages.bottom3,
              width: 24.w,
              height: 24.h,
              color: AppColors.whiteColor,
            ),
          ),
          body: PageStorage(
            bucket: bucket,
            child: currentScreen,
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 6,
            height: 85.h,
            shape: const CircularNotchedRectangle(),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen =  HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,


                      children: [
                        Image.asset(
                          AppImages.bottom1png,
                          width: 24.w,
                          height: 24.h,
                          color: currentTab == 0
                              ? AppColors.btnColor
                              : AppColors.blackColor,
                        ),
                        CustomText(
                            text: "Home",
                            style: AppTextStyles.fontSize12To400.copyWith(
                              fontSize: 10.sp,
                              color: currentTab == 0
                                  ? AppColors.btnColor
                                  : AppColors.blackColor,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen =  Container();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.bottom2,
                          width: 24.w,
                          height: 24.h,
                          color: currentTab == 1
                              ? AppColors.btnColor
                              : AppColors.blackColor,
                        ),
                        CustomText(
                            text: "Invite",
                            style: AppTextStyles.fontSize12To400.copyWith(
                              fontSize: 10.sp,
                              color: currentTab == 1
                                  ? AppColors.btnColor
                                  : AppColors.blackColor,
                            ))
                      ],
                    ),
                  ),
                   SizedBox(width: 20.w),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen =  Container();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.bottom4,
                          width: 24.w,
                          height: 24.h,
                          color: currentTab == 2
                              ? AppColors.btnColor
                              : AppColors.blackColor,

                        ),
                        CustomText(
                            text: "Report",
                            style: AppTextStyles.fontSize12To400.copyWith(
                              fontSize: 10.sp,
                              color: currentTab == 2
                                  ? AppColors.btnColor
                                  : AppColors.blackColor,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentScreen =  Container();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.bottom5,
                          width: 24.w,
                          height: 24.h,
                          color: currentTab == 3
                              ? AppColors.btnColor
                              : AppColors.blackColor,

                        ),
                        CustomText(
                            text: "Account",
                            style: AppTextStyles.fontSize12To400.copyWith(
                              fontSize: 10.sp,
                              color: currentTab == 3
                                  ? AppColors.btnColor
                                  : AppColors.blackColor,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



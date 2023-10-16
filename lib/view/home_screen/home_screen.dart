import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_images/app_images.dart';
import '../../utils/app_text_styles/app_styles.dart';
import '../../widgets/custom_text/custom_text.dart';
import 'custom_container/container.dart';

class HomeScreen extends StatefulWidget {

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 23.w, right: 27.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImages.logoImage,
                      width: 99.w,
                      height: 27.h,
                    ),
                     Spacer(),
                    SvgPicture.asset(
                      AppImages.notificationImage,
                      width: 19.w,
                      height: 21.h,
                    ),
                    SizedBox(width: 28), // To create a gap between actions
                    SvgPicture.asset(
                      AppImages.menuImage,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ],
                ),


                Padding(
                  padding: EdgeInsets.only(top: 37.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.lightGreenColor,
                        ),
                        child: Center(
                          child: CustomText(
                              text: "JD",
                              style: AppTextStyles.fontSize20To700
                                  .copyWith(fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.27.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: "Good Morning",
                                style: AppTextStyles.fontSize12To400),
                            CustomText(
                                text: "John D.",
                                style: AppTextStyles.fontSize20To700),
                          ],
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        AppImages.qrImage,
                        width: 29.w,
                        height: 29.h,
                      ),
                      SizedBox(
                        width: 30.w,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 34.h,
                ),
                Stack(
                  children: [
                    Container(
                      height: 110.h,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          top: 26.h, left: 18.w, right: 29.w, bottom: 0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.bgBlackPngImage),
                            ),
                      ),
                      child: SizedBox(
                        height: 56,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                    text: "Current Balance",
                                    style: AppTextStyles.fontSize12To400.copyWith(
                                        color: const Color(0xFFC3C3C3))),
                                const Spacer(),
                                SvgPicture.asset(
                                  AppImages.refresherImage,
                                  width: 36.w,
                                  height: 36,
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 108,
                                  child: Text(
                                    _isVisible ? "\$46789.46" : "*********",
                                    style: AppTextStyles.fontSize20To700.copyWith(color: Colors.white),
                                  ),
                                ),

                                SizedBox(width: 12.w,),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isVisible = ! _isVisible;
                                      });
                                    },
                                    icon: Icon(
                                      _isVisible ?Icons.visibility_off_outlined : Icons.visibility_outlined,
                                      size: 20,
                                      color: AppColors.whiteColor,
                                    ))
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.h,
                      right: 0,
                      child: Container(
                        height: 28.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: AppColors.btnColor,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "+",
                                style: AppTextStyles.fontSize12To400
                                    .copyWith(color: AppColors.whiteColor,fontSize: 20),
                              ),
                              CustomText(
                                text: "Add Funds",
                                style: AppTextStyles.fontSize12To400
                                    .copyWith(color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 36.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomContainer(
                          width: 49.w,
                          height: 49.w,
                          image: AppImages.topUpImage,
                          svgWidth: 16.w,
                          svgHeight: 26.h,
                          isSvgImage: true,
                          color: AppColors.bgColor1,
                          borderRadius: BorderRadius.circular(24.5.r),
                        ),
                        SizedBox(
                          height: 9.8.h,
                        ),
                        CustomText(
                            text: "Top Up",
                            style: AppTextStyles.fontSize12To400
                                .copyWith(color: AppColors.blackColor))
                      ],
                    ),
                    Column(
                      children: [
                        CustomContainer(
                          width: 49.w,
                          height: 49.w,

                          // padding: EdgeInsets.only(top: 4.h,left: 8.w,right: 8.w,bottom: 4.h),
                          image: AppImages.transferImage,
                          svgWidth: 24.w,
                          svgHeight: 24.h,
                          isSvgImage: true,
                          color: AppColors.bgColor2,
                          borderRadius: BorderRadius.circular(24.5.r),
                        ),
                        SizedBox(
                          height: 9.8.h,
                        ),
                        CustomText(
                            text: "Transfer",
                            style: AppTextStyles.fontSize12To400
                                .copyWith(color: AppColors.blackColor))
                      ],
                    ),
                    Column(
                      children: [
                        CustomContainer(
                          width: 49.w,
                          height: 49.w,
                          image: AppImages.withdrawImage,
                          isSvgImage: true,
                          color: AppColors.bgColor3,
                          svgWidth: 24.w,
                          svgHeight: 24.h,
                          borderRadius: BorderRadius.circular(24.5.r),
                        ),
                        SizedBox(
                          height: 9.8.h,
                        ),
                        CustomText(
                            text: "Withdraw",
                            style: AppTextStyles.fontSize12To400
                                .copyWith(color: AppColors.blackColor))
                      ],
                    ),
                    Column(
                      children: [
                        CustomContainer(
                          width: 49.w,
                          height: 49.w,

                          // padding: EdgeInsets.only(top: 4.h,left: 8.w,right: 8.w,bottom: 4.h),
                          image: AppImages.moreImage,
                          isSvgImage: true,
                          color: AppColors.bgColor4,
                          svgWidth: 24.w,
                          svgHeight: 24.h,
                          borderRadius: BorderRadius.circular(24.5.r),
                        ),
                        SizedBox(
                          height: 9.8.h,
                        ),
                        CustomText(
                            text: "More",
                            style: AppTextStyles.fontSize12To400
                                .copyWith(color: AppColors.blackColor))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  AppImages.getStartedImage,
                  // width: 335.w,
                  height: 39.3.h,
                ),
                SizedBox(
                  height: 27.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                        text: "Recent Activity",
                        style: AppTextStyles.fontSize20To700.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                    CustomText(
                        text: "See all",
                        style: AppTextStyles.fontSize12To400.copyWith(
                          color: AppColors.btnColor,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),

                /// jazz
                Container(
                  height: 63.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: const Color(0xffF6F6F6))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: CustomContainer(
                          width: 50.w,
                          height: 50.w,
                          // padding: EdgeInsets.only(top: 4.h,left: 8.w,right: 8.w,bottom: 4.h),
                          image: AppImages.jazzImage,
                          pngWidth: 50.8.w,
                          pngHeight: 50.8.h,
                          isSvgImage: false,
                          color: AppColors.jazzBgColor,
                          borderRadius: BorderRadius.circular(20.4.r),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.42.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Paid Money",
                              style: AppTextStyles.fontSize12To400.copyWith(
                                  fontSize: 14.sp, color: AppColors.blackColor),
                            ),
                            SizedBox(height: 4),
                            CustomText(
                                text: "From: Mobile Prepaid Card",
                                style: AppTextStyles.fontSize12To400.copyWith(
                                  color: const Color(0xffA9A9A9),
                                  fontSize: 10.sp,
                                )),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 31.w),
                        child: CustomText(
                            text: "\$550",
                            style: AppTextStyles.fontSize12To400.copyWith(
                                fontSize: 14.sp, color: AppColors.blackColor)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.5.h,
                ),

                /// eaisy paisa
                Container(
                  height: 63.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: const Color(0xffF6F6F6))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: CustomContainer(
                          width: 50.w,
                          height: 50.w,
                          // padding: EdgeInsets.only(top: 4.h,left: 8.w,right: 8.w,bottom: 4.h),
                          image: AppImages.easyPaisaImage,
                          svgWidth: 37.8.w,
                          svgHeight: 37.8.h,

                          isSvgImage: false,
                          color: AppColors.easyBgColor,
                          borderRadius: BorderRadius.circular(20.4.r),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.42.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Refund Money",
                              style: AppTextStyles.fontSize12To400.copyWith(
                                  fontSize: 14.sp, color: AppColors.blackColor),
                            ),
                            SizedBox(height: 4,),
                            CustomText(
                                text: "From: Top Up",
                                style: AppTextStyles.fontSize12To400.copyWith(
                                  color: const Color(0xffA9A9A9),
                                  fontSize: 10.sp,
                                )),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 31.w),
                        child: CustomText(
                            text: "\$470",
                            style: AppTextStyles.fontSize12To400.copyWith(
                                fontSize: 14.sp, color: AppColors.blackColor)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.5.h,
                ),

                Container(
                  height: 62.h,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: const Color(0xffF6F6F6))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: CustomContainer(
                          width: 50.w,
                          height: 50.w,
                          // padding: EdgeInsets.only(top: 4.h,left: 8.w,right: 8.w,bottom: 4.h),
                          image: AppImages.zongImage,
                          pngWidth: 37.8.w,
                          pngHeight: 11.8.h,

                          isSvgImage: false,
                          color: AppColors.zongBgColor,
                          borderRadius: BorderRadius.circular(20.4.r),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.42.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Mobile Recharge",
                              style: AppTextStyles.fontSize12To400.copyWith(
                                  fontSize: 14.sp, color: AppColors.blackColor),
                            ),
                            SizedBox(height: 4,),
                            CustomText(
                                text: "From: Prepaid",
                                style: AppTextStyles.fontSize12To400.copyWith(
                                  color: const Color(0xffA9A9A9),
                                  fontSize: 10.sp,
                                )),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 31.w),
                        child: CustomText(
                            text: "\$280",
                            style: AppTextStyles.fontSize12To400.copyWith(
                                fontSize: 14.sp, color: AppColors.blackColor)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

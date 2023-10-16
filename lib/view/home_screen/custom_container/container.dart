import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final String image;
  final BorderRadiusGeometry? borderRadius;
  EdgeInsetsGeometry? padding;
  final bool isSvgImage;
  double? width;
  double? height;
  double? svgWidth;
  double? svgHeight;
  double? pngWidth;
  double? pngHeight;

  CustomContainer({
    super.key,
    this.color,
    required this.image,
    this.borderRadius,
    this.padding,
    this.isSvgImage = true,
    this.width = 44,
    this.height = 44,
    this.svgWidth = 31,
    this.svgHeight = 34,
    this.pngWidth = 31,
    this.pngHeight = 34,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: isSvgImage
            ? SvgPicture.asset(image, width: svgWidth, height: svgHeight)
            : Image.asset(image, width: pngWidth, height: pngHeight),
      ),
    );
  }
}

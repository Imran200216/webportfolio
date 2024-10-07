import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webportfolio/constants/colors.dart';

class CustomSocialMediaBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String svgPath;
  final double svgHeight;
  final double svgWidth;

  const CustomSocialMediaBtn({
    super.key,
    required this.onTap,
    required this.svgPath,
    required this.svgHeight,
    required this.svgWidth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF8F8F9),
        ),
        child: Center(
          child: SvgPicture.asset(
            "assets/images/svg/$svgPath.svg",
            height: svgHeight,
            width: svgWidth,
            fit: BoxFit.cover,
            color: AppColors.blackColor,
          ),
        ),
      ),
    );
  }
}

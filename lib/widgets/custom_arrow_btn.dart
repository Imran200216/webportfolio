import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webportfolio/constants/colors.dart';

class CustomArrowBtn extends StatelessWidget {
  final VoidCallback onTap;

  const CustomArrowBtn({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.secondaryColor,
        ),
        child: Center(
          child: SvgPicture.asset(
            "assets/images/svg/arrow-up-right-icon.svg",
            height: 24,
            width: 24,
            fit: BoxFit.cover,
            color: AppColors.blackColor,
          ),
        ),
      ),
    );
  }
}

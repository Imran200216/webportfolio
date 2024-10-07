import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webportfolio/constants/colors.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';

class CustomProjectCard extends StatelessWidget {
  final VoidCallback onTap;
  final String cardTitle;
  final String cardSubTitle;
  final Color cardColor;
  final double cardHeight;
  final double cardWidth;

  const CustomProjectCard({
    super.key,
    required this.onTap,
    required this.cardTitle,
    required this.cardSubTitle,
    required this.cardColor,
    required this.cardHeight,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(26),
        color: cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardTitle,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        color: Color(0xFFEDEBF9),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    sHeight(6),
                    Text(
                      cardSubTitle,
                      style: const TextStyle(
                        fontFamily: "OpenSans",
                        color: Color(0xFFDBD6FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                /// ring sizer app
                InkWell(
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
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /// ring sizer img
          ],
        ),
      ),
    );
  }
}

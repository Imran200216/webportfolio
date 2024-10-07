import 'package:flutter/material.dart';
import 'package:webportfolio/constants/colors.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';
import 'package:webportfolio/widgets/custom_social_media_btn.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFF4DC9E),
            Color(0xFFD1F1E1),
            Color(0xFFF1F1F1),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 40,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Want to work together?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor,
                fontSize: 36,
                fontFamily: "OpenSans",
              ),
            ),
            sHeight(10),
            const Text(
              "Feel free to reach out for collaborations or just a friendly hello",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF434342),
                fontSize: 14,
                fontFamily: "OpenSans",
              ),
            ),
            sHeight(10),
            const Text(
              "imranbabuji162002@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF434342),
                fontSize: 14,
                fontFamily: "OpenSans",
              ),
            ),
            sHeight(20),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xFF1C1D1C),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    "Contact me",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "OpenSans",
                    ),
                  ),
                ),
              ),
            ),
            sHeight(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// figma portfolio
                CustomSocialMediaBtn(
                  onTap: () {},
                  svgPath: "dribbble-icon",
                  svgHeight: 22,
                  svgWidth: 22,
                ),

                sWidth(20),

                /// instagram portfolio
                CustomSocialMediaBtn(
                  onTap: () {},
                  svgPath: "insta-icon",
                  svgHeight: 28,
                  svgWidth: 28,
                ),

                sWidth(20),

                ///  play store
                CustomSocialMediaBtn(
                  onTap: () {},
                  svgPath: "playstore-icon",
                  svgHeight: 24,
                  svgWidth: 24,
                ),

                sWidth(20),

                ///  linked in
                CustomSocialMediaBtn(
                  onTap: () {},
                  svgPath: "linkedin-icon",
                  svgHeight: 22,
                  svgWidth: 22,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

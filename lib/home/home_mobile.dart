import 'package:flutter/material.dart';
import 'package:webportfolio/Contact/contact_mobile.dart';
import 'package:webportfolio/Project/project_mobile.dart';
import 'package:webportfolio/constants/colors.dart';
import 'package:webportfolio/home/home_widgets.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';
import 'package:webportfolio/widgets/custom_social_media_btn.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sHeight(10),

        /// nav bar
        HomeWidgets().homeMobileTab,

        sHeight(40),

        /// photo
        Container(
          height: 420,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/jpg/imran.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        sHeight(20),

        /// intro
        Container(
          height: 460,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFF4DC9E), // Light Yellow
                Color(0xFFD1F1E1), // Light Green
                Color(0xFFF1F1F1), // Light Blue
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
                  "Hello, I’m Imran, a Flutter Developer and UI/UX Designer.",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackColor,
                    fontSize: 30,
                    fontFamily: "OpenSans",
                  ),
                ),
                sHeight(40),
                const Text(
                  "I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF434342),
                    fontSize: 14,
                    fontFamily: "OpenSans",
                  ),
                ),
                sHeight(40),

                /// contact me
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
                    /// dribbble portfolio
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
        ),

        sHeight(20),

        /// projects
        const ProjectMobile(),

        sHeight(20),

        /// contact
        const ContactMobile(),
        sHeight(20),
      ],
    );
  }
}

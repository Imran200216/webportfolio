import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webportfolio/Contact/contact_web.dart';
import 'package:webportfolio/Project/project_web.dart';
import 'package:webportfolio/constants/colors.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';
import 'package:webportfolio/widgets/custom_social_media_btn.dart';

import 'home_widgets.dart';

GlobalKey key1 = GlobalKey();
GlobalKey key2 = GlobalKey();
GlobalKey key3 = GlobalKey();

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Column(
        children: [
          /// nav bar
          HomeWidgets().homeNavWeb,
          sHeight(40),

          /// intro
          Row(
            children: [
              Container(
                height: 500,
                width: 740,
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
                          fontSize: 36,
                          fontFamily: "OpenSans",
                        ),
                      ),
                      sHeight(40),
                      const Text(
                        "I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF434342),
                          fontSize: 16,
                          fontFamily: "OpenSans",
                        ),
                      ),
                      sHeight(120),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 190,
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
                          sWidth(20),

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
              ),
              sWidth(30),

              /// photo
              Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/jpg/imran.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          sHeight(20),

          /// projects
          const ProjectWeb(),
          sHeight(20),

          /// contacts
          const ContactWeb(),
          sHeight(20),
        ],
      );
    });
  }
}

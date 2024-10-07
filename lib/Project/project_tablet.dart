import 'package:flutter/material.dart';
import 'package:webportfolio/widgets/custom_project_card.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';

class ProjectTablet extends StatelessWidget {
  const ProjectTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProjectCard(
          cardHeight: 500,
          cardWidth: double.infinity,
          onTap: () {},
          cardTitle: "Ring Sizer",
          cardSubTitle: "Easy measurement for your ring",
          cardColor: const Color(0xFF6A5DE5),
        ),
        sHeight(20),
        CustomProjectCard(
          cardHeight: 500,
          cardWidth: double.infinity,
          onTap: () {},
          cardTitle: "Ring Sizer",
          cardSubTitle: "Easy measurement for your ring",
          cardColor: const Color(0xFF6A5DE5),
        ),
        sHeight(20),
        CustomProjectCard(
          cardHeight: 500,
          cardWidth: double.infinity,
          onTap: () {},
          cardTitle: "Ring Sizer",
          cardSubTitle: "Easy measurement for your ring",
          cardColor: const Color(0xFF6A5DE5),
        ),
        sHeight(20),
        CustomProjectCard(
          cardHeight: 500,
          cardWidth: double.infinity,
          onTap: () {},
          cardTitle: "Ring Sizer",
          cardSubTitle: "Easy measurement for your ring",
          cardColor: const Color(0xFF6A5DE5),
        ),
        sHeight(20),
        CustomProjectCard(
          cardHeight: 500,
          cardWidth: double.infinity,
          onTap: () {},
          cardTitle: "Ring Sizer",
          cardSubTitle: "Easy measurement for your ring",
          cardColor: const Color(0xFF6A5DE5),
        ),
      ],
    );
  }
}

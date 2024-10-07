import 'package:flutter/material.dart';
import 'package:webportfolio/widgets/custom_project_card.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';

class ProjectWeb extends StatelessWidget {
  const ProjectWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// ring sizer
            CustomProjectCard(
              cardWidth: 520,
              cardHeight: 500,
              onTap: () {},
              cardTitle: "Ring Sizer",
              cardSubTitle: "Easy measurement for your ring",
              cardColor: const Color(0xFF6A5DE5),
            ),

            sWidth(20),

            /// Marvel App
            CustomProjectCard(
              cardWidth: 520,
              cardHeight: 500,
              onTap: () {},
              cardTitle: "Marvel App",
              cardSubTitle: "Great Powers comes with great responsibility",
              cardColor: const Color(0xFF303542),
            ),
          ],
        ),
        sHeight(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Wanderlust compass
            CustomProjectCard(
              cardWidth: 520,
              cardHeight: 500,
              onTap: () {},
              cardTitle: "Easy Maths",
              cardSubTitle: "Maths makes you brilliant",
              cardColor: const Color(0xFF161716),
            ),

            sWidth(20),

            /// Marvel App
            CustomProjectCard(
              cardWidth: 520,
              cardHeight: 500,
              onTap: () {},
              cardTitle: "Wanderlust Compass",
              cardSubTitle: "Great Powers comes with great responsibility",
              cardColor: const Color(0xFF4F4E56),
            ),
          ],
        ),
      ],
    );
  }
}

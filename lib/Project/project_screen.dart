import 'package:flutter/cupertino.dart';
import 'package:webportfolio/Project/project_mobile.dart';
import 'package:webportfolio/Project/project_tablet.dart';
import 'package:webportfolio/Project/project_web.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1100,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14,
            right: 14,
            top: 14,
          ),
          child: Column(
            children: [
              /// nav bar
              if (size.width > 950)
                const ProjectWeb()
              else if (size.width > 750)
                const ProjectTablet()
              else
                const ProjectMobile()
            ],
          ),
        ),
      ),
    );
  }
}

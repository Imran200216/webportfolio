import 'package:flutter/material.dart';

import 'home_widgets.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: HomeWidgets().homeNavTab,
    );
  }
}

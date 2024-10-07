import 'package:flutter/cupertino.dart';
import 'package:webportfolio/home/home_widgets.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: HomeWidgets().homeMobileTab,
    );
  }
}

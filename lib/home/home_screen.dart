import 'package:flutter/material.dart';
import 'package:webportfolio/home/home_mobile.dart';
import 'package:webportfolio/home/home_tablet.dart';
import 'package:webportfolio/home/home_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                    const HomeWeb()
                  else if (size.width > 750)
                    const HomeTablet()
                  else
                    const HomeMobile(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

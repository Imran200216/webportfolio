import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webportfolio/constants/colors.dart';
import 'package:webportfolio/widgets/custom_sizedbox.dart';
import 'package:webportfolio/widgets/custom_text_btn.dart';
import 'home_web.dart';

final homeHeroCounter = StateProvider<int>((ref) {
  return 0;
});

class HomeWidgets {
  /// home nav web
  Widget get homeNavWeb {
    List<String> navItems = ['Home', 'Projects', 'Contact'];

    void scrollToSection(GlobalKey key) {
      Scrollable.ensureVisible(key.currentContext!,
          duration: const Duration(
            seconds: 1,
          ),
          curve: Curves.linear);
    }

    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              /// yellow container
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
              ),

              sWidth(10),

              /// text
              Text(
                "MR DEV",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 16,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            children: [
              for (String item in navItems)
                CustomTextBtn(
                  onTap: () {
                    GlobalKey key = GlobalKey();
                    if (item.toLowerCase() == 'home') {
                      key = key1;
                    } else if (item.toLowerCase() == 'projects') {
                      key = key2;
                    } else {
                      key = key3;
                    }
                    scrollToSection(key);
                    // context.go('/$item');
                  },
                  title: item,
                  textBtnColor: AppColors.navBarSelectedColor,
                  fontSize: 16,
                ),
            ],
          ),
        ],
      );
    });
  }

  /// home nav tab
  Widget get homeNavTab {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              /// yellow container
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
              ),

              /// text
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  "MR DEV",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 16,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),

          /// IconButton to open end drawer
          IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.blackColor,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      );
    });
  }

  /// home nav mobile
  Widget get homeMobileTab {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              /// yellow container
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
              ),

              /// text
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  "MR DEV",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 16,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),

          /// IconButton to open end drawer
          IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.blackColor,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      );
    });
  }
}

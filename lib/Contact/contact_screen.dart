import 'package:flutter/cupertino.dart';
import 'package:webportfolio/Contact/contact_mobile.dart';
import 'package:webportfolio/Contact/contact_tab.dart';
import 'package:webportfolio/Contact/contact_web.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
                const ContactWeb()
              else if (size.width > 750)
                const ContactTab()
              else
                const ContactMobile()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/widgets/tech_icon.dart';
import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
  });
  void launchEmail() async {
    String email = Uri.encodeComponent(Constants.CONFIG["contactEmail"]);

    var url = Uri.parse("mailto:$email?");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: context.isDesktop
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          TechStackIcon(
            stackName: "LinkedIn",
            onTap: () {
              launchUrl(Uri.parse(Constants.CONFIG["linkedIn"]));
            },
          ),
          18.hSpace,
          TechStackIcon(
            stackName: "GitHub",
            onTap: () {
              launchUrl(Uri.parse(Constants.CONFIG["git"]));
            },
          ),
          18.hSpace,
          TechStackIcon(
            stackName: "Gmail",
            onTap: () {
              launchEmail();
            },
          ),
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';
import 'package:SaiMurali/widgets/find_me_icon.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      FindMeIcon(
        icon: Ionicons.logo_linkedin,
        uri: Constants.CONFIG["linkedIn"],
      ),
      18.hSpace,
      FindMeIcon(
        icon: Ionicons.logo_github,
        uri: Constants.CONFIG["git"],
      ),
      18.hSpace,
      const FindMeIcon(
        icon: Ionicons.logo_google,
        uri: "muralikrishna2354@gmail.com",
      ),
    ]);
  }
}

import 'package:SaiMurali/widgets/social_media.dart';
import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';
import 'package:SaiMurali/widgets/about_me.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.width(2).vSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Hey ",
                  style: context.textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: context.isMobile ? 25 : null,
                  ),
                ),
                Image.asset(
                  Constants.CONFIG["wave"],
                  height: context.isMobile ? 30 : 38,
                ),
                if (!context.isMobile) const MyName(),
              ],
            ),
            if (context.isDesktop) const SocialMediaWidget(),
          ],
        ),
        13.vSpace,
        if (context.isMobile) const MyName(),
        20.vSpace,
        const TechStacksText(),
        context.height(2).vSpace,
      ],
    );
  }
}

class MyName extends StatelessWidget {
  const MyName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${!context.isMobile ? ', ' : ''}${Constants.CONFIG["name"]}",
      style: context.textTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: context.isMobile ? 25 : null,
      ),
    );
  }
}

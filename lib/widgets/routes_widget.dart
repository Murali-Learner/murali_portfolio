import 'package:SaiMurali/utils/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:SaiMurali/controllers/home_controller.dart';
import 'package:SaiMurali/widgets/animated_under_line_text.dart';
import 'package:SaiMurali/widgets/vertical_divider.dart';

class RoutesWidget extends StatelessWidget {
  const RoutesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
    return IntrinsicHeight(
      child: Row(
        children: [
          AnimatedUnderlineText(
              text: "Home",
              onTap: () {
                controller.scrollController.animateTo(
                  controller.scrollController.position.minScrollExtent,
                  duration:
                      Duration(milliseconds: context.isDesktop ? 400 : 800),
                  curve: Curves.ease,
                );
                // controller.goto(0);
              }),
          const GlobalDivider(),
          AnimatedUnderlineText(
            text: "Skills",
            onTap: () {
              controller.goto(1);
            },
          ),
          const GlobalDivider(),
          AnimatedUnderlineText(
            text: "Experience",
            onTap: () {
              controller.goto(2);
            },
          ),
          const GlobalDivider(),
          AnimatedUnderlineText(
            text: "Projects",
            onTap: () {
              controller.goto(3);
            },
          ),
          // const GlobalDivider(),
          // AnimatedUnderlineText(
          //   text: "Contact",
          //   onTap: () {
          //     controller.goto(4);
          //   },
          // ),
          const GlobalDivider(),
        ],
      ),
    );
  }
}

import 'package:SaiMurali/widgets/social_media.dart';
import 'package:flutter/material.dart';
import 'package:SaiMurali/controllers/home_controller.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';
import 'package:SaiMurali/widgets/animated_under_line_text.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeController>();

    return Container(
      decoration: BoxDecoration(
        color: Constants.backgroundColor,
      ),
      width: context.isTablet ? context.width(40) : context.width(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
            child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: context.isTablet ? 35 : null,
                    color: context.theme.primaryColor,
                  ),
                  onPressed: () {
                    Scaffold.of(context).closeEndDrawer();
                    // setState(() {
                    //   expanded ? controller.forward() : controller.reverse();
                    //   expanded = !expanded;
                    // });
                  },
                )),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              AnimatedUnderlineText(
                  text: "Home",
                  onTap: () {
                    Scaffold.of(context).closeEndDrawer();
                  }),
              20.vSpace,
              AnimatedUnderlineText(
                text: "Skills",
                onTap: () {
                  controller.goto(1);
                  Scaffold.of(context).closeEndDrawer();
                },
              ),
              20.vSpace,
              AnimatedUnderlineText(
                text: "Experience",
                onTap: () {
                  controller.goto(2);
                  Scaffold.of(context).closeEndDrawer();
                },
              ),
              20.vSpace,
              AnimatedUnderlineText(
                text: "Projects",
                onTap: () {
                  controller.goto(3);
                  Scaffold.of(context).closeEndDrawer();
                },
              ),
              20.vSpace,
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse(Constants.CONFIG["resumeLink"]));
                  Scaffold.of(context).closeEndDrawer();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      style: BorderStyle.solid,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: AnimatedUnderlineText(
                      text: "Resume",
                      onTap: () {
                        launchUrl(Uri.parse(Constants.CONFIG["resumeLink"]));
                        Scaffold.of(context).closeEndDrawer();
                      }),
                ),
              ),
            ],
          ),
          const Spacer(),
          IntrinsicWidth(
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Contact",
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.green,
                    thickness: 2,
                  ),
                ),
              ],
            ),
          ),
          10.vSpace,
          SocialMediaWidget(),
          const Spacer(),
        ],
      ),
    );
  }
}

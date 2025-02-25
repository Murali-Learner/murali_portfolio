import 'package:SaiMurali/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/widgets/routes_widget.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeController>();

    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      sliver: SliverAppBar(
        pinned: true,
        surfaceTintColor: Colors.transparent,
        title: InkWell(
          overlayColor: Constants.overlayColor,
          onTap: () {
            controller.scrollController.animateTo(
              controller.scrollController.position.minScrollExtent,
              duration: Duration(milliseconds: context.isDesktop ? 400 : 800),
              curve: Curves.ease,
            );
          },
          child: Text(
            "SM",
            style: Constants.headline(context,
                fontSize: context.isMobile ? 25 : 35),
          ),
        ),
        actions: [
          if (context.isDesktop) const RoutesWidget(),
          if (context.isMobile || context.isTablet)
            Builder(builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  size: context.isTablet ? 35 : null,
                  color: context.theme.primaryColor,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                  debugPrint("statement");
                  // setState(() {
                  //   expanded ? controller.forward() : controller.reverse();
                  //   expanded = !expanded;
                  // });
                },
              );
            }),
        ],
        backgroundColor: Constants.backgroundColor,
        // flexibleSpace: FlexibleSpaceBar(
        //   background: Padding(
        //     padding: EdgeInsets.symmetric(
        //       vertical: 10.0,
        //       horizontal: context.isMobile ? context.width(5) : 0.0,
        //     ),
        //     child: const Header(),
        //   ),
        // ),
      ),
    );
  }
}

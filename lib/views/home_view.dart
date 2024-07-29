import 'package:flutter/material.dart';
import 'package:SaiMurali/widgets/app_bar_widget.dart';
import 'package:SaiMurali/widgets/drawer_widget.dart';
import 'package:provider/provider.dart';
import 'package:SaiMurali/controllers/home_controller.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';
import 'package:SaiMurali/widgets/list_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeController>();
    return SafeArea(
      child: Scaffold(
        endDrawer:
            context.isMobile || context.isTablet ? const DrawerWidget() : null,
        backgroundColor: Constants.backgroundColor,
        body: Center(
          child: SizedBox(
            width: context.isMobile
                ? null
                : context.isTablet
                    ? context.width(80)
                    : context.width(60),
            child: Center(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: context.height(0.5).vSpace,
                  ),
                  const AppBarWidget(),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: context.isMobile ? context.width(5) : 0.0,
                      ),
                      // width:
                      //     context.isMobile ? context.width(40) : context.width(60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: List.generate(
                              Constants.widgets.length,
                              (index) {
                                return ListWidget(
                                  key: controller.globalKeys[index],
                                  title: Constants.widgets.keys.toList()[index],
                                  child:
                                      Constants.widgets.values.toList()[index],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

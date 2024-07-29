import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/widgets/routes_widget.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (context.isDesktop) const RoutesWidget(),
      ],
    );
  }
}

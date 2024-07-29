import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
    required this.title,
    required this.child,
  });
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return title == "Contact" && (context.isMobile || context.isTablet)
        ? const SizedBox.shrink()
        : Padding(
            // key: ValueKey(title,
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != "Home")
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodyLarge!.copyWith(
                      // decoration: TextDecoration.underline,
                      fontSize: context.isMobile ? 25 : 35,
                      // decorationColor: Colors.green,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                if (title != "Home") 15.vSpace,
                child,
              ],
            ),
          );
  }
}

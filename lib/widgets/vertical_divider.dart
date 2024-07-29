import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/constants.dart';

class GlobalDivider extends StatelessWidget {
  const GlobalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      thickness: 2,
      width: 20,
      color: Constants.secondaryColor,
    );
  }
}

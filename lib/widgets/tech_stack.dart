import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:SaiMurali/utils/spacer_extension.dart';
import 'package:SaiMurali/widgets/tech_icon.dart';

class TechStackWidget extends StatelessWidget {
  const TechStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const TechStackIcon(
        stackName: "Flutter",
      ),
      18.hSpace,
      const TechStackIcon(
        stackName: "Dart",
      ),
      18.hSpace,
      const TechStackIcon(
        stackName: "Firebase",
      ),
      18.hSpace,
      const TechStackIcon(
        stackName: "Javascript",
      ),
      18.hSpace,
      const TechStackIcon(
        stackName: "HTML",
      ),
      18.hSpace,
      const TechStackIcon(
        stackName: "CSS",
      ),
      18.hSpace,
      const TechStackIcon(
        stackName: "GitHub",
      ),
      18.hSpace,
    ]);
  }
}

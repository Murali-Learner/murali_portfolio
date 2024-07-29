import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TechStackIcon extends StatefulWidget {
  const TechStackIcon({
    super.key,
    required this.stackName,
  });
  final String stackName;

  @override
  State<TechStackIcon> createState() => _TechStackIconState();
}

class _TechStackIconState extends State<TechStackIcon> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.stackName,
      decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
      child: InkWell(
        onHover: (value) {
          setState(() {
            onHover = value;
          });
        },
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            return Colors.transparent;
          },
        ),
        child: SvgPicture.asset(
          "assets/images/${widget.stackName.toLowerCase()}.svg",
          height: 30,
        ),

        // Icon(
        //   widget.stackName,
        //   size: 25,
        //   color: !onHover ? Constants.textColor : Constants.iconColor,
        // ),
      ),
    );
  }
}

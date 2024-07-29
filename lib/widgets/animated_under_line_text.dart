import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/context_extension.dart';

class AnimatedUnderlineText extends StatefulWidget {
  final String text;
  final Color underlineColor;
  final int duration;
  final double? fontSize;
  final GestureTapCallback onTap;

  const AnimatedUnderlineText({
    super.key,
    required this.text,
    this.underlineColor = Colors.green,
    this.duration = 200,
    this.fontSize = 16,
    required this.onTap,
  });

  @override
  AnimatedUnderlineTextState createState() => AnimatedUnderlineTextState();
}

class AnimatedUnderlineTextState extends State<AnimatedUnderlineText> {
  bool _isUnderlined = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isUnderlined = value;
        });
      },
      overlayColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          return Colors.transparent;
        },
      ),
      onTap: widget.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: context.textTheme.bodyLarge!.copyWith(
              color: Colors.green,
              fontSize: context.isTablet ? 20 : widget.fontSize,
            ),
          ),
          AnimatedContainer(
            duration: Duration(
                milliseconds: context.isDesktop ? widget.duration : 1000),
            height: 1,
            width: _isUnderlined ? widget.text.length * 9.0 : 0,
            color: widget.underlineColor,
          ),
        ],
      ),
    );
  }
}

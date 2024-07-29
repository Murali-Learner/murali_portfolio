import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FindMeIcon extends StatefulWidget {
  const FindMeIcon({
    super.key,
    required this.icon,
    required this.uri,
  });
  final IconData icon;
  final String uri;

  @override
  State<FindMeIcon> createState() => _FindMeIconState();
}

class _FindMeIconState extends State<FindMeIcon> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(widget.uri));
      },
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
      child: Icon(
        widget.icon,
        color: onHover ? Constants.iconColor : Constants.textColor,
      ),
    );
  }
}

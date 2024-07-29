import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/constants.dart';

class TechStacksText extends StatelessWidget {
  const TechStacksText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Constants.defaultTextStyle(
          context,
          wordSpacing: 2,
        ),
        children: <TextSpan>[
          const TextSpan(
            text:
                'Experienced Software Developer with 1.5 years of expertise crafting seamless user experiences using ',
          ),
          TextSpan(
            text: 'Flutter. ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          const TextSpan(
            text: 'Skilled in state management with ',
          ),
          TextSpan(
            text: 'Provider, ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'Get-X, ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'Bloc, ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'and ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'Riverpod, ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          const TextSpan(
            text: 'and proficient with databases like ',
          ),
          TextSpan(
            text: 'Hive ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'and ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'Firestore. ',
            style: Constants.defaultTextStyle(
              context,
              wordSpacing: 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          const TextSpan(
            text:
                'Adept in web sockets, REST API integration (HTTP and DIO), and working with Isolates for real-time innovation.',
          ),
        ],
      ),
    );
  }
}

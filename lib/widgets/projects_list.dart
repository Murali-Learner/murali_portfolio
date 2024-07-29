import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/constants.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/widgets/animated_under_line_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List<Widget>.from(
        Constants.CONFIG["projects"].map((project) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // alignment: WrapAlignment.spaceBetween,
                  // crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SizedBox(
                      width: context.isMobile
                          ? context.width(60)
                          : context.width(40),
                      child: Text(
                        project['title'] ?? '',
                        style: TextStyle(
                          fontSize: context.isMobile ? 18 : 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    AnimatedUnderlineText(
                      text: "View",
                      fontSize: 14,
                      onTap: () {
                        launchUrl(Uri.parse(project['link']));
                      },
                    ),

                    //  GestureDetector(
                    //   onTap: () {
                    //     // Implement your logic to open the link
                    //     print('Opening link: ${project['link']}');
                    //   },
                    //   child: Text(
                    //     project['link'] ?? '',
                    //     style:
                    //         const TextStyle(fontSize: 14, color: Colors.blue),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  project['summary'] ?? '',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

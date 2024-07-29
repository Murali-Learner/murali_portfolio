import 'package:flutter/material.dart';
import 'package:SaiMurali/utils/context_extension.dart';
import 'package:SaiMurali/widgets/experiences_list.dart';
import 'package:SaiMurali/widgets/home_route.dart';
import 'package:SaiMurali/widgets/projects_list.dart';
import 'package:SaiMurali/widgets/tech_stack.dart';

class Constants {
  static const Map<String, dynamic> CONFIG = {
    'avatarUrl': "assets/images/my_pic.jpg",
    'wave': "assets/images/wave.png",
    'rocket': "assets/images/rocket.png",
    'logo': "assets/images/logo.png",
    'name': 'Sai Murali M',
    'contactButton': 'Contact Me',
    'contactEmail': 'muralikrishna2354@gmail.com',
    "git": "https://github.com/Murali-Learner/",
    "linkedIn": "https://www.linkedin.com/in/sai-murali-m/",
    "resumeLink":
        "https://drive.google.com/file/d/1PyK2_jCbnbBK7URmBRQmnyS7m8PViT-d/view?usp=sharing",
    'experience': [
      {
        'company': 'KhataBazar',
        'position': 'Flutter Developer',
        'duration': 'Sep 2023 - Nov 2023',
        'description':
            'Developed the Hey Pockets application for individuals and businesses for several purposes using Flutter Flow and Flutter',
      },
      {
        'company': 'Techweblabs',
        'position': 'Flutter developer',
        'duration': 'Nov 2022 - Apr 2023',
        'description':
            'Developed Bizlify built with Flutter, which offers a friendly user interface with efficient functionality. Restaurant owners manage bookings, track inventory, and engage with customers through a user-friendly dashboard.',
      },
      {
        'company': 'PK Apps',
        'position': 'Flutter Developer',
        'duration': 'Feb 2022 - Sep 2022',
        'description':
            'Developed a Scuba Diving application using Flutter, featuring state management and REST API integration. Divers can post their experiences and share them with the community',
      },
    ],
    'projects': [
      {
        'title': 'LiveLynk',
        'summary':
            'LiveLynk is a Flutter-based cross-platform app for seamless user connections via invites. It employs Provider for state management and integrates Node.js, Express.js, and MongoDB for backend operations with real-time communication using Sockets and WebRTC. The ongoing development includes adding a video calling feature to enhance user interaction.',
        "link": "https://github.com/Murali-Learner/livelynk/blob/main/README.md"
      },
      {
        'title': 'Step-Timer',
        'summary':
            'Developed and published Step-Timer, a Flutter package available on Pub Dev, designed for effective time management',
        "link": "https://pub.dev/packages/step_timer"
      },
      {
        'title': 'TechI',
        'summary':
            'Developed TechI, a Flutter-based mobile application providing the latest tech news using Hacker News APIs, implementing efficient state management with Bloc pattern and pagination for seamless user experience',
        "link": "https://github.com/Murali-Learner/TechI/blob/main/README.md"
      },
      {
        'title': 'Map Route',
        'summary':
            'Implemented dynamic location tracking and custom marker creation using Flutter and GetX, enhancing user interaction and map visualization.',
        "link": "https://github.com/Murali-Learner/MapRoute/blob/main/README.md"
      },
    ],
    'education': {
      'college': 'Sri Satya Sai Degree College (Palakonda)',
      'course': 'Bsc. Computer Science',
      'duration': 'Aug 2018 - Oct 2022',
    },
  };

//text styles
  static TextStyle defaultTextStyle(
    BuildContext context, {
    double? wordSpacing,
    double? fontSize,
    FontWeight? fontWeight,
  }) =>
      context.textTheme.labelSmall!.copyWith(
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight ?? FontWeight.normal,
        wordSpacing: wordSpacing,
      );
  static TextStyle headline(BuildContext context, {double fontSize = 35}) =>
      context.textTheme.displayLarge!.copyWith(
        fontSize: fontSize,
        color: secondaryColor,
        letterSpacing: 2.0,
      );

//colors
  static Color backgroundColor = const Color(0XFF1d1f21);
  static WidgetStateProperty<Color?> overlayColor =
      WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      return Colors.transparent;
    },
  );
  static Color textColor = const Color(0XFFeeeeee);
  static Color iconColor = const Color(0XFF0ca5e5);
  static Color secondaryColor = const Color(0xFF4CAF50);
  static Color primaryColor = Colors.green;

  static Map<String, Widget> widgets = {
    "Home": const HomeRoute(),
    "Skills": const TechStackWidget(),
    "Experience": const ExperienceList(),
    "Projects": const ProjectsList(),
  };
}

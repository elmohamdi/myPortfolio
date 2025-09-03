import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/about_us/about_us.dart';
import 'package:flutter_portfolio/view/certifications/certifications.dart';
import 'package:flutter_portfolio/view/education/education.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';
import 'package:flutter_portfolio/view/skills/skills.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),      // الصفحة 0 - Home
      const AboutUsView(),       // الصفحة 1 - About Us
      const EducationView(),     // الصفحة 2 - Education
      const SkillsView(),        // الصفحة 3 - Skills
      ProjectsView(),            // الصفحة 4 - Projects
      Certifications(),          // الصفحة 5 - Certifications
    ]);
  }
}

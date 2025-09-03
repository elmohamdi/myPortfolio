import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'navigation_button.dart';
import 'package:flutter_portfolio/view/about_us/about_us.dart';
import 'package:flutter_portfolio/view/education/education.dart';
import 'package:flutter_portfolio/view/skills/skills.dart';
class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Home',
              ),
              if(!Responsive.isLargeMobile(context)) 
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'About us',
              ),
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Education',
              ),
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Skills',
              ),
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(4, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Projects',
              ),
              NavigationTextButton(
                onTap: () {
                  controller.animateToPage(5, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                text: 'Certifications',
              ),
            ],
          ),
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(height: defaultPadding),
            const TitleText(prefix: 'My ', title: 'Skills'),
            const SizedBox(height: defaultPadding),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Technical & Soft Skills في صف واحد
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Technical Skills
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.pinkAccent, Colors.blue],
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      '🛠️ Technical Skills',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  _buildSkillItem('Flutter & Dart', 0.9,
                                      Icons.phone_iphone),
                                  _buildSkillItem('Firebase', 0.8, Icons.cloud),
                                  _buildSkillItem('REST APIs', 0.85, Icons.api),
                                  _buildSkillItem(
                                      'Git & GitHub', 0.8, Icons.code),
                                  _buildSkillItem('UI/UX Design', 0.75,
                                      Icons.design_services),
                                  _buildSkillItem(
                                      'State Management', 0.8, Icons.settings),
                                  _buildSkillItem(
                                      'Database Design', 0.7, Icons.storage),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: defaultPadding),

                        // Soft Skills
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.purpleAccent, Colors.green],
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      '🌟 Soft Skills',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  _buildSoftSkillItem(
                                      'Client Communication', Icons.chat),
                                  _buildSoftSkillItem(
                                      'Time Management', Icons.access_time),
                                  _buildSoftSkillItem(
                                      'Problem Solving', Icons.lightbulb),
                                  _buildSoftSkillItem(
                                      'Team Collaboration', Icons.group),
                                  _buildSoftSkillItem(
                                      'Adaptability', Icons.autorenew),
                                  _buildSoftSkillItem(
                                      'Attention to Detail', Icons.zoom_in),
                                  _buildSoftSkillItem(
                                      'Creativity', Icons.palette),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: defaultPadding),

                    // Programming Languages
                    Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              '💻 Programming Languages',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                            spacing: 15,
                            runSpacing: 15,
                            alignment: WrapAlignment.center,
                            children: [
                              _buildLanguageChip('Dart', Colors.blue),
                              _buildLanguageChip('Java', Colors.orange),
                              _buildLanguageChip('HTML/CSS', Colors.red),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: defaultPadding),

                    // Tools & Technologies
                    Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              '🛠️ Tools & Technologies',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                              childAspectRatio: 2.5,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              final tools = [
                                'Android Studio',
                                'VS Code',
                                'Git',
                                'Firebase',
                                'Figma',
                                'Postman',
                              ];
                              final icons = [
                                Icons.android,
                                Icons.code,
                                Icons.cloud,
                                Icons.design_services,
                                Icons.api,
                                Icons.work,
                              ];
                              final colors = [
                                Colors.green,
                                Colors.blue,
                                Colors.orange,
                                Colors.amber,
                                Colors.purple,
                                Colors.red,
                              ];

                              return Container(
                                decoration: BoxDecoration(
                                  color: colors[index].withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: colors[index]),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(icons[index],
                                        color: colors[index], size: 16),
                                    const SizedBox(width: 5),
                                    Text(
                                      tools[index],
                                      style: TextStyle(
                                        color: colors[index],
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill, double level, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue, size: 18),
              const SizedBox(width: 8),
              Text(
                skill,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.grey[800],
            valueColor: AlwaysStoppedAnimation<Color>(
              level > 0.8
                  ? Colors.green
                  : level > 0.6
                      ? Colors.blue
                      : Colors.orange,
            ),
            minHeight: 6,
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(height: 2),
          Text(
            '${(level * 100).toInt()}%',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSoftSkillItem(String skill, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              skill,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Icon(Icons.star, color: Colors.amber, size: 16),
        ],
      ),
    );
  }

  Widget _buildLanguageChip(String language, Color color) {
    return Chip(
      label: Text(
        language,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: color.withOpacity(0.1),
      side: BorderSide(color: color),
      avatar: Icon(Icons.code, color: color, size: 16),
    );
  }
}

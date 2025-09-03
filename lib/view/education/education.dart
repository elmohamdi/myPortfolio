import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isLargeMobile(context)) 
              const SizedBox(height: defaultPadding),
            
            const TitleText(prefix: 'My ', title: 'Education'),
            const SizedBox(height: defaultPadding),
            
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
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
                            Row(
                              children: [
                                const Icon(Icons.school, color: Colors.blue, size: 30),
                                const SizedBox(width: 10),
                                Text(
                                  'University Education',
                                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            _buildEducationItem(
                              'Bachelor of Computer Science',
                              'Faculty of Science, Alexandria University',
                              '2023 - Present',
                              'Third Year Student',
                              Icons.computer
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: defaultPadding),

                    Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Academic Details',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildDetailItem('🏛️ Institution', 'Alexandria University'),
                          _buildDetailItem('🎓 Faculty', 'Faculty of Science'),
                          _buildDetailItem('📚 Department', 'Computer Science'),
                          _buildDetailItem('📅 Academic Year', 'Third Year (2025-2026)'),
                          _buildDetailItem('📍 Location', 'Alexandria, Egypt'),
                          _buildDetailItem('🎯 Status', 'Currently Enrolled'),
                        ],
                      ),
                    ),

                    const SizedBox(height: defaultPadding),

                    Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Relevant Coursework',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              _buildCourseChip('Programming Fundamentals'),
                              _buildCourseChip('Data Structures'),
                              _buildCourseChip('Algorithms'),
                              _buildCourseChip('Object-Oriented Programming'),
                              _buildCourseChip('Database Systems'),
                              _buildCourseChip('Software Engineering'),
                              _buildCourseChip('Web Development'),
                              _buildCourseChip('Mobile Development'),
                              _buildCourseChip('Mathematics for CS'),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: defaultPadding),

                    Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Academic Focus',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          _buildFocusPoint('Combining theoretical knowledge with practical application'),
                          _buildFocusPoint('Specializing in mobile app development with Flutter'),
                          _buildFocusPoint('Building real-world projects alongside academic studies'),
                          _buildFocusPoint('Maintaining excellent academic performance'),
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

  Widget _buildEducationItem(String title, String institution, String period, String status, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.blue, size: 20),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          institution,
          style: const TextStyle(
            color: Colors.amber,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          period,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          status,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseChip(String course) {
    return Chip(
      label: Text(
        course,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      backgroundColor: Colors.blue[900],
      side: BorderSide(color: Colors.blue.shade700),
    );
  }

  Widget _buildFocusPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.star, color: Colors.amber, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
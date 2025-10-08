import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About Me',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'I am an IT student passionate about building interactive apps and exploring new technologies.'
          'My goal is to continuously learn and grow as a developer while creating meaningful projects that make an impact.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

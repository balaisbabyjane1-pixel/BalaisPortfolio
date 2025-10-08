import 'package:flutter/material.dart';
import 'package:portfolio/Main.dart';
import '../models/project.dart';

class ProjectsSection extends StatelessWidget {
  final List<Project> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Projects',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Column(
          children: projects
              .map(
                (p) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.work_outline),
                    title: Text(p.title),
                    subtitle: Text(p.description),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

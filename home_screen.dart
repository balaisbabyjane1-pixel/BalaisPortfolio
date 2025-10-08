import 'package:flutter/material.dart';
import '../widgets/profile_section.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/contact_section.dart';
import '../models/project.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  final List<Project> projects = [
    Project(
      title: 'Language Learning Web System',
      description:
          'A web-based platform that helps users learn new languages interactively.',
    ),
    Project(
      title: 'Discrete Math Interactive Program',
      description:
          'An educational app for solving counting theory and recurrence relation problems.',
    ),
    Project(
      title: 'ReactJS Topic Presentation',
      description:
          'A learning module demonstrating React concepts with code samples.',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 9, 217, 193),
              Color.fromARGB(255, 135, 250, 238),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ProfileSection(),
                  const SizedBox(height: 24),
                  const AboutSection(),
                  const SizedBox(height: 24),
                  const SkillsSection(),
                  const SizedBox(height: 24),
                  ProjectsSection(projects: projects),
                  const SizedBox(height: 24),
                  const ContactSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

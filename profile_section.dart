import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'profile',
          child: CircleAvatar(
            radius: 65,
            backgroundImage: const AssetImage('assets/balais.png'),
            backgroundColor: Colors.white.withOpacity(0.2),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Baby Jane Balais',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          'BSIT Student • Flutter Developer • Researcher',
          style: TextStyle(fontSize: 16, color: Colors.white70),
        ),
      ],
    );
  }
}

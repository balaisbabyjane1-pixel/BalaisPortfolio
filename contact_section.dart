import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Card(
          child: ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('babyjanebalais0@gmail.com'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.phone),
            title: Text('+63 912 345 6789'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Sta. Ana, Philippines'),
          ),
        ),
      ],
    );
  }
}

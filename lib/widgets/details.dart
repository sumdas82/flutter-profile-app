import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Momshad Dinury'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Title
            const Text(
              'Details about Momshad Dinury',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            
            // Section 2: Text box container with details
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '📌 Personal Information:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '• Full Name: Momshad Dinury\n'
                        '• Profession: Flutter Developer\n'
                        '• Experience: 5+ years\n'
                        '• Location: Dhaka, Bangladesh\n\n'
                        '📱 About:\n'
                        'Momshad Dinury is a skilled mobile app developer specializing in Flutter. '
                        'He has worked on numerous successful apps and loves creating beautiful, '
                        'responsive user interfaces. He is passionate about clean code and best practices.\n\n'
                        '🏆 Achievements:\n'
                        '• Published 10+ apps on Play Store\n'
                        '• Open source contributor\n'
                        '• Tech speaker and mentor\n\n'
                        '💼 Current Work:\n'
                        '• Senior Software Engineer - II at Brain Station 23 | Flutter Expert & Community Leader\n'
                        '• Contributing to open-source Flutter projects\n'
                        '• Mentoring junior developers',
                        style: TextStyle(fontSize: 15, height: 1.6),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_dev/widgets/info_card.dart';
import 'package:flutter_dev/widgets/social_media_row.dart';
import 'package:flutter_dev/widgets/details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;
    final horizontalPadding = isSmallScreen ? 16.0 : 32.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
        elevation: 2,
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple.shade300,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withValues(alpha: 0.3),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: isSmallScreen ? 60 : 80,
                    backgroundColor: Colors.blue.shade100,
                    backgroundImage: NetworkImage('https://cdn.ostad.app/user/avatar/2025-08-17T06-45-03.763Z-WhatsApp%20Image%202025-08-17%20at%2012.15.39_409bf3a1.jpg'),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Momshad Dinury',
                  style: TextStyle(
                    fontSize: isSmallScreen ? 28 : 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Flutter Beginner & Future App Developer',
                    style: TextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      color: Colors.purple.shade300,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'I love building mobile apps with Flutter. Learning new things every day and enjoying the journey! 🚀',
                  style: TextStyle(
                    fontSize: isSmallScreen ? 18 : 20,
                    color: Colors.black,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                InfoCard(
                  icon: Icons.location_on,
                  title: 'Location',
                  titleColor: Colors.purple,
                  iconColor: Colors.white,
                  backgroundColor: const Color(0xFFF1EBFB),
                  iconBackgroundColor: const Color(0xFF613DB6),
                  content: 'Dhaka, Bangladesh',
                ),
                const SizedBox(height: 10),
                InfoCard(
                  icon: Icons.school,
                  title: 'Education',
                  titleColor: Colors.green,
                  iconColor: Colors.white,
                  backgroundColor: const Color(0xFFECF4EE),
                  iconBackgroundColor: const Color(0xFF459B29),
                  content: 'BSc in Computer Science\nXYZ University',
                ),
                const SizedBox(height: 10),
                InfoCard(
                  icon: Icons.code,
                  title: 'Skills',
                  titleColor: Colors.blue,
                  iconColor: Colors.white,
                  backgroundColor: const Color(0xFFE8EFFD),
                  iconBackgroundColor: const Color(0xFF1A55CA),
                  content: 'Flutter, Dart, Firebase, Git, \nREST APIs, HTML, CSS',
                ),
                const SizedBox(height: 20),
                const SocialMediaRow(),
                const SizedBox(height: 18),
                SizedBox(height: isSmallScreen ? 20 : 40),
                FilledButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Discover Details'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

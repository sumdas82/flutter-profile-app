import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}

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
                    child: Icon(
                      Icons.person,
                      size: isSmallScreen ? 70 : 90,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Rakib Hasan',
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
                      MaterialPageRoute(builder: (context) => const MyProfilePage()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Go to Profile'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  final String content;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color titleColor;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.content,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: isSmallScreen ? 24 : 28,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 18 : 20,
                      fontWeight: FontWeight.w600,
                      color: titleColor,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialIcon(
            icon: Icons.facebook,
            label: 'Facebook',
            color: Colors.blue.shade800,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Facebook: @rakib.hasan')),
              );
            },
          ),
          SocialIcon(
            icon: Icons.code,
            label: 'GitHub',
            color: Colors.black,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('GitHub: rakibhasan')),
              );
            },
          ),
          SocialIcon(
            icon: Icons.email,
            label: 'Email',
            color: Colors.blue.shade700,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Email: rakibhasan@example.com')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth < 600 ? 28.0 : 32.0;
    
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: iconSize, color: color),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: screenWidth < 600 ? 10 : 12,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
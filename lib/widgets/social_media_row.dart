import 'package:flutter/material.dart';
import 'package:flutter_dev/main.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Connect with me',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800,
            ),
          ),
          const SizedBox(height: 2), // Space between text and icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialIcon(
                icon: Icons.facebook,
                label: 'Facebook',
                color: Colors.blue.shade800,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Facebook: @momshed.dinury')),
                  );
                },
              ),
              SocialIcon(
                icon: Icons.code,
                label: 'GitHub',
                color: Colors.black,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('GitHub: momshed.dinury')),
                  );
                },
              ),
              SocialIcon(
                icon: Icons.email,
                label: 'Email',
                color: Colors.blue.shade700,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Email: momsheddinury@example.com')),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
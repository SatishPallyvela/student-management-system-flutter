import 'package:flutter/material.dart';

// This widget represents the greeting section
// of our Student Management System.
//
// We created this as a separate widget so that
// the greeting section can be reused or modified
// without making home_screen.dart too large.
class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Places the contents vertically in the center.
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        // CircleAvatar creates a circular area
        // for the student's profile photo.
        const CircleAvatar(
          radius: 45,

          // For now we are using an Icon.
          // Later we will replace this with
          // the student's actual image.
          child: Icon(Icons.person, size: 50),
        ),

        // Space between the photo and the text.
        const SizedBox(width: 20),

        // Column places the text one below another.
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // First line of the greeting.
            Text(
              "Hello, Satish!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            // Space between the two Text widgets.
            SizedBox(height: 5),

            // Second part of the greeting.
            Text(
              "Welcome back to your\nstudent portal",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

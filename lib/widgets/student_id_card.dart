import 'package:flutter/material.dart';

class StudentIdCard extends StatelessWidget {
  const StudentIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      // Use all the horizontal space available.
      padding: const EdgeInsets.all(20),

      // "Give 20 pixels of space inside the card.
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 65, 226, 135),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "STUDENT ID CARD",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),
          // Student name.
          const Row(
            children: [
              Icon(Icons.person),

              SizedBox(width: 10),

              Text("Name: Satish Bhasker", style: TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 12),
          // Roll number.
          const Row(
            children: [
              Icon(Icons.badge),
              SizedBox(width: 10),
              Text("Roll No: 22A91A0501", style: TextStyle(fontSize: 16)),
            ],
          ),

          const SizedBox(height: 12),
          // Department.
          const Row(
            children: [
              Icon(Icons.school),

              SizedBox(width: 10),

              Text("Department: CSE", style: TextStyle(fontSize: 16)),
            ],
          ),

          const SizedBox(height: 12),
          // Attendance.
          const Row(
            children: [
              Icon(Icons.calendar_month),

              SizedBox(width: 10),

              Text("Attendance: 85%", style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}

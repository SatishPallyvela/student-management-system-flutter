import 'package:flutter/material.dart';
import '../widgets/greeting_section.dart';
import '../widgets/student_id_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Management"),
        centerTitle: true,
      ),

      body: const Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [GreetingSection(), SizedBox(height: 25), StudentIdCard()],
        ),
      ),
    );
  }
}

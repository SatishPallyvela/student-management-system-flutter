import 'package:flutter/material.dart';
import '../widgets/greeting_section.dart';
import '../widgets/student_id_card.dart';
import '../widgets/quick_actions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Management"),
        centerTitle: true,
      ),

      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GreetingSection(),
            SizedBox(height: 25),
            StudentIdCard(),
            SizedBox(height: 25),

            QuickActions(),
          ],
        ),
      ),
    );
  }
}

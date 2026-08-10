import 'package:flutter/material.dart';

// QuickActions is the complete Quick Actions section
// of our Student Management System.
class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section heading.
        const Text(
          "Quick Actions",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 12),

        // GridView will display our action cards.
        LayoutBuilder(
          builder: (context, constraints) {
            // If the available screen width is small,
            // display 2 cards in each row.
            //
            // If the screen is wider,
            // display 4 cards in one row.
            final crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;

            return GridView.count(
              // Number of cards in each row.
              crossAxisCount: crossAxisCount,

              // Horizontal space between cards.
              crossAxisSpacing: 12,

              // Vertical space between cards.
              mainAxisSpacing: 12,

              // Controls the height of each card.
              childAspectRatio: 1.2,

              // Because this GridView is inside another
              // Column, let it use only the space it needs.
              shrinkWrap: true,

              // We don't want this small GridView to have
              // its own scrolling area.
              physics: const NeverScrollableScrollPhysics(),

              children: const [
                QuickActionCard(
                  icon: Icons.menu_book,
                  title: "My Subjects",
                  color: Colors.blue,
                ),

                QuickActionCard(
                  icon: Icons.calendar_month,
                  title: "Attendance",
                  color: Colors.green,
                ),

                QuickActionCard(
                  icon: Icons.assignment,
                  title: "My Marks",
                  color: Colors.deepPurple,
                ),

                QuickActionCard(
                  icon: Icons.currency_rupee,
                  title: "Fees",
                  color: Colors.orange,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

// This is a reusable card for one Quick Action.
//
// Instead of writing the same Card code four times,
// we create one widget and provide different values.
class QuickActionCard extends StatelessWidget {
  // Icon displayed inside the card.
  final IconData icon;

  // Text displayed below the icon.
  final String title;

  // Color used for the icon.
  final Color color;

  const QuickActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Gives a small elevation/shadow to the card.
      elevation: 3,

      // Gives the card rounded corners.
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Column(
        // Center the icon and text vertically.
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // Icon for the action.
          Icon(icon, size: 35, color: color),

          const SizedBox(height: 10),

          // Name of the action.
          Text(
            title,
            textAlign: TextAlign.center,

            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

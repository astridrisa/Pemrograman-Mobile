import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the width of the device
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the width of the container, subtracting 20 pixels for margins
    double containerWidth = screenWidth - 20; // Adjust margin as needed

    return Container(
      width: containerWidth, // Use the calculated width
      height: 95,
      padding: EdgeInsets.all(16), // Padding around the container
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Subtle shadow
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // Even space distribution
        children: [
          _buildAction(Icons.add, 'Top Up'),
          SizedBox(width: 20), // Space between actions
          _buildAction(Icons.attach_money, 'Cash Out'),
          SizedBox(width: 20), // Space between actions
          _buildAction(Icons.send, 'Send Money'),
          SizedBox(width: 20), // Space between actions
          _buildAction(Icons.grid_view, 'See All'),
        ],
      ),
    );
  }

  Widget _buildAction(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center the column content
      children: [
        CircleAvatar(
          radius: 18, // Increase the radius for a larger icon
          backgroundColor: Colors.red[50],
          child: Icon(icon, color: Colors.red, size: 15), // Adjust icon size
        ),
        SizedBox(height: 10), // Space between icon and label
        Text(
          label,
          style: TextStyle(
            fontSize: 10, // Slightly larger font size
            fontWeight: FontWeight.w500, // Medium font weight
          ),
        ),
      ],
    );
  }
}
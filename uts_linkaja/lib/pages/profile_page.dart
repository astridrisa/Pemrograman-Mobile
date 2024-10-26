import 'package:flutter/material.dart';
import 'package:uts_linkaja/widgets/bottom_nav_widget.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          _buildProfileHeader(),
          _buildProfileMenuItem('Account Type', 'FULL SERVICE', true),
          _buildProfileMenuItem('Account Settings', '', false),
          _buildProfileMenuItem('LinkAja Syariah', 'Not Active', true),
          _buildProfileMenuItem('Payment Method', '', false),
          _buildProfileMenuItem('Email', 'astridrisa@gmail.com', true),
          _buildProfileMenuItem('Security Question', 'Set', true),
          _buildProfileMenuItem('PIN Settings', '', false),
          _buildProfileMenuItem('Language', 'English', true),
          _buildProfileMenuItem('Terms of Service', '', false),
          _buildProfileMenuItem('Privacy Policy', '', false),
          _buildProfileMenuItem('Help Center', '', false),
        ],
      ),
      bottomNavigationBar: BottomNavBarWidget(
        currentIndex: 4,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Space between items
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Astrid Risa Widiana',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '2241720250',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(width: 16), // Space between text and avatar
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileMenuItem(String title, String value, bool showArrow) {
    return ListTile(
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (value.isNotEmpty)
            Text(
              value,
              style: TextStyle(color: Colors.grey),
            ),
          if (showArrow)
            Icon(Icons.chevron_right, color: Colors.grey)
          else
            SizedBox(width: 24),
        ],
      ),
      onTap: () {
        // Handle menu item tap
      },
    );
  }
}
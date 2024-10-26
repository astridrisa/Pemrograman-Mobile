import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      margin: const EdgeInsets.only(right: 4, left: 4, top: 70),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 184, 35, 24),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(children: [
            SizedBox(width: 5),
            Text('Hi, Astrid',
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ]),
          SizedBox(height: 10),
          // Wrap the Row in a SingleChildScrollView to make it scrollable
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCard('Your Balance', 'Rp 50.000', Icons.arrow_forward),
                SizedBox(width: 10),
                _buildCard('Bonus Balance', '0', Icons.arrow_forward),
                SizedBox(width: 10),
                _buildCard('MyPaylater', 'Aktifkan', Icons.arrow_forward),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String balance, IconData icon) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 85, 75, 75))),
              SizedBox(height: 2),
              Text(balance,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(icon, color: const Color.fromARGB(255, 184, 35, 24)),
        ],
      ),
    );
  }
}
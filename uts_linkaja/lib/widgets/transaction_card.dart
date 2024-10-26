import 'package:flutter/material.dart';
import 'package:uts_linkaja/models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({
    required this.transaction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          color: Colors.white, // White background
          elevation: 4, // Optional: Add shadow for elevation
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600, // Semi bold
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          transaction.date,
                          style: TextStyle(
                            color: Colors.grey, // Gray color
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          transaction.amount,
                          style: TextStyle(
                            fontWeight: FontWeight.w600, // Semi bold
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              transaction.status,
                              style: TextStyle(
                                color: transaction.status == 'Failed'
                                    ? Colors.red
                                    : Colors.green, // Red for fail, green for done
                                fontWeight: FontWeight.w600, // Semi bold
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 4),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(color: Colors.grey[300]), // Border separator
                SizedBox(height: 8),
                Text(
                  transaction.description,
                  style: TextStyle(
                    color: Colors.grey[700], // Light gray for description
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 45,
          right: 2,
          child: Container(
            height: 24,
            width: 4,
            decoration: BoxDecoration(
              color: transaction.status == 'Failed' ? Colors.red : Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:uts_linkaja/models/transaction.dart';
import 'package:uts_linkaja/widgets/transaction_card.dart';
import '../widgets/bottom_nav_widget.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int _currentIndex = 1; // Index for Bottom Navigation Bar

  // Declare a list of transactions
  final List<Transaction> _transactions = [
    Transaction(
      title: 'Pay Merchant',
      date: '12 June 2024 13:30',
      amount: 'Rp 225.000',
      status: 'Success',
      description: 'Colorbox Official',
    ),
    Transaction(
      title: 'Pay Merchant',
      date: '15 Sept 2024 17:00',
      amount: 'Rp 30.000',
      status: 'Success',
      description: 'Umayumcha',
    ),
    Transaction(
      title: 'Pay Merchant',
      date: '10 Okt 2024 15:15',
      amount: 'Rp 145.000',
      status: 'Failed',
      description: 'BCA',
    ),
    Transaction(
      title: 'Pay Merchant',
      date: '11 Okt 2024 20:20',
      amount: 'Rp 500.000',
      status: 'Succes',
      description: 'BNI',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Text(
                'Transaction History',
                style: TextStyle(
                  fontWeight: FontWeight.w600, // Semi-bold
                  fontSize: 18,
                ),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Colors.red, // Active tab border color
                  width: 4.0, // Border width
                ),
                insets:
                    EdgeInsets.symmetric(horizontal: 128), // Tab border insets
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'Pending',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/transaction.png', // Ensure the asset path is correct
                      height: 150,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'All transactions are completed!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Any Pending transactions will appear in this page',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: _transactions.length, // Use the length of the list
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TransactionCard(transaction: _transactions[index]),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBarWidget(
          currentIndex: 1,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the current index
            });
          },
        ),
      ),
    );
  }
}
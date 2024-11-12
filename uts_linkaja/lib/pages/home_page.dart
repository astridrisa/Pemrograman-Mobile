import 'package:flutter/material.dart';
import 'package:uts_linkaja/widgets/best_deals.dart';
import 'package:uts_linkaja/widgets/bottom_nav_widget.dart';
import 'package:uts_linkaja/widgets/header_widget.dart';
import 'package:uts_linkaja/widgets/images_carousel.dart';
import 'package:uts_linkaja/widgets/services_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(),
              SizedBox(height: 10),
              ServicesGrid(),
              SizedBox(height: 16),
              ImagesCarousel(),
              SizedBox(height: 30),
              BestDeals(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
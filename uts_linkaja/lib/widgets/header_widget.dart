import 'package:flutter/material.dart';
import 'quick_actions.dart';
import 'balance_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/bt-banner-2.png',
                  fit: BoxFit.cover,
                  opacity: const AlwaysStoppedAnimation(0.25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icon.png', height: 50, width: 50),
                  Row(
                    children: [
                      _buildIcon(Icons.favorite_border),
                      const SizedBox(width: 16),
                      _buildIcon(Icons.chat_bubble_outline),
                    ],
                  ),
                ],
              ),
              const BalanceWidget(),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const QuickActions(),
      ],
    );
  }

  Widget _buildIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}
import 'package:flutter/material.dart';

class BestDeals extends StatefulWidget {
  const BestDeals({super.key});

  @override
  _BestDealsWidgetState createState() => _BestDealsWidgetState();
}

class _BestDealsWidgetState extends State<BestDeals> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _carouselIndex = 0;

  // List of descriptions and additional texts for each image
  final List<String> descriptions = [
    'Cashback 10 Ribu dengan LinkAja',
    'Cashback 15 Ribu Investasi di Bibit',
    'Naik Grab dengan Diskon 90%'
  ];

  final List<String> additionalTexts = [
    'Top Up di LinkAja',
    'Pakai LinkAja Untuk dapatkan Casback',
    'Dapatkan diskon 90% di LinkAja '
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header with 'Best Deals' and 'See All'
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Deals',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        // Carousel with PageView
        SizedBox(
          height: 200, // Adjusted to fit image, description, and extra text
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _carouselIndex = index),
            itemCount: descriptions.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image with rounded corners and shadow
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/promo/promo${index + 1}.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Main description text
                    Text(
                      descriptions[index],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    // Additional smaller text in grey
                    Text(
                      additionalTexts[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        // Page Indicator
        _buildPageIndicator(),
      ],
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(descriptions.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: _carouselIndex == index ? 12 : 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _carouselIndex == index ? Colors.red : Colors.grey,
          ),
        );
      }),
    );
  }
}
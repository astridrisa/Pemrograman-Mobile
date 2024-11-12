import 'package:flutter/material.dart';
import 'package:uts_linkaja/models/services.dart';

class ServicesGrid extends StatelessWidget {
  final List<Services> services = [
    Services(icon: Icons.phone_android, name: 'Pulsa/Data'),
    Services(icon: Icons.electric_bolt, name: 'Electricity'),
    Services(icon: Icons.tv, name: 'Cable TV\n& Internet'),
    Services(icon: Icons.credit_card, name: 'Kartu Uang\nElektronik'),
    Services(icon: Icons.church, name: 'Gereja'),
    Services(icon: Icons.question_answer, name: 'Infaq'),
    Services(icon: Icons.redeem, name: 'Other\nDonations'),
    Services(icon: Icons.more_horiz, name: 'More'),
  ];

  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5), // Grey color with 50% opacity
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          return _buildServiceItem(services[index]);
        },
      ),
    );
  }

  Widget _buildServiceItem(Services service) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(service.icon, color: Colors.red),  // Access icon from the model
        const SizedBox(height: 4),
        Text(
          service.name,  // Access label from the model
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
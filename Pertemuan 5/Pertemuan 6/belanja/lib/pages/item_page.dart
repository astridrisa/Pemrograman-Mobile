import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan data dari halaman sebelumnya
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${itemArgs!.name} with ${itemArgs.price}'),
          ],
        ),
      ),
    );
  }
}
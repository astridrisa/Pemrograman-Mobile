import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  // Method untuk menampilkan dialog dan menangkap warna yang dipilih
  _showColorDialog(BuildContext context) async {
    // Menampilkan dialog dan menunggu hasilnya (warna yang dipilih)
    Color? selectedColor = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                Navigator.pop(context, Colors.yellow.shade500);
              },
            ),
            TextButton(
              child: const Text('Pink'),
              onPressed: () {

                Navigator.pop(context, Colors.pink.shade500);
              },
            ),
            TextButton(
              child: const Text('Orange'),
              onPressed: () {
                Navigator.pop(context, Colors.orange.shade500);
              },
            ),
          ],
        );
      },
    );

    // Jika ada warna yang dipilih, ubah warna latar belakang
    if (selectedColor != null) {
      setState(() {
        color = selectedColor; // Perbarui warna latar belakang
      });
    }
  }
}

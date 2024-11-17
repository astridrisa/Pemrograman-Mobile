import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream by Astrid',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late Stream<int> numberStream; // Perbaiki penamaan variabel

  @override
  void initState() {
    super.initState();
    numberStream = NumberStream().getNumbers(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream by Astrid'),
      ),
      body: StreamBuilder<int>(
        stream: numberStream, // Pastikan numberStream adalah Stream<int>
        initialData: 0,        // Nilai awal stream
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Error!');
            // Jika ada error, Anda bisa menampilkan pesan atau widget lainnya
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 96),
              ),
            );
          } else {
            // Menampilkan widget kosong jika tidak ada data
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

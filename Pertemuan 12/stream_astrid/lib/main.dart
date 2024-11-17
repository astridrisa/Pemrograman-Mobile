import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

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
        primarySwatch: Colors.teal, // Warna tema sesuai kesukaan
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
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  late StreamTransformer transformer;
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String values = '';

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();

    // Menyusun stream dan mendengarkan perubahan data
    // Stream stream = numberStreamController.stream;
    subscription = stream.listen((event) {
        setState(() {
          values += '$event -';
          // lastNumber = event;
        });
      });
      subscription = stream.listen((event) {
        setState(() {
          values += '$event -';
        });
      });
      subscription.onError((error) {
        setState(() {
          lastNumber = -1;
        });
      });
      subscription.onDone(() {
        print('OnDone was called');
      });

      super.initState();

    // Inisialisasi color stream dan mulai perubahan warna
    colorStream = ColorStream();
    changeColor();
  }

  @override
  void dispose() {
    subscription.cancel();  
    super.dispose();
  }

  // Mengubah warna latar belakang berdasarkan stream
  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  // Menghentikan stream
  void stopStream() {
    numberStreamController.close();  // Menutup stream controller jika diperlukan
  }

  // Menambahkan nomor acak ke stream
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream by Astrid'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(values),
            Text(
              lastNumber.toString(),
              style: const TextStyle(fontSize: 24),
            ),
             ElevatedButton(
              onPressed: addRandomNumber,
              child: const Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:waypay/screens/client/home_screen.dart';
import 'package:waypay/screens/worker/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      home: const WorkerHomeScreen(),
    );
  }
}

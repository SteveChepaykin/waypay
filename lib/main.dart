import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/controllers/user_controller.dart';
import 'package:waypay/screens/client/home_screen.dart';
import 'package:waypay/screens/worker/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  UserController userc = UserController();
  userc.init();
  Get.put<UserController>(userc);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      home: ClientHomeScreen(),
    );
  }
}

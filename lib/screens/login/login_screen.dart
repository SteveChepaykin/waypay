import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/screens/login/clientloginphone_screen.dart';
import 'package:waypay/screens/login/workerloginphone_screen.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              "assets/waypay_icon.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SpecialButton(
              title: "Я клиент",
              function: () {
                Get.to(() => ClientLoginPhoneScreen());
              },
              width: 252,
            ),
            const SizedBox(
              height: 20,
            ),
            SpecialButton(
              title: "Я сотрудник",
              function: () {
                Get.to(() => WorkerLoginPhoneScreen());
              },
              width: 252,
              color: const Color(0xFFFF0099),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}

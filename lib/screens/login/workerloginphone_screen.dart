import 'package:flutter/material.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class WorkerLoginPhoneScreen extends StatelessWidget {
  WorkerLoginPhoneScreen({super.key});

  final TextEditingController numbercont = TextEditingController();
  final TextEditingController passwordcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/waypay_icon.png",
              width: 200,
              height: 200,
            ),
            const Spacer(
              flex: 10,
            ),
            CustomTextField(
              controller: numbercont,
              label: "Номер телефона",
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              controller: passwordcont,
              label: "Пароль",
            ),
            const Spacer(
              flex: 10,
            ),
            SpecialButton(
              title: "Войти",
              function: () {},
            ),
            const Spacer(
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}
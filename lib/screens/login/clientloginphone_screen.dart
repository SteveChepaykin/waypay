import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/screens/login/clientlogincode_screen.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class ClientLoginPhoneScreen extends StatelessWidget {
  ClientLoginPhoneScreen({super.key});

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
              function: () {
                Get.to(() => ClientLoginCodeScreen());
              },
            ),
            const Spacer(
              flex: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Забыли пароль?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: VerticalDivider(
                    color: Colors.black,
                    width: 20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Регистрация",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

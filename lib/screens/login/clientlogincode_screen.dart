import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/screens/client/home_screen.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class ClientLoginCodeScreen extends StatelessWidget {
  ClientLoginCodeScreen({super.key});

  final TextEditingController codecont = TextEditingController();

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
            ),
            CustomTextField(
              controller: codecont,
              label: "Номер телефона",
            ),
            const Spacer(
            ),
            SpecialButton(
              title: "Подтвердить",
              function: () {
                Get.offAll(() => ClientHomeScreen());
              },
            ),
            const SizedBox(height: 12,),
            SpecialButton(
              title: "Получить код повторно",
              function: () {},
              color: const Color(0xFFFF0099),
            ),
            const SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFB8B8B8)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SpecialButton(
                title: "Назад",
                function: () {
                  Get.back();
                },
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

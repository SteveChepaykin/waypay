import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class NewPaymentScreen extends StatelessWidget {
  NewPaymentScreen({super.key});

  final Map<String, TextEditingController> contractcontrollers = {
    "ФИО": TextEditingController(),
    "№ Договоре": TextEditingController(),
    "Адрес проживания": TextEditingController(),
    "Телефон": TextEditingController(),
  };

  final Map<String, TextEditingController> incomecontrollers = {
    "Сумма долга": TextEditingController(),
    "Сумма платежей": TextEditingController(),
    "Остаток": TextEditingController(),
  };

  final Map<String, TextEditingController> recommendcontrollers = {
    "Дата платежа": TextEditingController(),
    "Основной долг": TextEditingController(),
    "Остаток долга": TextEditingController(),
    "Итого": TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 45,
          ),
        ),
        title: const Text("Новый платеж"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [
            block(
              "Сведения о договоре",
              [
                ...contractcontrollers.keys.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: CustomTextField(controller: contractcontrollers[e]!, label: e),
                  ),
                ),
              ],
            ),
            block(
              "Сведения о начислении",
              [
                ...incomecontrollers.keys.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: CustomTextField(controller: incomecontrollers[e]!, label: e),
                  ),
                ),
              ],
            ),
            block(
              "Рекомендованный платеж",
              [
                ...recommendcontrollers.keys.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: CustomTextField(controller: recommendcontrollers[e]!, label: e),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            SpecialButton(title: "Подтвердить", function: () {}),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget block(String title, List<Widget> children) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            ...children,
          ],
        ),
      );
}

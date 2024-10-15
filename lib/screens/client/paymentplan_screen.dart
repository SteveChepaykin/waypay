import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/models/payment_mode.dart';
import 'package:waypay/widgets/filtertextfield_widget.dart';
import 'package:waypay/widgets/paymentlistitem_widget.dart';

class PaymentPlanScreen extends StatefulWidget {
  const PaymentPlanScreen({super.key});

  @override
  State<PaymentPlanScreen> createState() => _PaymentPlanScreenState();
}

class _PaymentPlanScreenState extends State<PaymentPlanScreen> {
  final TextEditingController namecont = TextEditingController();
  final TextEditingController contractnumbercont = TextEditingController();
  late List<Payment> paymentslist;

  @override
  void initState() {
    paymentslist = [];
    super.initState();
  }

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
        title: const Text("График платежей"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            FilterTextField(controller: contractnumbercont, label: "№ Договора"),
            const SizedBox(height: 14),
            FilterTextField(controller: namecont, label: "ФИО"),
            const SizedBox(height: 14),
            ListView(
              children: [
                ...(paymentslist
                    .map(
                      (e) => PaymentListItem(payment: e),
                    )
                    .toList()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

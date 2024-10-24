import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/models/payment_model.dart';
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
    paymentslist = [
      Payment("1", {"amount": 1000, "paydate": DateTime(2024, 10, 1).toIso8601String(), "isalive": false}),
      Payment("2", {"amount": 500, "paydate": DateTime(2024, 11, 1).toIso8601String(),}),
      Payment("3", {"amount": 790, "paydate": DateTime(2024, 12, 1).toIso8601String(),}),
    ];
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
            Expanded(
              child: ListView(
                children: [
                  ...(paymentslist
                      .map(
                        (e) => PaymentListItem(payment: e),
                      )
                      .toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:waypay/models/payment_mode.dart';

class PaymentListItem extends StatelessWidget {
  final Payment payment;
  const PaymentListItem({required this.payment, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waypay/models/payment_mode.dart';

class PaymentListItem extends StatelessWidget {
  final Payment payment;
  const PaymentListItem({required this.payment, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              width: 57,
              child: FittedBox(
                child: Text(
                  DateFormat("dd MMM").format(payment.paydate),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 66,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFB8B8B8)),
                borderRadius: BorderRadius.circular(12),
                image: payment.isCurrent
                    ? const DecorationImage(
                        image: AssetImage("assets/cardblue.png"),
                        fit: BoxFit.cover,
                      )
                    : !payment.isAlive
                        ? const DecorationImage(
                            image: AssetImage("assets/cardred.png"),
                            fit: BoxFit.cover,
                          )
                        : null,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(payment.amount.toStringAsFixed(2)), Text("Оплачен ${DateFormat("dd.MM.yyyy").format(payment.paydate)}")],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

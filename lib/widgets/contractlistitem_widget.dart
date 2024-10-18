import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waypay/models/contract_model.dart';

class ContractListItem extends StatelessWidget {
  final Contract contract;
  const ContractListItem({required this.contract, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black)
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("№ Договора: ${contract.id}"),
            const Spacer(),
            Text("${contract.user.lastName} ${contract.user.name} ${contract.user.secondName}"),
            Text(DateFormat("dd.MM.yyyy").format(contract.date)),
            const SizedBox(height: 9,),
            Text(contract.user.phoneNumber),
          ],
        ),
      ),
    );
  }
}
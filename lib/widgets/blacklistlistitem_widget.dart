import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:waypay/models/user_model.dart';

class BlacklistListItem extends StatelessWidget {
  final UserModel user;
  const BlacklistListItem({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: const Color(0xFF454545),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID: ${user.id}"),
            const Spacer(),
            Text("${user.lastName} ${user.name} ${user.secondName}"),
            Text(DateFormat("dd.MM.yyyy").format(user.birthDate)),
            const SizedBox(height: 9,),
            Text(user.phoneNumber),
          ],
        ),
      ),
    );
  }
}
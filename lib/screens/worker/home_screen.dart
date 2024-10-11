import 'package:flutter/material.dart';
import 'package:waypay/widgets/supportbutton_widget.dart';
import 'package:waypay/widgets/workermainoptions_widget.dart';

class WorkerHomeScreen extends StatelessWidget {
  const WorkerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 40,
                color: Color(0xFF454545),
              ),
            ),
        title: const Text(
          "Сотрудник",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        titleSpacing: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: const [
          WorkerMainOptions(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const SupportButton(),
    );
  }
}

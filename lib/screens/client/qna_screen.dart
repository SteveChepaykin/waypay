import 'package:flutter/material.dart';

class QnAScreen extends StatelessWidget {
  const QnAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 45,
          ),
        ),
      ),
      body: const Center(
        child: Text(""),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListScreenView extends StatelessWidget {
  const ListScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios) ,
        onPressed: () => Navigator.pop(context),
        ),
        title: const Text("List Screen Page"),
      ),
    );
  }
}
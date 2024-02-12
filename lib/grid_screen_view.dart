import 'package:flutter/material.dart';

class GridScreenView extends StatelessWidget {
  const GridScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios) ,
        onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Grid Screen Page"),
      ),
    );
  }
}
import 'package:flutter/material.dart';
// Grid View

class TampilanGrid extends StatelessWidget {
  const TampilanGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeri Ku"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        crossAxisCount: 3,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        children: List.generate(24, (index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
            child: Image.network("https://picsum.photos/id/${index*3}/200"),
          );
        }),
      ),
    );
  }
}

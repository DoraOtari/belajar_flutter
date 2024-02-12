import 'package:belajar_flutter/tampilan_list.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/tampilan_grid.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexDipilih = 0;
  final List _halaman = const<Widget>[
    Text("Home Page", style: TextStyle(fontFamily: 'Pacifico',fontSize: 36),),
    TampilanGrid(),
    TampilanList(),
  ];
  void _menuDiTap(int index) {
    setState(() {
      _indexDipilih = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: _halaman.elementAt(_indexDipilih)
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_on), label: "Grid View"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List View"),
        ],
        currentIndex: _indexDipilih,
        onTap: _menuDiTap,
      ),
    );
  }
}


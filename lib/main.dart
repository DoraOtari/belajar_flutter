import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Pembaruan",
              ),
              Tab(
                text: "Panggilan",
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.black45,
          ),
          title: const Text(
            "Whatsapp Bro",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green.shade800,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
        body: badanTabBar(),
      ),
    );
  }
}

Widget badanTabBar() {
  var waktu = DateFormat.Hm().format(DateTime.now());
  List<Map<String, String>> isiItems = [
   { 'Hera': 'pinjam dulu seratus',
    'Heru' : 'main yuk',
    'budi',
    'Agus',
    'satria',
    'agung',
    'budiman',}
  ];
  var items = List.generate(isiItems.length, (index) => isiItems[index]);
  print(items[3]);
  return TabBarView(
    children: <Widget>[
      const Text("komunitas"),
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200")),
            title: const Text("Hera Setiawan"),
            subtitle: const Text("pinjam dulu seratus besok saya ganti"),
            trailing: Text(waktu.toString()),
          );
        },
      ),
      const Text("pembaruan"),
      const Text("panggilan"),
    ],
  );
}

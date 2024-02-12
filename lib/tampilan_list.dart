import 'package:flutter/material.dart';
// List View

class TampilanList extends StatelessWidget {
  const TampilanList({super.key});

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
            labelPadding: EdgeInsets.symmetric(horizontal: 2),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green.shade800,
          child: const Icon(Icons.message, color: Colors.white),
        ),
      ),
    );
  }
}

Widget badanTabBar() {
  final List<Map<String, dynamic>> listChat = [
    {
      'pengirim': 'hera setiawan',
      'pesan': 'pinjam dulu seratus besok saya ganti',
      'waktu': '12:50'
    },
    {
      'pengirim': 'budi setiawati',
      'pesan': 'ayok kita bukber',
      'waktu': '16:00'
    },
    {
      'pengirim': 'wilya hidayanti',
      'pesan': 'kapan tes cpns dibuka',
      'waktu': '19:00'
    },
  ];

  return TabBarView(
    children: <Widget>[
      const Text("komunitas"),
      ListView(
          children: listChat.map((e) {
        return ListTile(
          leading: const CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/id/2/200")),
          title: Text(e['pengirim']),
          subtitle: Text(e['pesan']),
          trailing: Text(e['waktu']),
        );
      }).toList()),
      const Text("pembaruan"),
      const Text("panggilan"),
    ],
  );
}

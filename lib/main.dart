import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TampilanGrid(),
  ));
}

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
  var waktu = DateFormat.Hm().format(DateTime.now());
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

// Grid View

class TampilanGrid extends StatelessWidget {
  const TampilanGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        children: [
          Row(
            children: [
              const Expanded(
                  child: Row(
                children: [
                  Text(
                    "hrastiawn",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              )),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                    radius: 35,
                  ),
                  const Text(
                    "Hera Setiawan",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(3.0),
                    child: const Text("@hrastiawn",
                        style: TextStyle(fontSize: 10)),
                  )
                ],
              ),
              const Column(
                children: [
                  Text(
                    "100",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("postingan")
                ],
              ),
              const Column(
                children: [
                  Text(
                    "1000",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("pengikut")
                ],
              ),
              const Column(
                children: [
                  Text(
                    "1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("mengikuti")
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 50,
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("Edit Profil"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 50,
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("Edit Profil"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage("https://picsum.photos/id/4/200/300"),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple, width: 3.0),
                     ),
                ),
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage("https://picsum.photos/id/3/200/300"),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple, width: 3.0),
                     ),
                ),
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage("https://picsum.photos/id/1/200/300"),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple, width: 3.0),
                     ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

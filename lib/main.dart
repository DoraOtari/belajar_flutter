import 'package:flutter/material.dart';

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
  return const TabBarView(
    children: <Widget> [
      Text("komunitas"),
      Text("chat"),
      Text("pembaruan"),
      Text("panggilan"),
    ],
  );
}

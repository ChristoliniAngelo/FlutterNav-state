// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_navigation/2.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Halaman Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('MENU'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.adjust),
            title: Text("Peminjaman"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyWidget(
                        paramater: "A",
                        parameter2: "B",
                      )));
            },
          ),
          ListTile(leading: Icon(Icons.book), title: Text("Pengembalian")),
        ],
      )),
      appBar: AppBar(
        title: Center(child: Text(judul)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Username"),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Icon(LineIcons.desktop),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const MyWidget(
                        paramater: "A",
                        parameter2: "B",
                      ),
                    ),
                  );
                },
                child: const Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}

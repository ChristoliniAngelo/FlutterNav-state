// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_navigation/main.dart';

class MyWidget extends StatelessWidget {
  final String paramater;
  final String parameter2;
  const MyWidget(
      {super.key, required this.paramater, required this.parameter2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("halaman dua"),
      ),
      body: Column(
        children: [
          const Text("Login Berhasil"),
          SizedBox(child: Text(paramater)),
          SizedBox(child: Text(parameter2)),
          ElevatedButton(
            child: const Text("Kembali"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: const Text("Logout"),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

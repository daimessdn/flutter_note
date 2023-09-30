import 'package:flutter/material.dart';
import 'package:helloworld/screens/create.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Notes")),

      // tambahin floating button
      // // buat masuk ke halaman tambah note
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CreateNote()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

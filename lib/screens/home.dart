import 'package:flutter/material.dart';

import 'package:helloworld/models/note_model.dart';
import 'package:helloworld/screens/create.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> notes = List.empty(growable: true); // inisiiasi note kosong
  // // dari list kosong

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Notes")),

      body: ListView.builder(
          itemCount: notes.length,

          // map looping notes yang udah dibikin
          itemBuilder: (context, index) {
            // nampilin card
            return Card(
                child: Padding(
              padding: const EdgeInsets.all(9),
              child: Column(children: [
                Text(
                  notes[index].title,
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  notes[index].body,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ]),
            ));
          }),

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

  // method note kalo ditambah
  void noNewNoteCreated(Note note) {
    notes.add(note);
    setState(() {});
  }

  // method note kalo dihapus
  void onNoteDeleted(int index) {
    notes.removeAt(index);
    setState(() {});
  }
}

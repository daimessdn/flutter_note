import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  // inisiasi state
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create Note"),
        ),

        // tambah isi add note
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  style: const TextStyle(fontSize: 28),
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Title"),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: bodyController, // masang state/controller
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Yout note here..."),
                ),
              ],
            )));
  }
}

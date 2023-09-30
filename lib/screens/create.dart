import 'dart:ui';

import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
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
                  style: const TextStyle(fontSize: 28),
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Title"),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Yout note here..."),
                ),
              ],
            )));
  }
}

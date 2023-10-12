import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notesViewBodyWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

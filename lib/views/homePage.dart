import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notesViewBodyWidget.dart';

import '../widgets/addNoteBottomSheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

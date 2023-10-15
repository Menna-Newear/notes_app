import 'package:flutter/material.dart';
import 'package:notes_app/widgets/addNoteForm.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: addNoteForm(),
      ),
    );
  }
}

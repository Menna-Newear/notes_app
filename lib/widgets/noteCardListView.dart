import 'package:flutter/material.dart';
import 'package:notes_app/widgets/noteCard.dart';

class NoteCardListView extends StatelessWidget {
  const NoteCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const NoteCard();
    }));
  }
}

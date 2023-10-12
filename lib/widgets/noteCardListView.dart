import 'package:flutter/material.dart';
import 'package:notes_app/widgets/noteCard.dart';

class NoteCardListView extends StatelessWidget {
  const NoteCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            return const NoteCard();
          })),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customAppBarWidget.dart';
import 'package:notes_app/widgets/noteCardListView.dart';

class NotesViewBodyWidget extends StatelessWidget {
  const NotesViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBarWidget(
            titleName: "Notes",
            icon: Icon(Icons.search),
          ),
          Expanded(
            child: NoteCardListView(),
          )
        ],
      ),
    );
  }
}

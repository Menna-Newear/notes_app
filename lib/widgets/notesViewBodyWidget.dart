import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custimAppBarWidget.dart';

class NotesViewBodyWidget extends StatelessWidget {
  const NotesViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBarWidget(),
      ],
    );
  }
}

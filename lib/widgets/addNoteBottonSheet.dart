import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:notes_app/widgets/customAddNoteButton.dart';
import 'package:notes_app/widgets/customTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CustomTextFeild(
              labelName: "Title",
            ),
            Gutter(),
            CustomTextFeild(
              labelName: "Content",
              maxLines: 5,
            ),
            Gutter(),
            CustomAddNoteButton()
          ],
        ),
      ),
    );
  }
}

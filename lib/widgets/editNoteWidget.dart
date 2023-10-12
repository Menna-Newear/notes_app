import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:notes_app/widgets/customAppBarWidget.dart';
import 'package:notes_app/widgets/customTextField.dart';

class EditNoteWidget extends StatelessWidget {
  const EditNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBarWidget(
              titleName: "Edit Note",
              icon: Icon(Icons.check),
            ),
            Gutter(),
            CustomTextFeild(labelName: "title"),
            Gutter(),
            CustomTextFeild(
              labelName: "Content",
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}

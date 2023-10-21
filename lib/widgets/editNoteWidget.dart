import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colorsListView.dart';
import 'package:notes_app/widgets/customAppBarWidget.dart';
import 'package:notes_app/widgets/customTextField.dart';

class EditNoteWidget extends StatefulWidget {
  const EditNoteWidget({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNoteWidget> createState() => _EditNoteWidgetState();
}

class _EditNoteWidgetState extends State<EditNoteWidget> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBarWidget(
              onPress: () {
                widget.notes.noteTitle = title ?? widget.notes.noteTitle;
                widget.notes.noteContent = content ?? widget.notes.noteContent;
                widget.notes.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              titleName: "Edit Note",
              icon: const Icon(Icons.check),
            ),
            const Gutter(),
            CustomTextFeild(
                onchanged: (value) {
                  title = value;
                },
                labelName: widget.notes.noteTitle),
            const Gutter(),
            CustomTextFeild(
              onchanged: (data) {
                content = data;
              },
              labelName: widget.notes.noteContent,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}

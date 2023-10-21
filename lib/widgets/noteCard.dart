import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/editNoteView.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.model});
  final NoteModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            notes: model,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 24,
        ),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            color: Color(model.noteColor),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                model.noteTitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  model.noteContent,
                  style: const TextStyle(
                    color: Color(0xff916A38),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  model.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 26,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                bottom: 16,
              ),
              child: Text(
                model.noteDate,
                style: const TextStyle(
                  color: Color(0xff916A38),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

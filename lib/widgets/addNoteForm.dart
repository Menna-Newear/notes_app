import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:notes_app/addNoteCubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/customAddNoteButton.dart';
import 'package:notes_app/widgets/customTextField.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextFeild(
            onSaved: (value) => title = value,
            labelName: "Title",
          ),
          const Gutter(),
          CustomTextFeild(
            onSaved: (value) => content = value,
            labelName: "Content",
            maxLines: 5,
          ),
          const Gutter(),
          CustomAddNoteButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var note = NoteModel(
                    noteTitle: title!,
                    noteContent: content!,
                    noteColor: Colors.blue.value,
                    noteDate: DateTime.now().toString());
                BlocProvider.of<AddNoteCubitCubit>(context).addNote(note);
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}

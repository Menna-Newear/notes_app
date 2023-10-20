import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/customAddNoteButton.dart';
import 'package:notes_app/widgets/customTextField.dart';
import 'package:intl/intl.dart';

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
          BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomAddNoteButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var now = DateTime.now();
                    var formatedDate = DateFormat.yMMMEd().format(now);
                    var note = NoteModel(
                        noteTitle: title!,
                        noteContent: content!,
                        noteColor: Colors.blue.value,
                        noteDate: formatedDate.toString());
                    BlocProvider.of<AddNoteCubitCubit>(context).addNote(note);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}

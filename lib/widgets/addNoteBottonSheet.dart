import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/addNoteCubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/widgets/addNoteForm.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("Failed ${state.errMessage}");
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(
                child: addNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}

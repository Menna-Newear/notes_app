import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/customAppBarWidget.dart';
import 'package:notes_app/widgets/noteCardListView.dart';

class NotesViewBodyWidget extends StatefulWidget {
  const NotesViewBodyWidget({super.key});

  @override
  State<NotesViewBodyWidget> createState() => _NotesViewBodyWidgetState();
}

class _NotesViewBodyWidgetState extends State<NotesViewBodyWidget> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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

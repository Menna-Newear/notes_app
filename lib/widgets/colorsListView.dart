import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/widgets/colorItem.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          itemCount: kcolorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubitCubit>(context).color =
                      kcolorsList[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: kcolorsList[index],
                  hasColor: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}

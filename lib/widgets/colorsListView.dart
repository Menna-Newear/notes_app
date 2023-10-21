import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/colorItem.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colorsList = const [
    Color(0xffFBF8CC),
    Color(0xffFDE4CF),
    Color(0xffFFCFD2),
    Color(0xffF1C0E8),
    Color(0xffCFBAF0),
    Color(0xffA3C4F3),
    Color(0xff90DBF4),
    Color(0xff8EECF5),
    Color(0xff98F5E1),
    Color(0xffB9FBC0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          itemCount: colorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubitCubit>(context).color =
                      colorsList[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: colorsList[index],
                  hasColor: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}

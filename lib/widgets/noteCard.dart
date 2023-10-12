import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        top: 24,
      ),
      decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Build You Career with Tharwat Samy",
                style: TextStyle(
                  color: Color(0xff916A38),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 8.0,
              bottom: 16,
            ),
            child: Text(
              "12 Oct 2023",
              style: TextStyle(
                color: Color(0xff916A38),
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}

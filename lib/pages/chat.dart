import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ChoiceChip(
          label:  Text("CHIPS",style: TextStyle(fontSize: 50)),
          selected: isSelected,
          selectedColor: Colors.orangeAccent,
          onSelected: (newState){
          setState(() {
            isSelected = newState;
          });
          },
        )

    );
  }
}

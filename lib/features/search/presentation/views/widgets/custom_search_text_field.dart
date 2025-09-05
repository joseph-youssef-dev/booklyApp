import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineBorder(),

        focusedBorder: buildOutlineBorder(),

        hintText: "Search a book ...",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(opacity: .8, child: Icon(Icons.search, size: 30)),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}

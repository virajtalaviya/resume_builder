import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.textEditingController,
    required this.title,
    required this.hintText,
    this.maxLines,
  });

  final TextEditingController textEditingController;
  final String title;
  final String hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.grey.shade800, fontSize: 18)),
        SizedBox(
          height: 50,
          child: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              isCollapsed: false,
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            maxLines: maxLines,
            cursorColor: Colors.blue,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

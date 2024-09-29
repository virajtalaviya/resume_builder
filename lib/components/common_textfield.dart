import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.maxlines,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1.5,
        color: Colors.black,
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: textEditingController,
        maxLines: maxlines,
        decoration: InputDecoration(
          hintText: hintText,
          border: outlineInputBorder,
          errorBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          disabledBorder: outlineInputBorder,
          focusedErrorBorder: outlineInputBorder,
        ),
      ),
    );
  }
}

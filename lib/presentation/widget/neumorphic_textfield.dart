import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/inner_shadow.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/neumorphic_container.dart';

class NeumorphicTextField extends StatelessWidget {
  final String hint;
  final int minLine;
  final int maxLength;
  final TextEditingController controller;
  const NeumorphicTextField(
      {this.minLine,
      this.maxLength,
      @required this.controller,
      @required this.hint,
      Key key})
      : assert((minLine == null && maxLength == null) ||
            (minLine != null && maxLength != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return NeuMorphicContainer(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: ConcaveDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          colors: [_theme.colorScheme.primary, _theme.colorScheme.secondary],
          depression: 5,
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          maxLength: maxLength,
          maxLines: null,
          minLines: minLine,
        ),
      ),
    );
  }
}

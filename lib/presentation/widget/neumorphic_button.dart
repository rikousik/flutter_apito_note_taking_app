import 'package:flutter/material.dart';

class NeumorphicButton extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const NeumorphicButton(
      {Key key, @required this.child, this.padding, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: _theme.primaryColor,
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 10),
                color: _theme.colorScheme.primary,
                spreadRadius: -10,
                blurRadius: 10),
            BoxShadow(
              offset: const Offset(-10, -10),
              color: _theme.colorScheme.secondary,
              blurRadius: 10,
              spreadRadius: -10,
            )
          ]),
      child: child,
    );
  }
}

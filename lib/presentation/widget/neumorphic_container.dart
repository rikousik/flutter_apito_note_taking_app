import 'package:flutter/material.dart';

class NeuMorphicContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const NeuMorphicContainer(
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
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
                offset: Offset(10, 10), color: Colors.black26, blurRadius: 15),
            BoxShadow(
                offset: const Offset(-10, -10),
                color: _theme.accentColor.withOpacity(0.4),
                blurRadius: 15)
          ]),
      child: child,
    );
  }
}

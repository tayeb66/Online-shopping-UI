import 'package:flutter/material.dart';
class ColorDot extends StatelessWidget {
  final Color? color;
  final bool? isSelected; // by default it's false
  const ColorDot({Key? key, this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 10),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected! ? color! : Colors.transparent,
        ),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color!, shape: BoxShape.circle),
      ),
    );
  }
}
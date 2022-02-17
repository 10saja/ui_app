import 'package:flutter/material.dart';
class OutBordingIndicator extends StatelessWidget {
  const OutBordingIndicator({
    Key? key,
    required this.marginEnd,
    required this.selected
  }) : super(key: key);
final double marginEnd;
final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end:marginEnd ),
      width: 14,
      height: 6,
      decoration: BoxDecoration(
          color: selected?Colors.blue: Colors.grey,
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}
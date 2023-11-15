import 'package:flutter/material.dart';



class RotatedContainer extends StatefulWidget {
  final double angle;
  final double width;
  final double height;
  final Color color;
  final Widget child;

  const RotatedContainer({
    Key? key,
    required this.angle,
    required this.width,
    required this.height,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  _RotatedContainerState createState() => _RotatedContainerState();
}

class _RotatedContainerState extends State<RotatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget.angle * (3.141592653589793 / 180),
      child: Container(
        width: widget.width,
        height: widget.height,
        color: widget.color,
        child: widget.child,
      ),
    );
  }
}

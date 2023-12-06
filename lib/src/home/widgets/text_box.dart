import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
    required this.child,
    this.height = 200,
    this.width = 200,
  });
  final Widget child;
  final double height;
  final double width;
  final _distance = const Offset(14, 14);
  final double blur = 30.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: blur,
            color: Colors.white,
            offset: -_distance,
            inset: true,
          ),
          BoxShadow(
            blurRadius: blur,
            color: const Color(
              0xFFA7A9AF,
            ),
            offset: _distance,
            inset: true,
          )
        ],
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: Center(child: child),
      ),
    );
  }
}

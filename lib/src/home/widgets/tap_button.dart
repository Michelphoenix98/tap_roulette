import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class TapButton extends StatefulWidget {
  final VoidCallback onTap;
  final Widget child;
  const TapButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  State<TapButton> createState() => _TapButtonState();
}

class _TapButtonState extends State<TapButton> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    final distance = _isPressed ? const Offset(5, 5) : const Offset(14, 14);
    final double blur = _isPressed ? 5.0 : 30.0;
    return Listener(
      onPointerUp: (_) => setState(() => _isPressed = !_isPressed),
      onPointerDown: (_) {
        setState(() => _isPressed = !_isPressed);
        widget.onTap.call();
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 250,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              color: Colors.white,
              offset: -distance,
              inset: _isPressed,
            ),
            BoxShadow(
              blurRadius: blur,
              color: const Color(
                0xFFA7A9AF,
              ),
              offset: distance,
              inset: _isPressed,
            )
          ],
        ),
        child: SizedBox(
          height: 100,
          width: 100,
          child: Center(child: widget.child),
        ),
      ),
    );
  }
}

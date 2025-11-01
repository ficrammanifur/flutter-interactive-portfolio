import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TypingText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration delay;

  const TypingText({
    Key? key,
    required this.text,
    this.style,
    this.delay = Duration.zero,
  }) : super(key: key);

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  late String _displayedText;

  @override
  void initState() {
    super.initState();
    _displayedText = '';
    _startTyping();
  }

  void _startTyping() {
    Future.delayed(widget.delay, () {
      if (!mounted) return;
      for (int i = 0; i < widget.text.length; i++) {
        Future.delayed(Duration(milliseconds: i * 50), () {
          if (mounted) {
            setState(() {
              _displayedText = widget.text.substring(0, i + 1);
            });
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayedText,
      style: widget.style ?? Theme.of(context).textTheme.bodyMedium,
    );
  }
}

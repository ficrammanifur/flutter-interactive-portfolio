import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Text(
          '© 2025 Ficram Manifur. All rights reserved.',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}

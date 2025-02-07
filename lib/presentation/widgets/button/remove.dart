import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({
    super.key,
    required this.onPressed
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.remove),
    );
  }
}
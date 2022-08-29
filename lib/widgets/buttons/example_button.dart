import 'package:flutter/material.dart';

class ExampleButton extends StatelessWidget {
  //const ExampleButton({required this.buttonAction, Key? key}) : super(key: key);
  const ExampleButton({required this.child, required this.buttonAction, Key? key}) : super(key: key);
  final Widget child;
  final VoidCallback buttonAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Center(child: child),
      ),
    );
  }
}

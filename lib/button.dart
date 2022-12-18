import 'package:flutter/material.dart';

class PaddingButton extends StatelessWidget {
  const PaddingButton({
    this.color,
    this.text,
    this.onpressed,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final Text? text;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: text,
        ),
      ),
    );
  }
}

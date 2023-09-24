import 'package:flutter/material.dart';

class HSpace extends StatelessWidget {
  const HSpace(this.size, {Key? key}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}

import 'package:flutter/material.dart';

class VSpace extends StatelessWidget {
  const VSpace(this.size, {Key? key}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}

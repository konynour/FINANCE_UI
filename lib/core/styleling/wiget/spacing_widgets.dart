import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpacingWidgets extends StatelessWidget {
  final double width;
  const SpacingWidgets(this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
class heightspace extends StatelessWidget {
  final double height;
  const heightspace(this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width:height.h);
  }
}
class widthspace extends StatelessWidget {
  final double width;
  const widthspace(this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width:width.w);
  }
}


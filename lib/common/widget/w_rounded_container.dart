import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgroundColor;

  const RoundedContainer({
    Key? key,
    required this.child,
    this.radius = 20,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.appColors.roundedBackground,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

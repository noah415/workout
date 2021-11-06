import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({
    Key? key,
    required this.radius,
    required this.alpha,
  }) : super(key: key);

  final double radius;
  final double alpha;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        'assets/images/me_and_gary.jpeg',
        width: radius * alpha,
        height: radius * alpha,
        fit: BoxFit.fill,
      ),
    );
  }
}

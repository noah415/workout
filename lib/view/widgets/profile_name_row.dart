import 'package:flutter/material.dart';
import 'package:workout/view/Styles/text_styles.dart';
import 'package:workout/view/widgets/profile_circle.dart';

class ProfileNameCircle extends StatelessWidget {
  const ProfileNameCircle({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Hello\n' + name + '.', style: title1),
            const ProfileCircle(radius: 10, alpha: 6,),
          ],
        ));
  }
}

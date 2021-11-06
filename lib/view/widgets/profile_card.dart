import 'package:flutter/material.dart';
import 'package:workout/view/Styles/text_styles.dart';
import 'package:workout/view/widgets/profile_circle.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  _ProfileCard createState() => _ProfileCard();
}

class _ProfileCard extends State<ProfileCard> {
  final FName = '';
  final LName = '';

  @override
  Widget builder(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: cardColor,
      child: Center(
        child: Column(
          children: <Widget>[
            const ProfileCircle(radius: 60, alpha: 2),
            Text(name)
          ],
        ),
      ),
    );
  }
}

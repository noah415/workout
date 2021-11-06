import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout/view/Styles/Colors/colors.dart';
import 'package:workout/view/Styles/text_styles.dart';
import 'package:workout/view/widgets/profile_card.dart';
import 'package:workout/view/widgets/profile_circle.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark_theme,
      body: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 80, 10, 10),
            child: ProfileCard(
                FName: 'Noah',
                LName: 'Otsuka',
                bio: 'Hi my name is Noah and I am a full stack devolper...'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout/view/Styles/text_styles.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: const <Widget>[
            ProfileCircle(radius: 60),
            Text(
              'Noah Otsuka',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bio',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
                'A filler word is an apparently meaningless word, phrase, or sound that marks a pause '),
          ],
        ),
      ),
    );
  }
}

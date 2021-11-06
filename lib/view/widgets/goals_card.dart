

import 'package:flutter/material.dart';

class GoalsCard extends StatefulWidget {
  const GoalsCard(
      {Key? key,})
      : super(key: key);

  final String FName;
  final String LName;
  final String bio;

  @override
  _ProfileCard createState() => _ProfileCard();
}

class _ProfileCard extends State<ProfileCard> {
  // TODO: if backend is implemented change these to late vars
  //late FName = '';
  //late LName = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      color: cardColor,
      child: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(10),
                child: ProfileCircle(radius: 60, alpha: 2),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.FName + ' ' + widget.LName,
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: textColorFire),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 40),
              child: Text(widget.bio,
                  style: const TextStyle(color: textColorDark, fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
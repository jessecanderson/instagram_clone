import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsFeedTile extends StatelessWidget {
  final int index;

  NewsFeedTile(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 15.0,
            bottom: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('lib/assets/images/profile.jpg'),
              ),
              Column(
                children: <Widget>[
                  Text('Jesse Anderson'),
                  Text('Tallahssee, Fl'),
                ],
              ),
              SizedBox(width: 200.0),
              Icon(FontAwesomeIcons.ellipsisH)
            ],
          ),
        ),
        Container(
          padding: EdgeInsetsDirectional.only(
            top: 10.0,
            bottom: 5.0,
          ),
          child: Image.asset('lib/assets/images/kitties.jpg'),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(FontAwesomeIcons.heart),
              Icon(FontAwesomeIcons.comment),
              Icon(FontAwesomeIcons.paperPlane),
              SizedBox(
                width: 300.0,
              ),
              Icon(FontAwesomeIcons.bookmark),
            ],
          ),
        ),
      ],
    );
  }
}

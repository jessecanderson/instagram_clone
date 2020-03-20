import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/widgets/news_feed_tile_widget.dart';

class HomeView extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomNavBarIcons = [
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.home),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.search),
      title: Text('Search'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.plusSquare),
      title: Text('Add'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.heart),
      title: Text('Favorites'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.user),
      title: Text('Profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            height: 125.0,
            padding: EdgeInsets.only(bottom: 10.0, top: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('lib/assets/images/profile.jpg'),
                      ),
                    ),
                    Text(
                      'jessecanderson',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              // itemCount: 10,
              itemBuilder: (context, index) => NewsFeedTile(index),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: bottomNavBarIcons,
      ),
    );
  }
}

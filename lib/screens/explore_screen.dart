import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.search),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () => print('Search'),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.notifications),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () => print('Notifications'),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.account_circle),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () => print('User'),
          ),
        ],
        title: Image(
          image: AssetImage('assets/logos/streamit_logo.png'),
          width: 100.0,
        ),
      ),
    );
  }
}

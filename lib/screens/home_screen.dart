import 'package:flutter/material.dart';
import 'package:streamit/screens/explore_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white10,
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ExploreScreen(),
            ),
          ),
          child: Image(
            width: MediaQuery.of(context).size.width / 2,
            image: AssetImage('assets/logos/streamit_logo.png'),
          ),
        ),
      ),
    );
  }
}

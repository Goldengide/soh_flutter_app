import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({
    super.key,
    });


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.apps, color: Colors.black, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.video, color: Colors.black, size: 30),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bookBible, color: Colors.black, size: 30),
            label: 'Bible',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps, color: Colors.black, size: 30),
            label: 'More',
          ),
        ],
    );
  }
}



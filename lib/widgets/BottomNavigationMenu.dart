import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({
    super.key,
    });

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();


  
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.video, color: Colors.black, size: 30),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_sharp, color: Colors.black, size: 30),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.
              if (_selectedIndex == index) {
              }
              break;
            case 1:
              // Navigation;
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },

        
    );
  }
}



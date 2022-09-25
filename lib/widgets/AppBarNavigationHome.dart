import 'package:flutter/material.dart';




class AppBarNavigationHome extends StatelessWidget {
  const AppBarNavigationHome({
    super.key,
    });


  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Welcome'),
        leading: IconButton(
          icon: Icon(Icons.waving_hand_sharp),
          tooltip: 'Home/Menu',
          onPressed: () {
            // Navigator.pop(context);
          }
        )
      );
    }
}



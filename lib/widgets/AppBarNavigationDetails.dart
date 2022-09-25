import 'package:flutter/material.dart';
import '../arguments/DetailScreenArguments.dart';

class AppBarNavigationDetails extends StatelessWidget implements PreferredSizeWidget {
  const AppBarNavigationDetails({
    super.key,
    });
  
  @override
  Size get preferredSize => const Size.fromHeight(50);


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;
    return AppBar(
        title: Text(args.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Previous',
          onPressed: () {
            Navigator.pop(context);
          }
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Tap for Color',
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Greg Erhabor Hope Mentorship!'),
                backgroundColor: Colors.red,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ]
      );
    }
}



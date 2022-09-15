import 'package:flutter/material.dart';
import 'dart:async';
import 'package:palette_generator/palette_generator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/DetailScreenHeader.dart';
import '../../widgets/BottomNavigationMenu.dart';
import '../../arguments/DetailScreenArguments.dart';


class ScreenArguments {
  final String title;
  final String imageUrl;

  ScreenArguments(this.title, this.imageUrl);
}


class MorningPrayer extends StatelessWidget {
  const MorningPrayer({
    super.key,
    });

  static const routeName = 'morning-prayer';



  @override
  Widget build(BuildContext context) {
    PaletteGenerator paletteGenerator;
    final args = ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;
    return Scaffold(
      appBar: AppBar(
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
                content: Text(args.imageUrl),
                backgroundColor: Colors.red,
              );
            },
          ),
        ]
      ),
      body: Column(
        children: [
          Expanded(
            child: DetailScreenHeader(
              title: args.imageUrl,
              image: AssetImage(args.imageUrl),
              imageSize: Size(256.0, 170.0),)
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    width: 60,
                    // height: ,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.all(0),
                    child: Stack(
                      // fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            args.imageUrl, 
                            width: 300,
                            fit: BoxFit.cover
                          )
                        )
                      ]
                    )
                  ),
                  title: Text('We need God'),
                  subtitle: Text('September 4, 2022')
                );
              }
            )
          )
        ]
      ),
      bottomNavigationBar: BottomNavigationMenu(),
    );
  }
}



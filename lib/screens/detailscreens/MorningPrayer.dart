import 'package:flutter/material.dart';
import 'dart:async';
import 'package:palette_generator/palette_generator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/DetailScreenHeader.dart';
import '../../widgets/BottomNavigationMenu.dart';
import '../../widgets/AppBarNavigationDetails.dart';
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
      appBar: AppBarNavigationDetails(),
      body: ListView(
        // padding: EdgeInsets.all(0),
        children: [
          DetailScreenHeader(
            title: args.imageUrl,
            image: AssetImage(args.imageUrl),
            imageSize: Size(256.0, 170.0),
          ),
          Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: ShapeDecoration(
                              color: Colors.brown.shade50,
                              shape: CircleBorder()
                            ),
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(0),
                              splashColor: Colors.blueGrey.shade50,
                              icon: Icon(Icons.download), 
                              iconSize: 20,
                              onPressed: () => {}
                            )
                          ),
                          Text('Download')
                        ]
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: ShapeDecoration(
                              color: Colors.brown.shade50,
                              shape: CircleBorder()
                            ),
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(0),
                              splashColor: Colors.blueGrey.shade50,
                              icon: Icon(Icons.create), 
                              iconSize: 20,
                              onPressed: () => {}
                            )
                          ),
                          Text('Take a note')
                        ]
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: ShapeDecoration(
                              color: Colors.brown.shade50,
                              shape: CircleBorder()
                            ),
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(0),
                              splashColor: Colors.blueGrey.shade50,
                              icon: Icon(Icons.share), 
                              iconSize: 20,
                              onPressed: () => {}
                            )
                          ),
                          Text('Share')
                        ]
                      )
                      
                    ]
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                    alignment: Alignment.center,
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown.shade50
                    ),
                    child: Text(
                      "Mixlr",

                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    alignment: Alignment.center,
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown.shade50
                    ),
                    child: Text(
                      "Zoom",

                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                    alignment: Alignment.center,
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown.shade50
                    ),
                    child: Text(
                      "Facebook",

                    )
                  )
                ]
          )
          
        ]
      ),
      bottomNavigationBar: BottomNavigationMenu(),
    );
  }
}



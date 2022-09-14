import 'package:flutter/material.dart';
import 'dart:async';
import 'package:palette_generator/palette_generator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ScreenArguments {
  final String title;
  final String imageUrl;

  ScreenArguments(this.title, this.imageUrl);
}

class ColorFromImage {
  PaletteGenerator paletteGenerator;
  final String imageUrl;
  ColorFromImage(this.paletteGenerator, this.imageUrl);

  Future<PaletteGenerator> _updatePaletteGenerator(imageUrl) async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      Image.asset(imageUrl).image,
    );
    return paletteGenerator;
    // return paletteGenerator.dominantColor.color;
  }

  dynamic payloadResponse(imageUrl) {
    return _updatePaletteGenerator(imageUrl).toString();
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    });

  static const routeName = 'detailScreen';

  // final String titleLabel;


  @override
  Widget build(BuildContext context) {
    PaletteGenerator paletteGenerator;
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    // dynamic getColorFromImageResponse = ColorFromImage(paletteGenerator, args.imageUrl);
    // String getColorText = getColorFromImageResponse.payloadResponse(args.imageUrl);
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
            child: Stack(
              alignment: Alignment.center,              
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  )
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
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
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover
                            )
                          )
                        ]
                      )
                    ),
                  ),
                ),
              ]
            )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
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
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
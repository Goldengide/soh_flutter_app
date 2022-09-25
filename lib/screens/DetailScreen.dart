import 'package:flutter/material.dart';
import 'dart:async';
import 'package:palette_generator/palette_generator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../arguments/DetailScreenArguments.dart';
import '../widgets/detailScreenHeader.dart';
import '../widgets/BottomNavigationMenu.dart';
import '../widgets/AppBarNavigationDetails.dart';





class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    });

  static const routeName = 'detailScreen';



  @override
  Widget build(BuildContext context) {
    PaletteGenerator paletteGenerator;
    final args = ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;
    return Scaffold(
      appBar: AppBarNavigationDetails(),
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


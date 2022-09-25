import 'package:flutter/material.dart';
import 'dart:async';
import 'package:palette_generator/palette_generator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/detailScreenHeader.dart';
import '../../widgets/BottomNavigationMenu.dart';
import '../../widgets/AppBarNavigationDetails.dart';
import '../../arguments/DetailScreenArguments.dart';



class ScreenArguments {
  final String title;
  final String imageUrl;

  ScreenArguments(this.title, this.imageUrl);
}


class Ihope extends StatelessWidget {
  const Ihope({
    super.key,
    });

  static const routeName = 'iHope';



  @override
  Widget build(BuildContext context) {
    PaletteGenerator paletteGenerator;
    final args = ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;
    return Scaffold(
      appBar: AppBarNavigationDetails(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailScreenHeader(
                title: args.imageUrl,
                image: AssetImage(args.imageUrl),
                imageSize: Size(256.0, 170.0),
            ),
            SizedBox(
              height: 5
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1.0, color: Colors.brown.shade50))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 70,
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(right: 20),
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
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text("We need God", style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5)
                              ),
                              Container(
                                child: Text("Thursday July 7th 2022")
                              )
                            ]
                          )
                        )
                      ]
                    )
                  );
                }
            )
            
          ]
        ),
      ),
      
      bottomNavigationBar: BottomNavigationMenu(),
    );
  }
}



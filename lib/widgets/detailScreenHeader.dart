import 'package:flutter/material.dart';
import 'dart:async';
import 'package:palette_generator/palette_generator.dart';
import '../utils/functions.dart';
@immutable
class DetailScreenHeader extends StatefulWidget {
  /// Creates the home page.
  const DetailScreenHeader({
    Key? key,
    this.title,
    required this.image,
    this.imageSize,
  }) : super(key: key);

  /// The title that is shown at the top of the page.
  final String? title;

  /// This is the image provider that is used to load the colors from.
  final ImageProvider image;

  /// The dimensions of the image.
  final Size? imageSize;

  @override
  State<DetailScreenHeader> createState() {
    return _DetailScreenHeaderState();
  }
}

class _DetailScreenHeaderState extends State<DetailScreenHeader> {
  Rect? region;
  // Rect? dragRegion;
  // Offset? startDrag;
  // Offset? currentDrag;
  PaletteGenerator? paletteGenerator;

  final GlobalKey imageKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    // if (widget.imageSize != null) {
    //   region = Offset.zero & widget.imageSize!;
    // }
    _updatePaletteGenerator();
  }

  Future<void> _updatePaletteGenerator() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      widget.image,
      size: widget.imageSize,
      maximumColorCount: 20,
    );
    setState(() {});
  }



  // Called when the drag ends. Sets the region, and updates the colors.
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          PaletteSwatches(generator: paletteGenerator, imageUrl: widget.title),
        ],
      );
  }
}

/// A widget that draws the swatches for the [PaletteGenerator] it is given,
/// and shows the selected target colors.
class PaletteSwatches extends StatelessWidget {
  /// Create a Palette swatch.
  ///
  /// The [generator] is optional. If it is null, then the display will
  /// just be an empty container.
  const PaletteSwatches({Key? key, this.generator, this.imageUrl}) : super(key: key);

  /// The [PaletteGenerator] that contains all of the swatches that we're going
  /// to display.
  final PaletteGenerator? generator;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final PaletteGenerator? paletteGen = generator;
    final String? imageAddress = imageUrl;
    if (paletteGen == null || paletteGen.colors.isEmpty) {
      return Container();
    }
    
    return Container(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: paletteGen.dominantColor?.color,
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
                                  imageAddress?? 'assets/images/noimage.jpg',
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
    );
    
  }
}
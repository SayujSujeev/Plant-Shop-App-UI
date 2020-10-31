import 'package:flutter/material.dart';

class PlantImage extends StatefulWidget {
  final String imageUrl;

  PlantImage(this.imageUrl);

  @override
  _PlantImageState createState() => _PlantImageState();
}

class _PlantImageState extends State<PlantImage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
        bottom: size.height * 0.42,
        right: 0,
        child: Image(
          height: size.height * 0.5,
          width: size.width * 0.55,
          image: AssetImage(widget.imageUrl),
        ));
  }
}

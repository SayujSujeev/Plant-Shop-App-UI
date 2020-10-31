import 'package:flutter/material.dart';
import 'package:plant_shop_app/models/plant.dart';
import 'package:plant_shop_app/screens/details/components/background_and_details.dart';
import 'package:plant_shop_app/screens/details/components/information.dart';
import 'package:plant_shop_app/screens/details/components/plant_image.dart';
import 'package:plant_shop_app/screens/details/components/specifications.dart';

class PlantDetailsScreen extends StatefulWidget {

  final Plant plant;

  PlantDetailsScreen({this.plant});

  @override
  _PlantDetailsScreenState createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Column(
              children: [
                BackgroundAndDetails(widget.plant),
                Information(widget.plant.description),
                Specifications(widget.plant.specifications),
              ],
            ),
            PlantImage(widget.plant.imageUrl),
          ],
        ),
      ),
    );
  }
}

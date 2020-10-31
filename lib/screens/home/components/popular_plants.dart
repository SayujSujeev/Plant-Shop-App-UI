import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/data/data.dart';
import 'package:plant_shop_app/models/plant.dart';
import 'package:plant_shop_app/screens/details/plant_details_screen.dart';

class PopularPlants extends StatelessWidget {
  Widget _buildPopularPlants(BuildContext context, int index) {
    Plant plant = popularPlants[index];
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PlantDetailsScreen(plant: plant),
          ),
        ),
      },
      child: Padding(
        padding: EdgeInsets.only(right: appPadding, bottom: appPadding),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: size.height * 0.45,
              width: size.width * 0.55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    darkGreen,
                    green,
                    lightGreen,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.4),
                      offset: Offset(10, 10),
                      blurRadius: 10.0)
                ],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                height: size.height * 0.45,
                width: size.width * 0.55,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.all(appPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                        Text(
                          '\$${plant.price.toString()},-',
                          style: TextStyle(color: white, fontSize: 18),
                        ),
                      ],
                    ),
                    Text(
                      '${plant.name}',
                      style: TextStyle(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Volkhov'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: size.height * 0.06,
                child: Container(
                  height: size.height * 0.3,
                  child: Image.asset(plant.imageUrl),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.45,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: popularPlants.length,
          itemBuilder: (context, index) {
            return _buildPopularPlants(context, index);
          }),
    );
  }
}

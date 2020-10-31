import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/models/plant.dart';

class BackgroundAndDetails extends StatefulWidget {
  final Plant plant;

  BackgroundAndDetails(this.plant);

  @override
  _BackgroundAndDetailsState createState() => _BackgroundAndDetailsState();
}

class _BackgroundAndDetailsState extends State<BackgroundAndDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.5,
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
              blurRadius: 20.0)
        ],
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
      ),
      child: Container(
        height: size.height * 0.5,
        decoration: BoxDecoration(
          color: white.withOpacity(0.2),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: appPadding, vertical: appPadding * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: white,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: appPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.plant.name,style: TextStyle(
                    color: white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Volkhov'
                  ),),
                  SizedBox(height: size.height * 0.02,),
                  Text('Price',style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                  ),),
                  Text('\$${widget.plant.price},-',style: TextStyle(
                    color: white,
                    fontSize: 18,
                  ),),
                  SizedBox(height: size.height * 0.02,),
                  Text('Height',style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),),
                  Text('${widget.plant.height}cm',style: TextStyle(
                    color: white,
                    fontSize: 18,
                  ),),
                  SizedBox(height: size.height * 0.02,),
                  Text('Category',style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),),
                  Text('${widget.plant.category}',style: TextStyle(
                    color: white,
                    fontSize: 18,
                  ),),
                  SizedBox(height: size.height * 0.03,),
                  Container(
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: white.withOpacity(0.4),
                          offset: Offset(5,5),
                          blurRadius: 10.0,
                        )
                      ]
                    ),
                    width: size.width * 0.33,
                    height:  size.height * 0.04,
                    child: Center(
                      child: Text(
                        '+ Add to cart',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

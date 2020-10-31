import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';

class Specifications extends StatefulWidget {

  final List specification;

  Specifications(this.specification);

  @override
  _SpecificationsState createState() => _SpecificationsState();
}

class _SpecificationsState extends State<Specifications> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: appPadding * 1.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.45,
              height: size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Specifications',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Volkhov',
                  ),),
                  ListView.builder(
                    itemCount: widget.specification.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                      return Text(widget.specification[index],style: TextStyle(height: 1.8),);
                      }
                  )
                ],
              ),
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  colors: [
                    darkGreen,
                    green,
                    lightGreen,
                  ]
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0))
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: white.withOpacity(0.2),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0))
                ),
                padding: EdgeInsets.only(top: appPadding, left: appPadding,bottom: appPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.wb_sunny_outlined,color: white,),
                        SizedBox(width: size.width * 0.02,),
                        Text('Location in the sun',style: TextStyle(
                          color: white,
                        ),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.opacity_outlined,color: white,),
                        SizedBox(width: size.width * 0.02,),
                        Text('2x p.m. water',style: TextStyle(
                          color: white,
                        ),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_fire_department_outlined,color: white,),
                        SizedBox(width: size.width * 0.02,),
                        Text('room temperature',style: TextStyle(
                          color: white,
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}

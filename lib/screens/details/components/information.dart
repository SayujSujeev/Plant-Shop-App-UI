import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';

class Information extends StatefulWidget {
  final String description;

  Information(this.description);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding * 1.5, vertical: appPadding * 2),
      child: Container(
        height: size.height * 0.17,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Information',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Volkhov',
                ),),
                Container(
                  width: size.width * 0.25,
                  height: size.height * 0.035,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.4),
                        offset: Offset(3,3),
                        blurRadius: 10.0,
                      )
                    ],
                    color: grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.share_outlined,color: white,size: 20,),
                      Text('Share',style: TextStyle(
                        color: white
                      ),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.02,),
            Text(widget.description,textAlign: TextAlign.justify,maxLines: 5,overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state/providers/property.dart';
import 'package:real_state/services/style.dart';

import 'custom_text.dart';

class Homes extends StatefulWidget {
  final String image;
  final String title;

  Homes({@required this.image, @required this.title, String price});

  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    PropertyProvider property = Provider.of<PropertyProvider>(context);

    return Container(
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: property.selectedProperty == Property.HOUSE &&
                            widget.title == "House" ||
                        property.selectedProperty == Property.FLAT &&
                            widget.title == "Flat"
                    ? black
                    : grey[400],
                offset: Offset(2, 3),
                blurRadius: 6)
          ]),
      height: 20,
      width: 220,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // children: <Widget>[
          //   Image.asset(
          //     "images/california.jpg",
          //   ),
          //   CustomText(
          //     msg: widget.title,
          //     size: 16,
          //     color: grey,
          //     weight: null,
          //   )
          // ],
          children: <Widget>[
            Image.asset("images/${widget.image}"),
            Container(
              height: 40,
              width: 140,
              child: Container(
                child: Text("1044 USD/Month"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

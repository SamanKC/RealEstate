import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:real_state/providers/property.dart';
import 'package:real_state/providers/rooms.dart';
import 'package:real_state/services/style.dart';
import 'package:real_state/widgets/custom_text.dart';

import 'package:real_state/widgets/property_type.dart';
import 'package:real_state/widgets/homes.dart';
import 'package:real_state/widgets/buildings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PropertyProvider property = Provider.of<PropertyProvider>(context);
    RoomsProvider rooms = Provider.of<RoomsProvider>(context);
    double _lowerValue;
    double _upperValue;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: white,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomText(
                  msg: "Find the best home for you!",
                  size: 20,
                  weight: FontWeight.w400,
                  color: null,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  msg: "Communities",
                  size: 18,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  msg: "Connect people, support programs, lead...",
                  size: 16,
                  color: grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              height: 20,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.HOUSE);
                        },
                        child: PropertyType(
                          image: "california.jpg",
                          title: "California",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: PropertyType(
                          image: "flat.png",
                          title: "Flat",
                        )),
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.HOUSE);
                        },
                        child: PropertyType(
                          image: "california.jpg",
                          title: "California",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: PropertyType(
                          image: "flat.png",
                          title: "Flat",
                        )),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomText(
                  msg: "Homes",
                  size: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 190.0),
                child: CustomText(
                  msg: "See all..",
                  size: 16,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.HOUSE);
                        },
                        child: Homes(
                          image: "california.jpg",
                          title: "Null",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: Homes(
                            image: "flat.png",
                            title: "Flat",
                            price: "1024 USD")),
                  ),
                ],
              )),
          Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.HOUSE);
                        },
                        child: Buildings(
                          image: "california.jpg",
                          title: "Null",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: Buildings(
                          image: "profile.jpg",
                          title: "Flat",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: Buildings(
                          image: "flat.png",
                          title: "Flat",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: Buildings(
                          image: "flat.png",
                          title: "Flat",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          property.changePropertyType(Property.FLAT);
                        },
                        child: Buildings(
                          image: "flat.png",
                          title: "Flat",
                        )),
                  ),
                ],
              )),
          //
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Saved'),
          ),
        ],
      ),
    );
  }
}

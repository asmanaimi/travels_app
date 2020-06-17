import 'dart:ui';

import 'package:flutter/material.dart';

class jem extends StatefulWidget {
  final String image;
  final String title;
  final int id;

 jem({this.image, this.title, this.id});

  @override
  _jem createState() => _jem();
}

class _jem extends State<jem> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300.0,
                  child: Hero(
                      tag: 'scenery${widget.id}',
                      child: Image.asset(widget.image, fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SafeArea(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Go Back',
                                style: TextStyle(
                                    fontFamily: 'AbrilFatface',
                                    color: Colors.white,
                                    fontSize: 28.0),
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 190.0,left: 30.0,right: 30.0),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30.0,
                        height: 350.0,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(64, 52, 87, 0.5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.title,
                                style: TextStyle(
                                    fontFamily: 'AbrilFatface',
                                    color: Colors.white,
                                    fontSize: 28.0),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Welcome to El Jem\nThe ancient ampitheatre at El Jem is a dramatic and impressive sight, both because of its awesome size and solidity in relation to the modern buildings surrounding it, and because, like all ruins, it’s a sober reminder of the inevitable fleetingness of achievement. Built on a low plateau halfway between Sousse and Sfax, the colosseum and mosaic-filled archaeological museum are all the evidence you need to begin to grasp the scope of Roman civilisation in Africa. These days, the town is surrounded by olive groves, and tourism provides its major source of income.',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 13.0),
                                textAlign: TextAlign.center,
                              ),
                             
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
             SizedBox(height: 25.0),
              SizedBox(
                width: double.infinity,
                height: 550.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GalerryItem(image: 'assets/images/j1.jpg'),
                    ),
                    GalerryItem(image: 'assets/images/j2.jpg'),
                    GalerryItem(image: 'assets/images/j3.jpg'),
                
                  ],
                ),
              ),
          
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}

class GalerryItem extends StatelessWidget {
  final String image;

  GalerryItem({this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image(
              width: 180.0,
              height: 180.0,
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}


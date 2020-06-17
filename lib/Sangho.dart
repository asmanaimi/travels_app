import 'dart:ui';

import 'package:flutter/material.dart';

class Sangho extends StatefulWidget {
  final String image;
  final String title;
  final int id;

  Sangho({this.image, this.title, this.id});

  @override
  _Sangho createState() => _Sangho();
}

class _Sangho extends State<Sangho> {
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
                        height: 452.0,
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
                                'In a valley surrounded by mountains, the Sangho Privilege Tataouine offers a \nwarm and friendly welcome. Its comfortable bungalows are built in the style of housing troglodyte Berber village of Chenini.The pool offers a refreshing retreat facing the heat of the day. Tours are offered from the hotel and book directly on site.\nGuests can enjoy international cuisine and also discover local cuisine in the relaxed atmosphere of the restaurants.\nThe hotel is located just 5 minutes from downtown Tataouine, famous for hosting the old garrison battalions of Africa, and is located half an hour the troglodyte village of Chenini.',
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
                height: 500.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GalerryItem(image: 'assets/images/s1.jpg'),
                    ),
                    GalerryItem(image: 'assets/images/s2.jpg'),
                    GalerryItem(image: 'assets/images/s3.jpg'),
                    GalerryItem(image: 'assets/images/s4.jpg'),
                    GalerryItem(image: 'assets/images/s5.jpg'),


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


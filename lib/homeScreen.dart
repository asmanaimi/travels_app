import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travels_app/ali.dart';
import 'package:travels_app/badira.dart';
import 'package:travels_app/dougga.dart';
import 'package:travels_app/jem.dart';
import 'package:travels_app/sbeitla.dart';
import 'package:travels_app/spago.dart';
import 'package:travels_app/sushi.dart';
import 'package:travels_app/tej.dart';
import 'package:travels_app/Sangho.dart';

import 'package:travels_app/placeDetails.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'DISCOVER  TUNISIA',
                      style: TextStyle(
                          fontFamily: 'AbrilFatface',
                          color: Colors.white,
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(5.0, 6.0))
                          ]),
                    ),
                  
                  ],
                ),
              ),

              SizedBox(height: 25.0),
              SizedBox(
                width: double.infinity,
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Options(
                        title: 'Hotels',
                        icon: MdiIcons.beach,
                        active: false,
                      ),
                    ),
                    Options(
                       
                      title: 'Restaurants',
                      icon: MdiIcons.food,
                      active: false,
                    ),
                    Options(
                      title: 'Monuments',
                  
                      icon: MdiIcons.selectionSearch,
                      active: false,
                    ),
                   
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hotels',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'AbrilFatface',
                          color: Colors.white,
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(5.0, 6.0))
                          ]),
                    )
                    
                  ],
                  
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: badiraItem(
                        image: 'assets/images/exp_1.jpg',
                        title: 'Al Badira Hammamet',
                        id: 1,
                      ),
                    ),
                    SanghoItem(
                      image: 'assets/images/exp_2.jpg',
                      title: 'Sangho Privilege Tataouine',
                      id: 2,
                    ),
                   tejItem(
                      image: 'assets/images/exp_3.jpg',
                      title: 'Tej Marhaba Sousse',
                      id: 3,
                    ),
                  ],
                ),
              ),
           Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Restaurants',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'AbrilFatface',
                          color: Colors.white,
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(5.0, 6.0))
                          ]),
                    )
                    
                  ],
                  
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: aliItem(
                        image: 'assets/images/exp_4.PNG',
                        title: 'El Ali Tunis',
                        id: 4,
                      ),
                    ),
                    sushiItem(
                      image: 'assets/images/exp_5.PNG',
                      title: 'Origami Sushi Bar Ennasr',
                      id: 5,
                    ),
                    spagoItem(
                      image: 'assets/images/exp_6.PNG',
                      title: 'Spago lac tunis',
                      id: 6,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Famous Monuments',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'AbrilFatface',
                          color: Colors.white,
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(5.0, 6.0))
                          ]),
                    )
                    
                  ],
                  
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: jemItem(
                        image: 'assets/images/exp_10.PNG',
                        title: 'El jem Amphithéatre',
                        id: 7,
                      ),
                    ),
                    douggaItem(
                      image: 'assets/images/exp_11.jpg',
                      title: 'Dougga',
                      id: 8,
                    ),
                    sbeitlaItem(
                      image: 'assets/images/exp_12.jpg',
                      title: 'Sbeitla',
                      id: 9,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool active;

  Options({this.title, this.icon, this.active});

  @override
  Widget build(BuildContext context) {
  return 
    
    //child: 
    Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: (!active)
                  ? Colors.white.withOpacity(0.2)
                  : Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 38.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            title,
            style:
                TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 20.0),
          )
        ],
      ),
    );
  }
}



class SceneryItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  SceneryItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => PlaceDetailsScreen(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}



class badiraItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  badiraItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => badira(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}



class tejItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  tejItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => tej(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}



class SanghoItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  SanghoItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Sangho(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class jemItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  jemItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => jem(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
class sushiItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  sushiItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => sushi(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class SpagoItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  SpagoItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => spago(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
class aliItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  aliItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ali(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
class douggaItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  douggaItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => dougga(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
class sbeitlaItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  sbeitlaItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => sbeitla(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
class spagoItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  spagoItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => spago(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery$id",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

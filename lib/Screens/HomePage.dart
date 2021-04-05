import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.lightBlue,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.lightBlue,
        height: 75.0,
        items: <Widget>[
          Icon(Icons.home_rounded,size: 30,color: Colors.white,),
          Icon(Icons.bar_chart_rounded,size: 30,color: Colors.white,),
          Icon(Icons.search,size: 30,color: Colors.white,),
          Icon(Icons.person,size: 30,color: Colors.white,),
        ],
        animationDuration: Duration(
          milliseconds: 280,
        ),
        index: 0,
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          // code here for the buttons
        },
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 25.0, left: 20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      //put the menu button svg here
                      child: Icon(Icons.menu_rounded,size: 32,color: Colors.grey[800],),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      //put the user picture here
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/paul.png',fit: BoxFit.fill,),
                      )
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(left:20.0,top: 15.0,right: 20.0),
                child: Text('Discover,',style: TextStyle(fontSize: 36,fontWeight: FontWeight.w600),),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(left:20.0,top: 5.0,right: 20.0),
                child: Text('the Nature.',style: TextStyle(fontSize: 36,fontWeight: FontWeight.w600),),
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(left:20.0,top: 10.0,right: 20.0),
                child: DefaultTabController(
                  length: 5,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(right:24.0),
                    indicatorPadding: EdgeInsets.only(right:24.0),
                    isScrollable: true,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey[400],
                    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    unselectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('Mountains'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Beaches'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Landscape'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Waterfall'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Forest'),
                        ),
                      ),
                    ],
                  ),
                ),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //     Container(
                //       child: Text('Places', style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500,),),
                //     ),
                //     Container(
                //       child: Text('Inspirational', style: TextStyle(color: Colors.grey[400],fontSize: 20,fontWeight: FontWeight.w500),),
                //     ),
                //     Container(
                //       child: Text('Emotions', style: TextStyle(color: Colors.grey[400],fontSize: 20,fontWeight: FontWeight.w500),),
                //     ),
                //   ],
                // ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(right: 15.0),
                        height: 300,
                        width: 200.0,
                        decoration: BoxDecoration(
                           color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
                          height: 200.0,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 15.0),
                        height: 300,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1600298881974-6be191ceeda1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
                          height: 200.0,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 15.0),
                        height: 300,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
                          height: 200.0,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          children:[
                            TextSpan(
                              text: "Adventure Sport",
                              style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black87),
                            ),
                          ]
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          children:[
                            TextSpan(
                              text: "See all",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.blue),
                            ),
                          ]
                      ),
                    ),
                  ]
                )
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(left:20.0,right: 20.0),
                child: DefaultTabController(
                  length: 6,
                  initialIndex: 2,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(right:24.0),
                    indicatorPadding: EdgeInsets.only(right:24.0),
                    isScrollable: true,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey[400],
                    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    unselectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('Skiing'),
                        )
                      ),
                      Tab(
                        child: Container(
                          child: Text('Trekking'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Rock Climbing'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('SkyDiving'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('FlyBoarding'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Scuba Diving'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1522163182402-834f871fd851?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1386&q=80",
                          height: 100.0,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 100,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1597250861267-429663f244a8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
                          height: 100.0,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 100,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1609774812592-ac74e4983509?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80",
                          height: 200.0,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 100,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1599583287831-385c6a578044?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1502&q=80",
                          height: 200.0,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 100,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("https://images.unsplash.com/photo-1599243199233-c678d728569b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
                          height: 200.0,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

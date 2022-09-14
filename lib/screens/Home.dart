import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'DetailScreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Widget headerSection = +

  Column _buildSectionColumn(
    BuildContext context, 
    String title, 
    String imageUrl, 
    String desc
    ) {
    return Column(
            children: <Widget>[
              SizedBox(
                height: 15 
              ),
              Row(
                // padding: EdgeInsets.symmetric(30.0, 50.0),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: IconButton(
                      iconSize: 20, 
                      icon: Icon(Icons.arrow_forward), 
                      color: Colors.black, 
                      onPressed: () => {
                        Navigator.pushNamed(
                          context, 
                          DetailScreen.routeName,
                          arguments: ScreenArguments(title, imageUrl)
                          )
                      },
                    ),
                  )
                  
                  
                  // Icon(icon: Icons.star, color: Colors.black)

                ]
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                // height: ,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                padding: EdgeInsets.all(0),
                child: Stack(
                  // fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        imageUrl, 
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover
                      )
                    )
                  ]
                )
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15),
                child:Text(
                      desc, 
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      // overflow: TextOverflow.ellipsis,
                      softWrap: true
                    )
              )

            ]
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250.0,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(0),

            child: Stack(
              // fit: StackFit.expand,
              children: [
                ClipRRect(
                  // borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    'assets/images/header_image.jpg', 
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover
                  )
                ),
                Positioned(
                  bottom: 50,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    // alignment: AlignmentGeometry.center,
                    child:  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome to Church'.toUpperCase(),
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)
                      )
                    )
                  )
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child:  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sundays 8:00AM | Tuesdays & Thursdays 4:30pm'.toUpperCase(),
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)
                        // padding: EdgeInsets.symmetric(40.0, 50.0),
                      )
                    )
                  )
                ),
              ]
            ),

          ),
          
          _buildSectionColumn(context, 
            'Message of the Month', 
            'assets/images/newmonth.jpg', 
            'September  - Our month of Divine Surprises and Perfect Restoration'
          ),
          
          _buildSectionColumn(context, 
            'Early Morning Prayer', 
            'assets/images/early-morning-prayers.jpg', 
            'Early Morning Prayer Meetings is on Mixlr and at Mon - Sat by 6:30 GMT +1'
          ),
          _buildSectionColumn(context, 
            'Inspirational messages', 
            'assets/images/podcast.jpg', 
            'Good Shepherd - Part 10'
          ),
          _buildSectionColumn(context, 
            'iHope', 
            'assets/images/ihope.jpg', 
            'Keep Praising - September 4'
          )
          
          
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.apps, color: Colors.black, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.video, color: Colors.black, size: 30),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bookBible, color: Colors.black, size: 30),
            label: 'Bible',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps, color: Colors.black, size: 30),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
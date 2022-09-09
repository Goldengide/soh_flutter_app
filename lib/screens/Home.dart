import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Widget headerSection = +


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
          Column(
            children: <Widget>[
              Row(
                // padding: EdgeInsets.symmetric(30.0, 50.0),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      'Message of the Month',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: IconButton(
                      iconSize: 20, 
                      icon: Icon(Icons.arrow_forward), 
                      color: Colors.black, 
                      onPressed: () => {
                        // this.color
                      }
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
                        'assets/images/newmonth.jpg', 
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
                      'September  - Our month of Divine Surprises and Perfect Restoration', 
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      // overflow: TextOverflow.ellipsis,
                      softWrap: true
                    )
              )

            ]
          ),
          Column(
            children: <Widget>[
              Row(
                // padding: EdgeInsets.symmetric(30.0, 50.0),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Early Morning Prayer',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: IconButton(
                      iconSize: 20, 
                      icon: Icon(Icons.arrow_forward), 
                      color: Colors.black, 
                      onPressed: () => {
                        // this.color
                      }
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
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/images/early-morning-prayers.jpg', 
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover
                      )
                    )
                  ]
                )
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20),
                child:Text(
                      'Early Morning Prayer Meetings is on Mixlr and at Mon - Sat by 6:30 GMT +1', 
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      // overflow: TextOverflow.ellipsis,
                      softWrap: true
                    )
              )

            ]
          ),
          
          
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
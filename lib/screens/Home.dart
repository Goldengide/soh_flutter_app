import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Widget headerSection = +


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SSOH')),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250.0,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(0.0),

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
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Montserrat')
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
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Montserrat')
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
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Message of the Month',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Montserrat')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: IconButton(
                      iconSize: 40, 
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
                borderRadius: BorderRadius.circular(25.0),
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  'assets/images/newmonth.jpg', 
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  
                )
              ),

              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'September  - Our month of Divine Surprises and Perfect Restoration', 
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Montserrat')
                    )
                )
                ]
              )

            ]
          )
          
          

          

        ]
      )
    );
  }
}
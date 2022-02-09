import 'package:atar/views/MainScreens/HomeScreen.dart';
import 'package:atar/views/MainScreens/MainScreen.dart';
import 'package:atar/views/MainScreens/MapScreen.dart';
import 'package:atar/views/MainScreens/SavedScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedDestination = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    accountEmail: Text(
                      'naoufal.daouyou@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    accountName: Text(
                      'Daouyou Naoufal',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: Text('Home'),
                    selected: _selectedDestination == 0,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: MainSCreen(),
                            type: PageTransitionType.rightToLeft),
                      );
                      selectDestination(0);
                    },
                  ),
                  /*ListTile(
                    leading: Icon(Icons.map_outlined),
                    title: Text('Maps'),
                    selected: _selectedDestination == 1,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: MapScreen(),
                            type: PageTransitionType.rightToLeft),
                      );
                      selectDestination(1);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Saved'),
                    selected: _selectedDestination == 2,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: SavedScreen(),
                            type: PageTransitionType.rightToLeft),
                      );
                      selectDestination(2);
                    },
                  ),*/
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Divider(
                        color: Color(0xFF2BC016),
                      ),
                      ListTile(
                        leading: Icon(Icons.mail_outlined),
                        title: Text('Contact Us'),
                        selected: _selectedDestination == 3,
                        onTap: () {
                          /* Navigator.push(
                            context,
                            PageTransition(
                                child: ContactUs(),
                                type: PageTransitionType.rightToLeft),
                          );*/
                          selectDestination(3);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.info_outline),
                        title: Text('About Us'),
                        selected: _selectedDestination == 4,
                        onTap: () {
                          /*Navigator.push(
                            context,
                            PageTransition(
                                child: AboutUs(),
                                type: PageTransitionType.rightToLeft),
                          );*/
                          selectDestination(4);
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "V1.0.0",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}

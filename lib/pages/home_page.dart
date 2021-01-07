import 'package:flutter/material.dart';
import 'package:prayer_hub/component/round_icon_button.dart';
import 'package:prayer_hub/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    'Prayer Chain',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Prayer Partner',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Lobster',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/av.png',
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 20.0, left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nosakhare Zionnite',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '09034286339',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sister',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RoundIconButton(
                                        icon: Icons.comment,
                                        onPressed: () {},
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      RoundIconButton(
                                        icon: Icons.call,
                                        onPressed: () {},
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      RoundIconButton(
                                        icon: Icons.video_call,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    'Other Groups',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.star_rate_sharp),
                    title: Text("General Prayer Room"),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ChatPage.id);
                            },
                            child: Container(
                              color: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Chat',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.comment,
                                    size: 15.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 20,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ChatPage.id);
                            },
                            child: Container(
                              color: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.call,
                                    size: 15.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 20,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ChatPage.id);
                            },
                            child: Container(
                              color: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 3.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Video',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.video_call,
                                    size: 15.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {/* react to the tile being tapped */},
                    trailing: Icon(
                      Icons.album_sharp,
                      color: Colors.green,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_rate_sharp),
                    title: const Text("Prophetic Watch"),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ChatPage.id);
                            },
                            child: Container(
                              color: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 3.0),
                              child: Text(
                                'Join',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Group is Active',
                          ),
                        ],
                      ),
                    ),
                    onTap: () {/* react to the tile being tapped */},
                    trailing: Icon(
                      Icons.album_sharp,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_rate_sharp),
                    title: const Text("Intercessor"),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ChatPage.id);
                            },
                            child: Container(
                              color: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 3.0),
                              child: Text(
                                'Join',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Group is Active',
                          ),
                        ],
                      ),
                    ),
                    onTap: () {/* react to the tile being tapped */},
                    trailing: Icon(
                      Icons.album_sharp,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_rate_sharp),
                    title: const Text("Missionary"),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ChatPage.id);
                            },
                            child: Container(
                              color: Colors.green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 3.0),
                              child: Text(
                                'Join',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Group is Active',
                          ),
                        ],
                      ),
                    ),
                    onTap: () {/* react to the tile being tapped */},
                    trailing: Icon(
                      Icons.album_sharp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

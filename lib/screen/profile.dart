import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'addPost.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromRGBO(255, 255, 255, 0.94),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new IconButton(
                icon: new Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (HomeScreen()),
                    ),
                  );
                }),
            new IconButton(icon: new Icon(Icons.message), onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.notifications), onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.account_circle),
                color: const Color(0xffF6BA00),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ),
                  );
                }),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff5B49A6),
        child: new Icon(Icons.add,size: 30,),
        onPressed: () { Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => addPost(),
          ),
        );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/user.png'),
                        width: 120,
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 105, left: 10),
                        width: 100,
                        height: 25,
                        child: FloatingActionButton.extended(
                          heroTag: "hi1",
                          onPressed: () {},
                          label: Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          elevation: 0.0,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 160,
                          ),
                          Icon(
                            Icons.menu,
                            size: 25,
                            color: Colors.grey.shade800,
                          ),
                        ],
                      ),
                      Text(
                        "Mohammed Daggas",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff4e4e4e),
                        ),
                      ),
                      Text(
                        "Makkah UQU CS",
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color(0xff4e4e4e),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "UI/UX Lovev Programming and ",
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff7b7b7b),
                          height: 1.1,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "WINNING hackathons!",
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff7b7b7b),
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0,left: 40,right: 40,bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '109',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '1.5 M',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Points',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '71',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Replays',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, position) {
                   if(position %2 ==0){
                     return cardDrawInner();
                   }else {
                     return cardDrawOuter();
                   }
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardDrawInner() {
    return Padding(
      padding: const EdgeInsets.only( bottom: 16),
      child: Card(
        elevation: 10,
        color: const Color(0xffffffff),
        child: Container(
          height: 145,
          width: 304,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          ExactAssetImage("assets/images/user.png"),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Mohammed Daggas",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff4e4e4e),
                          ),
                        ),
                        Text(
                          "UQU - CS".toUpperCase(),
                          style: TextStyle(
                            fontSize: 10,
                            color: const Color(0xff4e4e4e),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Guys i have a problem with installing pythonn on my MacBook pro 2015, can any one help me?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff7b7b7b),
                        height: 1.1,
                      ),
                      maxLines: 4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.chat_bubble,
                            size: 12,
                            color: const Color(0xff1877cf),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "57",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              color: const Color(0xff1877cf),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.reply,
                            size: 12,
                            color: const Color(0xff1877cf),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "33",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              color: const Color(0xff1877cf),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardDrawOuter() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 10,
        color: const Color(0xffffffff),
        child: Container(
          height: 145,
          width: 304,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                      ExactAssetImage("assets/images/user.png"),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Mohammed Daggas",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff4e4e4e),
                          ),
                        ),
                        Text(
                          "UQU - CS".toUpperCase(),
                          style: TextStyle(
                            fontSize: 10,
                            color: const Color(0xff4e4e4e),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Guys i have a problem with installing pythonn on my MacBook pro 2015, can any one help me?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff7b7b7b),
                        height: 1.1,
                      ),
                      maxLines: 4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.chat_bubble,
                            size: 12,
                            color: const Color(0xffF6BA00),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "57",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              color: const Color(0xffF6BA00),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.reply,
                            size: 12,
                            color: const Color(0xffF6BA00),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "33",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              color: const Color(0xffF6BA00),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

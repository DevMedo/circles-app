import 'package:flutter/material.dart';

class replays extends StatefulWidget {
  @override
  _replaysState createState() => _replaysState();
}

class _replaysState extends State<replays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xff1178C9),
            width: MediaQuery.of(context).size.width,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 68),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/user.png'),
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Mohammed Shalabi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 1.3,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "KAU - CS",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 38.0, top: 10, right: 42, bottom: 10),
                child: Container(
                  child: Text(
                      "Guys i have a problem with installing pythonn on my MacBook pro 2015, can any one help me?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: const Color(0xff7b7b7b),
                        height: 1,
                      ),
                      maxLines: 4),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, position) {
                    return cardDrawReplays(position);
                  },
                  itemCount: 4,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget cardDrawReplays(int position) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(8.0),
                topRight: const Radius.circular(8.0),
                bottomRight: const Radius.circular(8.0),
                bottomLeft: const Radius.circular(8.0),
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                ),
              ],
              image: DecorationImage(
                image: ExactAssetImage('assets/images/Reply-card.png'),
                fit: BoxFit.cover,
              ),
            ),
            height: 110,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60, left: 10),
              child: Image(
                image: AssetImage('assets/images/user.png'),
                width: 45,
                height: 45,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Have you tried restarting?",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    letterSpacing: 0.6),
              ),
            ),
            Container(
              width: 45,
              height: 45,
              margin: EdgeInsets.only(top: 60, right: 5),
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: new Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 25,
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ],
    );
  }
}

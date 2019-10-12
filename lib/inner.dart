import 'package:flutter/material.dart';

class InnerPage extends StatefulWidget {
  @override
  _InnerPageState createState() => _InnerPageState();
}

class _InnerPageState extends State<InnerPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, position) {

          return cardDrawInner();
        },
        itemCount: 10,
      ),
    );
  }

  Widget cardDrawInner() {
    return Padding(
      padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 16),
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
                          "Mohammed Shalabi",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff4e4e4e),
                          ),
                        ),
                        Text(
                          "KAU - CS".toUpperCase(),
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
}

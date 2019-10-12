import 'package:flutter/material.dart';
import 'profile.dart';
import 'homeScreen.dart';

class addPost extends StatefulWidget {
  @override
  _addPostState createState() => _addPostState();
}

class _addPostState extends State<addPost> {
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
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }),
            new IconButton(icon: new Icon(Icons.message), onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.notifications), onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.account_circle),
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
        child: new Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      ),
      body: Container(

        decoration: new BoxDecoration(


            image: DecorationImage(
              image: ExactAssetImage('assets/images/PostpageBG.png'),
              fit: BoxFit.cover,
            ),

            ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 48),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "New Post",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  Image(
                    image: AssetImage('assets/images/user.png'),
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(16.0),
                      topRight: const Radius.circular(16.0),
                      bottomRight: const Radius.circular(16.0),
                      bottomLeft: const Radius.circular(16.0),
                    ),

                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                      ),
                    ]),
                height: 400,
                width: 350,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(16.0),
                          topRight: const Radius.circular(16.0),
                          bottomRight: const Radius.circular(16.0),
                          bottomLeft: const Radius.circular(16.0),
                        ),
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/books.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 450,
                      width: 330,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "What,s On Your Mind?",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.5),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                child: FloatingActionButton.extended(
                                  heroTag: "Q",
                                  onPressed: () {},
                                  label: Text(
                                    "Question",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  elevation: 0.0,
                                  backgroundColor: Colors.grey.shade400,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                child: FloatingActionButton.extended(
                                  heroTag: "Post",
                                  onPressed: () {},
                                  label: Text(
                                    "Post",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  elevation: 0.0,
                                  backgroundColor: Colors.teal.shade400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(16.0),
                                  topRight: const Radius.circular(16.0),
                                  bottomRight: const Radius.circular(16.0),
                                  bottomLeft: const Radius.circular(16.0),
                                ),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10.0,
                                  ),
                                ]),
                            margin: EdgeInsets.only(left: 100),
                            height: 150,
                            child: SizedBox.expand(
                              child: TextFormField(
                                minLines: 20,
                                maxLines: 30,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),

                                  fillColor: Colors.white,
                                    hintText: 'Write The Best Of What You Leard!',

                                  //fillColor: Colors.green
                                ),
                                keyboardType: TextInputType.multiline,
                                style: new TextStyle(
                                    fontFamily: "Gotham", fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 100,),
                              Container(
                                width: 180,
                                height: 30,
                                child: FloatingActionButton.extended(
                                  heroTag: "sendPost",
                                  onPressed: () {},
                                  icon: new Icon(Icons.send),
                                  label: Text(
                                    "Post",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),

                                  elevation: 0.0,
                                  backgroundColor: Colors.teal.shade400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

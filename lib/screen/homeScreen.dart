import 'package:flutter/material.dart';
import 'package:circle/screen/profile.dart';
import 'addPost.dart';
import 'package:circle/posts_api.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    PostsAPI postsAPI = PostsAPI();
    postsAPI.fetChPostsByCategoryId('10');

    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromRGBO(255, 255, 255, 0.94),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new IconButton(
                icon: new Icon(Icons.home),
                color: const Color(0xffF6BA00),
                onPressed: () {}),
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => addPost(),
            ),
          );
        },
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          title: Builder(
            builder: (BuildContext context) {
              return Text(
                "Discover",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.w600),
              );
            },
          ),
          actions: <Widget>[
            FlatButton(
              child: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/images/user.png"),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(),
                  ),
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                text: "Inner",
              ),
              Tab(
                text: "Outter",
              ),
            ],
            controller: _tabController,
          ),
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [
            Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, position) {
                      return cardDrawInner();
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(22.0),
                          topRight: const Radius.circular(22.0),
                          bottomRight: const Radius.circular(22.0),
                          bottomLeft: const Radius.circular(22.0),
                        ),
                      ),
                      height: 40,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox.expand(
                          child: TextFormField(
                            minLines: 1,
                            maxLines: 1,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 3,
                              ),

                              fillColor: Colors.white,
                              icon: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black,
                              ),
                              hintText: 'Computer UQU',

                              //fillColor: Colors.green
                            ),
                            keyboardType: TextInputType.multiline,
                            style: new TextStyle(
                                fontFamily: "Gotham",
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: new BoxDecoration(

                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/PostpageBG.png'),
                          fit: BoxFit.cover,
                        ),
                       ),
                    child: ListView.builder(
                      itemBuilder: (context, position) {
                        return cardDrawOuter(position);
                      },
                      itemCount: 4,
                    ),
                  ),
                ),
              ],
            )
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget cardDrawInner() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
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

  Widget cardDrawOuter(int index) {
    List<String> color = ['assets/images/Follow-blue.png','assets/images/Follow-yellow.png','assets/images/Follow-purple.png','assets/images/Follow-green.png'];
    List<String> title = ['Information Technology','Computer Scince','Information System','Computer Engineering'];
    List<Color> colors = [const Color(0xff1178C9),const Color(0xffF6BA00),const Color(0xffAE1881),const Color(0xff2AAFB0)];
    List<Container> cards = [ Container(
      width: 80,
      height: 15,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(
            Radius.circular(8.0) //                 <--- border radius here
        ),
      ),
      child: FloatingActionButton.extended(
        heroTag: "isf",
        onPressed: () {},

        label: Text(
          "FOLLOWING",
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white),

        ),
        elevation: 0.0,
        backgroundColor: colors[index],
      ),
    ), Container(
      width: 68,
      height: 15,
      decoration: BoxDecoration(
        border: Border.all(color: colors[index]),
        borderRadius: BorderRadius.all(
            Radius.circular(8.0) //                 <--- border radius here
        ),
      ),
      child: FloatingActionButton.extended(
        heroTag: "cef",
        onPressed: () {},

        label: Text(
          "FOLLOW",
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: colors[index]),

        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
    ), Container(
      width: 68,
      height: 15,
      decoration: BoxDecoration(
        border: Border.all(color: colors[index]),
        borderRadius: BorderRadius.all(
            Radius.circular(8.0) //                 <--- border radius here
        ),
      ),
      child: FloatingActionButton.extended(
        heroTag: "csf",
        onPressed: () {},

        label: Text(
          "FOLLOW",
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: colors[index]),

        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
    ), Container(
      width: 68,
      height: 15,
      decoration: BoxDecoration(
        border: Border.all(color: colors[index]),
        borderRadius: BorderRadius.all(
            Radius.circular(8.0) //                 <--- border radius here
        ),
      ),
      child: FloatingActionButton.extended(
        heroTag: "itf",
        onPressed: () {},

        label: Text(
          "FOLLOW",
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: colors[index]),

        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
    ),];
    return Padding(
      padding: const EdgeInsets.only(left:32.0,right: 32,bottom: 16,top: 24),
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
            ),
            image: DecorationImage(
              image: ExactAssetImage(color[index]),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 7.0,
              ),
            ]),
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 8,bottom: 16),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title[index],style: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 1,fontSize: 15),),
             cards[index],
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Color.fromRGBO(0, 0, 0, 0.08),
//      borderRadius: BorderRadius.only(
//        topLeft: Radius.circular(10),
//        topRight: Radius.circular(10),
//      ),
      border: Border(
        top: BorderSide(
          width: 3.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);

    // draw the circle on centre of canvas having radius 75.0
    canvas.drawCircle(center, 75.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}



import 'package:circle/replay.dart';

class Post {
    int author;
    String content;
    int circleId;
    String date;
    List<String> replays;

    Post({this.author, this.content, this.circleId, this.date,
        this.replays});
}
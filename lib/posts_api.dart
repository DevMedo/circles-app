import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post.dart';



class PostsAPI {

  Future<List<Post>> fetChPostsByCategoryId( String id ) async {
    String whatsNewApi = "http://192.168.8.162:8000/posts";
    var response = await http.get( whatsNewApi );
    List<Post> posts = List<Post>();

    if( response.statusCode == 200 ){
      var jsonData = jsonDecode(response.body);
      List<String> replays = jsonData["replays"];

      for( var item in jsonData ){
        print(item['replays']);
        Post post = Post(
            author: item['author'],
            content: item['content'].toString(),
            circleId: item['circle_entity'],
            date: item['date'].toString(),
            replays: replays
        );

        posts.add(post);
        print(posts[0]);
      }
      print(posts[0]);

    }

    return posts;

  }

}
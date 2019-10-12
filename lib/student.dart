import 'Circle.dart';
import 'post.dart';
class Student {
  int _id;
  String _name;
  String _email;
  List<Circle> _circles;
  List<Post> _posts;
  int points;

  Student(this._id, this._name, this._email, this._circles, this._posts, this.points);

  List<Post> get posts => _posts;

  set posts(List<Post> value) {
    _posts = value;
  }

  List<Circle> get circles => _circles;

  set circles(List<Circle> value) {
    _circles = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}
import 'package:circle/student.dart';
import 'post.dart';

class Circle {
  List<Post> _post;
  List<Student> _students;
  String _name;

  Circle(this._post, this._students, this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  List<Student> get students => _students;

  set students(List<Student> value) {
    _students = value;
  }

  List<Post> get post => _post;

  set post(List<Post> value) {
    _post = value;
  }


}
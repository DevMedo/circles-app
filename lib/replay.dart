import 'student.dart';

class replay{

  int _postId;
  Student _author;
  String _content;
  String _date;

  replay(this._postId, this._author, this._content, this._date);

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  Student get author => _author;

  set author(Student value) {
    _author = value;
  }

  int get postId => _postId;

  set postId(int value) {
    _postId = value;
  }


}
class Day {
  int _id;
  DateTime _date;
  String _sentence;
  String _sentenceAuthor;
  String _pray;
  String _photoName;
  int _occasionID;
  DateTime _createdAt;
  DateTime _updatedAt;
  String _url;

  Day.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        _date = DateTime.parse(json['date']),
        _sentence = json['sentence'],
        _sentenceAuthor = json['sentence_author'],
        _pray = json['pray'],
        _photoName = json['phoeto_name'],
        _occasionID = json['occasion_id'],
        _createdAt = DateTime.parse(json['created_at']),
        _updatedAt = DateTime.parse(json['updated_at']),
        _url = json['url'];

  Map<String, dynamic> toJson() => {
        'id': _id,
        'date': _date,
        'sentence': _sentence,
        'sentence_author': _sentenceAuthor,
        'pray': _pray,
        'photo_name': _photoName,
        'occasion_id': _occasionID,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'url': _url
      };

  // * Getters
  int get id => _id;
  DateTime get date => _date;
  String get sentence => _sentence;
  String get sentenceAuthor => _sentenceAuthor;
  String get pray => _pray;
  String get photoName => _photoName;
  int get occasionID => _occasionID;
  DateTime get createdAT => _createdAt;
  DateTime get updatedAt => _updatedAt;

  String get url => _url;

  // * Setters
  set id(int id) => _id = id;
  set date(DateTime date) => _date = date;
  set sentence(String sentence) => _sentence = sentence;
  set sentenceAuthor(String setenceAuthor) => _sentenceAuthor = setenceAuthor;
  set pray(String pray) => _pray = pray;
  set photoName(String photoName) => _photoName = photoName;
  set occasionID(int occasionID) => _occasionID = occasionID;
  set createdAt(DateTime createdAt) => _createdAt = createdAt;
  set updatedAt(DateTime updatedAt) => _updatedAt = updatedAt;
  set url(String url) => _url = url;

  Day(
    this._id,
    this._date,
    this._sentence,
    this._sentenceAuthor,
    this._pray,
    this._photoName,
    this._occasionID,
    this._createdAt,
    this._updatedAt,
    this._url,
  );
}

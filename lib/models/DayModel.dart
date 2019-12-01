class Day {
  int _id;
  DateTime _date;
  String _sentence;
  String _sentenceAuthor;
  String _pray;
  String _photoPath;
  String _photoName;
  int _occasionID;
  DateTime _createdAt;
  DateTime _updatedAt;

  Day(
      this._id,
      this._date,
      this._sentence,
      this._sentenceAuthor,
      this._pray,
      this._photoPath,
      this._photoName,
      this._occasionID,
      this._createdAt,
      this._updatedAt);

  Day.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        _date = json['date'] as DateTime,
        _sentence = json['sentence'],
        _sentenceAuthor = json['sentence_author'],
        _pray = json['pray'],
        _photoPath = json['photo_path'],
        _photoName = json['phoeto_name'],
        _occasionID = json['occasion_id'],
        _createdAt = json['created_at'] as DateTime,
        _updatedAt = json['updated_at'] as DateTime;

  Map<String, dynamic> toJson() => {
        'id': _id,
        'date': _date,
        'sentence': _sentence,
        'sentence_author': _sentenceAuthor,
        'pray': _pray,
        'photo_path': _photoPath,
        'photo_name': _photoName,
        'occasion_id': _occasionID,
        'created_at': _createdAt,
        'updated_at': _updatedAt
      };

  int get id => _id;
  DateTime get date => _date;
  String get sentence => _sentence;
  String get sentenceAuthor => _sentenceAuthor;
  String get pray => _pray;
  String get photoPath => _photoPath;
  String get photoName => _photoPath;
  int get occasionID => _occasionID;
  DateTime get createdAT => _createdAt;
  DateTime get updatedAt => _updatedAt;
}

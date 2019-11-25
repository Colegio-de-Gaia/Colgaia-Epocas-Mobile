class Occasion {
  String _occasionName;
  DateTime _startAt;
  DateTime _endAt;
  DateTime _createdAt;
  DateTime _updatedAt;

  Occasion(this._occasionName, this._startAt, this._endAt, this._updatedAt,
      this._createdAt);

  Occasion.fromJson(Map<String, dynamic> json)
      : _occasionName = json['occasioName'],
        _startAt = json['startAt'],
        _endAt = json['endAt'],
        _createdAt = json['createdAt'],
        _updatedAt = json['updatedAt'];

  String get occasionName => _occasionName;
  DateTime get startAt => _startAt;
  DateTime get endAt => _endAt;
  DateTime get createdAT => _createdAt;
  DateTime get updatedAt => _updatedAt;
}

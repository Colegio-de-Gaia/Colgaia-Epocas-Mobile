class Occasion {
  String _name;
  DateTime _startAt;
  DateTime _endAt;
  DateTime _createdAt;
  DateTime _updatedAt;

  Occasion(
      this._name, this._startAt, this._endAt, this._updatedAt, this._createdAt);

  Occasion.fromJson(Map<String, dynamic> json)
      : _name = json['name'],
        _startAt = json['start_at'] as DateTime,
        _endAt = json['end_at'] as DateTime,
        _createdAt = json['created_at'] as DateTime,
        _updatedAt = json['updated_at'] as DateTime;

  Map<String, dynamic> toJson() => {
        'name': _name,
        'start_at': _startAt,
        'end_at': _endAt,
        'created_at': _createdAt,
        'updated_at': _updatedAt
      };

  String get occasionName => _name;
  DateTime get startAt => _startAt;
  DateTime get endAt => _endAt;
  DateTime get createdAT => _createdAt;
  DateTime get updatedAt => _updatedAt;
}

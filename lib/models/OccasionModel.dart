class Occasion {
  int _id;
  String _name;
  DateTime _startAt;
  DateTime _endAt;
  DateTime _createdAt;
  DateTime _updatedAt;

  Occasion(this._id, this._name, this._startAt, this._endAt, this._updatedAt,
      this._createdAt);

  Occasion.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        _name = json['name'],
        _startAt = DateTime.parse(json['start_at']),
        _endAt = DateTime.parse(json['end_at']),
        _createdAt = DateTime.parse(json['created_at']),
        _updatedAt = DateTime.parse(json['updated_at']);

  Map<String, dynamic> toJson() => {
        'id': _id,
        'name': _name,
        'start_at': _startAt,
        'end_at': _endAt,
        'created_at': _createdAt,
        'updated_at': _updatedAt
      };

  int get id => _id;
  String get name => _name;
  DateTime get startAt => _startAt;
  DateTime get endAt => _endAt;
  DateTime get createdAT => _createdAt;
  DateTime get updatedAt => _updatedAt;
}

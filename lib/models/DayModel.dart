class Day {
  int id;
  DateTime date;
  String sentence;
  String sentenceAuthor;
  String pray;
  String photoName;
  int occasionID;
  DateTime createdAt;
  DateTime updatedAt;
  String url;
  String reflection;

  Day.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date = DateTime.parse(json['date']),
        sentence = json['sentence'],
        sentenceAuthor = json['sentence_author'],
        pray = json['pray'],
        photoName = json['photo_name'],
        reflection = json['reflection'],
        occasionID = json['occasion_id'],
        createdAt = DateTime.parse(json['created_at']),
        updatedAt = DateTime.parse(json['updated_at']),
        url = json['url'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'sentence': sentence,
        'sentence_author': sentenceAuthor,
        'pray': pray,
        'reflection': reflection,
        'photo_name': photoName,
        'occasion_id': occasionID,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'url': url
      };

  Day(
    this.id,
    this.date,
    this.sentence,
    this.sentenceAuthor,
    this.pray,
    this.photoName,
    this.occasionID,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.reflection,
  );
}

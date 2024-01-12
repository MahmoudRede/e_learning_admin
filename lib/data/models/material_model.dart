class MaterialModel {

  MaterialModel({
    required this.title,
    required this.url,

  });

  final String title;
  final String url;


  factory MaterialModel.fromMap(Map<String, dynamic> json) => MaterialModel(
    title: json["title"],
    url: json["url"],

  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "url": url,

  };
}

// To parse this JSON data, do
//
//     final articlesModels = articlesModelsFromJson(jsonString);


//ArticlesModels articlesModelsFromJson(String str) => ArticlesModels.fromJson(json.decode(str));

//String articlesModelsToJson(ArticlesModels data) => json.encode(data.toJson());

class ArticlesModel {
  String status;
  int totalResults;
  List<Article> articles;

  ArticlesModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory ArticlesModel.fromJson(Map<dynamic, dynamic> json) => ArticlesModel(
    status: json['status'],
    totalResults: json['totalResults'],
    articles: List<Article>.from(json['articles'].map((x) => Article.fromJson(x))),
  );


}

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<dynamic, dynamic> json) => Article(
    source: Source.fromJson(json['source']),
    author:  json['author'],
    title: json['title'],
    description: json['description'],
    url: json['url'],
    urlToImage: json['urlToImage'],
    publishedAt: json['publishedAt'],
    content: json['content'],
  );


}

class Source {
  String? id;
  String? name;

  Source({
    required this.id,
    required this.name,
  });

  factory Source.fromJson(Map<dynamic, dynamic> json) => Source(
    id : json['id'],
    name: json['name'],
  );

  Map<dynamic, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}

class NewsModel {
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? sourceName;

  NewsModel({
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.sourceName,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      sourceName: json['source']?['name'],
    );
  }
}

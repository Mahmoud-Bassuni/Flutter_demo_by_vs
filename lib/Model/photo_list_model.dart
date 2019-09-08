
import 'dart:convert';
List<PhotoListModel> photoListModelFromJson(String str) => new List<PhotoListModel>.from(json.decode(str).map((x) => PhotoListModel.fromJson(x)));
String photoListModelToJson(List<PhotoListModel> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class PhotoListModel {
    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    PhotoListModel({
        this.albumId,
        this.id,
        this.title,
        this.url,
        this.thumbnailUrl,
    });

    factory PhotoListModel.fromJson(Map<String, dynamic> json) => new PhotoListModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}

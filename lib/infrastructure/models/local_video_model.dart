//toVideoPostEntity
//Aqui creamos el modelo de video local, que es el que se va a usar para almacenar los videos en la base de datos local, y luego convertirlo a la entidad de video post para usarlo en la aplicación.
import 'package:toktik/domain/entities/videos_post.dart';

class LocalVideoModel {
  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

//Este método es el que se va a usar para convertir el modelo de video local a la entidad de video post, que es la que se va a usar en la aplicación.
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'],
          videoUrl: json['videoUrl'],
          likes: json['likes'],
          views: json['views']);

//Aqui usamos VideosPost por el entity, ya que es la que se va a usar en la aplicación, y no el modelo de video local, que es el que se va a usar para almacenar los videos en la base de datos local.
  VideosPost toVideoPostEntity() => VideosPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}

import 'package:flutter_ui_photography/models/user.dart';

class Post {
  final User? user;
  late final String id;
  late final String location;
  late final List<String> photos;
  late final List<String> relatedPhotos;

  Post({
    required this.id,
    this.user,
    required this.location,
    required this.photos,
    required this.relatedPhotos,
  });
}

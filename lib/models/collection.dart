import 'package:flutter_ui_photography/models/post.dart';

class Collection {
  late final String id;
  late final String name;
  late final String thumbnail;
  late final List<String> tags;
  late final List<Post> posts;
  
  Collection({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.tags,
    required this.posts,
  });
}
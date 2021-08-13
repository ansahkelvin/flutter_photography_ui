import 'package:flutter_ui_photography/models/collection.dart';

class User {
  late final String id;
  late final String name;
  late final String profilePicture;
  late final String userName;
  late final int followers;
  late final int following;
  late final List<Collection> collection;
  User({
    required this.id,
    required this.name,
    required this.profilePicture,
    required this.userName,
    required this.followers,
    required this.following,
    required this.collection,
  });
}

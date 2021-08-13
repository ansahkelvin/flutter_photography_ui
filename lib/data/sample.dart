import 'package:flutter_ui_photography/models/collection.dart';
import 'package:flutter_ui_photography/models/post.dart';
import 'package:flutter_ui_photography/models/user.dart';

class Sample {
  static User newUser = new User(
    id: "01",
    name: "Kelvin Nana Osei Ansah",
    profilePicture:
        "https://images.unsplash.com/photo-1628191138144-a51eeee8e2c3?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    userName: "@kelvind",
    followers: 1800,
    following: 400,
    collection: [
      Collection(
        id: "01",
        name: "Night Falls",
        thumbnail:
            "https://images.unsplash.com/photo-1542902093-d55926049754?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
        tags: ["#nightfall", "#night", "#pic"],
        posts: [
          Post(
            id: "04",
            location: "New york",
            photos: [
              "https://images.unsplash.com/photo-1542902093-d55926049754?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "https://images.unsplash.com/photo-1605002633049-3d164fc50933?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
              "https://images.unsplash.com/photo-1599939571322-792a326991f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80",
            ],
            relatedPhotos: [
              "https://images.unsplash.com/photo-1586165877141-3dbcfc059283?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"
                  "https://images.unsplash.com/photo-1599939571322-792a326991f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80",
              "https://images.unsplash.com/photo-1548850174-70a1cf2c5f09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
            ],
          ),
        ],
      )
    ],
  );

  static User secondUser = new User(
    id: "01",
    name: "Drakes Draco",
    profilePicture:
        "https://images.unsplash.com/photo-1542709111240-e9df0dd813b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
    userName: "@kelvind",
    followers: 1800,
    following: 400,
    collection: [
      Collection(
        id: "01",
        name: "Photography Life",
        thumbnail:
            "https://images.unsplash.com/photo-1607666340313-493c5017a3a0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
        tags: ["#nightfall", "#night", "#pic"],
        posts: [
          Post(
            id: "04",
            location: "Michigan",
            photos: [
              "https://images.unsplash.com/photo-1539920951450-2b2d59cff66d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "https://images.unsplash.com/photo-1588746853740-bd35aad10bfd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "https://images.unsplash.com/photo-1558556563-7315877d09f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"
            ],
            relatedPhotos: [
              "https://images.unsplash.com/photo-1586165877141-3dbcfc059283?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"
                  "https://images.unsplash.com/photo-1599939571322-792a326991f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80",
              "https://images.unsplash.com/photo-1548850174-70a1cf2c5f09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
            ],
          ),
        ],
      )
    ],
  );

  static final Post post = new Post(
    id: "04",
    location: "Michigan",
    user: newUser,
    photos: [
      "https://images.unsplash.com/photo-1606152537426-33511d5b079d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
      "https://images.unsplash.com/photo-1605002633049-3d164fc50933?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1542718786-2e81a9d3dfac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    ],
    relatedPhotos: [
      "https://images.unsplash.com/photo-1586165877141-3dbcfc059283?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"
          "https://images.unsplash.com/photo-1599939571322-792a326991f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80",
      "https://images.unsplash.com/photo-1548850174-70a1cf2c5f09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    ],
  );
  static final Post postTwo = new Post(
    id: "04",
    location: "Lakeside Estate",
    user: secondUser,
    photos: [
        "https://images.unsplash.com/photo-1539920951450-2b2d59cff66d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "https://images.unsplash.com/photo-1588746853740-bd35aad10bfd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
              "https://images.unsplash.com/photo-1558556563-7315877d09f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"
    ],
    relatedPhotos: [
      "https://images.unsplash.com/photo-1586165877141-3dbcfc059283?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80"
          "https://images.unsplash.com/photo-1599939571322-792a326991f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80",
      "https://images.unsplash.com/photo-1548850174-70a1cf2c5f09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    ],
  );
}

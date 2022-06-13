import 'package:cloud_firestore/cloud_firestore.dart';


class User {
  final String id;
  final String source;
  final String content;
  final String poster;
  User(
      {required this.id,
      required this.source,
      required this.content,
      required this.poster,
      });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'source': source,
      'content': content,
      'poster': poster   
    };
  }
User.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
       source = doc.data()!["source"],
      content = doc.data()!["content"],
        poster = doc.data()!["poster"];
}
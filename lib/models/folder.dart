import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quotaline_application/models/quote.dart';

class Folder {
  final String id;
  final String folderName;
  final List<Quote> quotes;
  final List<Folder> folders;
  Folder({
    required this.id,
    required this.folderName,
    required this.quotes,
    required this.folders
  });

  List<String> getFolderNames() {
    List<String> folderNames = [];
    for (var folder in folders) {
      folderNames.add(folder.folderName);
    }
    return folderNames;
  }

Folder.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
       folderName = doc.data()!["folderName"],
        quotes = doc.data()!["quotes"].cast<Quote>(),
        folders = doc.data()!["folders"].cast<Folder>();
}
Folder rootFolder = new Folder(id: 'root',folderName: 'root',quotes: [],folders: []);

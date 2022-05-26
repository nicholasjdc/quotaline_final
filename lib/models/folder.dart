class Folder {
  String folderName = '';
  List<String> quotes = [];
  List<Folder> folders = [];

  List<String> getFolderNames() {
    List<String> folderNames = [];
    for (var folder in folders) {
      folderNames.add(folder.folderName);
    }
    return folderNames;
  }
}

Folder rootFolder = new Folder();

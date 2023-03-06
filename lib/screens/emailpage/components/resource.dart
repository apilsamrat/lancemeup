enum FileType {
  image,
  file;
}

class Attachment {
  final String name;
  final FileType fileType;
  Attachment({required this.fileType, required this.name});
}

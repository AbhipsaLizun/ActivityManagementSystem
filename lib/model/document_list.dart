import 'dart:io';

class DocumentList {
  String docName;
  String uploadDocName;
  File? filePath;

DocumentList({   
  required this.docName,
    required this.uploadDocName,
     this.filePath,
   });

}
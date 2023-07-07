import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class PDFFiles {
  const PDFFiles({
    required this.fileName,
    required this.pdfAssetsString,
    required this.pdfImage,
  });
  final String fileName;
  final String pdfAssetsString;
  final String pdfImage;

  static Future<File> getFiles(String assetfiles) async {
    final data = await rootBundle.load(assetfiles);
    final bytes = data.buffer.asUint8List();
    return _storeFile(assetfiles, bytes);
  }

  static Future<File> _storeFile(String assetfiles, List<int> bytes) async {
    var fileName = path.basename(assetfiles);
    var dir = await getApplicationDocumentsDirectory();
    File file = File('${dir.path}/$fileName');
    await file.writeAsBytes(bytes);
    return file;
  }
}

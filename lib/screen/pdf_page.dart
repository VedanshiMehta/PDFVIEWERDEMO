import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({super.key, required this.file});
  final File file;
  @override
  State<PDFPage> createState() {
    return _PDFState();
  }
}

class _PDFState extends State<PDFPage> {
  @override
  Widget build(BuildContext context) {
    var fileDetails = widget.file.path;
    var fileName = basename(fileDetails);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          fileName,
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: PDFView(filePath: fileDetails),
    );
  }
}

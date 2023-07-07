import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pdf_demo/contansts/app_constants.dart';
import 'package:pdf_demo/models/pdf_files.dart';

class PDFItems extends StatelessWidget {
  const PDFItems({super.key, required this.pdfFiles});
  final PDFFiles pdfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 44),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(children: [
        SvgPicture.asset(AppConstants.pdfUrl),
        const SizedBox(
          height: 12,
        ),
        Text(pdfFiles.fileName),
      ]),
    );
  }
}

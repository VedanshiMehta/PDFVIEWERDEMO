import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pdf_demo/contansts/app_constants.dart';
import 'package:pdf_demo/models/pdf_files.dart';

class PDFItems extends StatelessWidget {
  const PDFItems({super.key, required this.pdfFiles, required this.onTap});
  final PDFFiles pdfFiles;
  final void Function(PDFFiles pdfFiles) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(pdfFiles),
      child: Container(
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
      ),
    );
  }
}

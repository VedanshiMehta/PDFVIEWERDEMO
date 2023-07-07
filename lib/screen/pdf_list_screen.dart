import 'package:flutter/material.dart';
import 'package:pdf_demo/app_theme/color_constants.dart';
import 'package:pdf_demo/data/pdf_dummy_data.dart';
import 'package:pdf_demo/screen/pdf_items.dart';

class PDFListScreen extends StatelessWidget {
  const PDFListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF List'),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: ColorConstants.backGroundColor),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            ...pdfFileData.map(
              (files) => PDFItems(pdfFiles: files),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/components/common_dialog.dart';

class HomeController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController linkedInController = TextEditingController();
  TextEditingController githubController = TextEditingController();
  TextEditingController profileController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController languageController = TextEditingController();
  TextEditingController comapnyNameController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void createPDF() async {
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Text(
                  nameController.text.trim(),
                  style: const pw.TextStyle(
                    letterSpacing: 10,
                    fontSize: 30,
                  ),
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Center(
                child: pw.Text(
                  designationController.text.trim(),
                  style: const pw.TextStyle(
                    letterSpacing: 5,
                    fontSize: 17,
                  ),
                ),
              ),
              pw.Container(
                margin: const pw.EdgeInsets.symmetric(vertical: 10),
                height: 1,
                width: double.infinity,
                color: const PdfColor(0, 0, 0),
              ),
              pw.Table(
                tableWidth: pw.TableWidth.max,
                children: [
                  pw.TableRow(
                    children: [
                      pw.SizedBox(
                        width: 300,
                        child: pw.Text("Contact no:"),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(phoneNoController.text.trim()),
                      ),
                    ],
                  ),
                  pw.TableRow(
                    children: [
                      pw.SizedBox(
                        width: 300,
                        child: pw.Text("LinkedIn:"),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(linkedInController.text.trim()),
                      ),
                    ],
                  ),
                  pw.TableRow(
                    children: [
                      pw.SizedBox(
                        width: 300,
                        child: pw.Text("Github:"),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(githubController.text.trim()),
                      ),
                    ],
                  ),
                  pw.TableRow(
                    children: [
                      pw.SizedBox(
                        width: 300,
                        child: pw.Text("Profile:"),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(profileController.text.trim()),
                      ),
                    ],
                  ),
                  pw.TableRow(
                    children: [
                      pw.SizedBox(
                        width: 300,
                        child: pw.Text("Skills:"),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(skillsController.text.trim()),
                      ),
                    ],
                  ),
                  pw.TableRow(
                    children: [
                      pw.SizedBox(
                        width: 300,
                        child: pw.Text("Languages:"),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(languageController.text.trim()),
                      ),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Text("Experience:"),
              pw.SizedBox(height: 20),
              pw.Text("${comapnyNameController.text.trim()}: ${durationController.text.trim()}"),
              pw.SizedBox(height: 10),
              pw.Text(descriptionController.text.trim()),
            ],
          );
        },
      ),
    );

    DateTime fileDate = DateTime.now();
    String day = "${fileDate.day}";
    String month = "${fileDate.month}";
    String year = "${fileDate.year}";
    String hour = "${fileDate.hour}";
    String minute = "${fileDate.minute}";
    String second = "${fileDate.second}";

    if (day.length == 1) {
      day = "0$day";
    }
    if (month.length == 1) {
      month = "0$month";
    }
    if (hour.length == 1) {
      hour = "0$hour";
    }
    if (minute.length == 1) {
      minute = "0$minute";
    }
    if (second.length == 1) {
      second = "0$second";
    }

    final Directory downloadsDir = await getApplicationDocumentsDirectory();

    String windowFileName = "window_${day}_${month}_${year}_${hour}_${minute}_$second";
    final file = File('${downloadsDir.path}/$windowFileName.pdf');
    await file.writeAsBytes(await pdf.save());

    String path = "${downloadsDir.path}/$windowFileName.pdf\n\n&\n\n${downloadsDir.path}/$windowFileName.pdf";
    CommonDialog.showSuccessDialog("PATH", path);
  }
}

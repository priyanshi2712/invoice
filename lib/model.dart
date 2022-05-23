import 'dart:io';

import 'package:invoice_generator/HomePage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class data {
  dynamic Company_Name;
  dynamic Company_Address;
  dynamic Email;
  dynamic Number;
  dynamic invoice;
  dynamic invoice_Date;
  dynamic Due_Date;
  dynamic Product_Name;
  dynamic Product_Price;
  dynamic i;
  dynamic dropdownValue;

  data(
    this.Company_Name,
    this.Company_Address,
    this.Email,
    this.Number,
    this.invoice,
    this.invoice_Date,
    this.Due_Date,
    this.Product_Name,
    this.Product_Price,
    this.i,
    this.dropdownValue,
  );
}

class pdfGon{
  void genrator(data pri)async{
    var pdf= pw.Document();


    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(10),
        build: (pw.Context context){
          return  pw.Container(
            margin: pw.EdgeInsets.all(20),
            height: double.infinity,
            width: double.infinity,
            decoration: pw.BoxDecoration(color: PdfColors.white, boxShadow: [
              pw.BoxShadow(
                color: PdfColors.grey,
                spreadRadius: 2,
                blurRadius: 5,
              )
            ]),
            child: pw.Column(
              children: [
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Company Name : ${pri.Company_Name}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Company Address : ${pri.Company_Address}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Email : ${pri.Email}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Number : ${pri.Number}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "invoice : ${pri.invoice}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.black,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "invoice Date : ${pri.invoice_Date}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Due Date : ${pri.Due_Date}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Product Name : ${pri.Product_Name}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Product Price : ${pri.Product_Price}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Products : ${pri.i}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Container(
                  margin: pw.EdgeInsets.only(left: 10),
                  height: 30,
                  width: double.infinity,
                  child: pw.Text(
                    "Gst : ${pri.dropdownValue}",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.Divider(
                  height: 1,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: PdfColors.grey,
                ),
              ],
            ),
          );
        }
      )
    );

    Directory? directory = await getExternalStorageDirectory();
    File file = File("${directory!.path}/f1.pdf");
    await file.writeAsBytes(await pdf.save());

    print("${directory}");

  }
}
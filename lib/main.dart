import 'package:flutter/material.dart';
import 'package:invoice_generator/HomePage.dart';
import 'package:invoice_generator/invoice%20generator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const InvoiceGenerator(),
      'HomePage': (context) => const HomePage(),
    },
  ));
}

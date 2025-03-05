import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        onDetect: (barcodes) {},
      ),
    );
  }
}

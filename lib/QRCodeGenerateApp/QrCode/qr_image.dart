import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrImage extends StatelessWidget {
  QrImage(this.mydata, {super.key});

  final mydata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImageView(
          data: mydata,
          size: 280,
          embeddedImageStyle: QrEmbeddedImageStyle(size: Size(300, 300)),
        ),
      ),
    );
  }
}

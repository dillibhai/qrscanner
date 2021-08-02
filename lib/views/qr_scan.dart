import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class QrScan extends StatefulWidget {
  const QrScan({ Key? key }) : super(key: key);

  @override
  _QrScanState createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  String qrCode ='Unknown result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 400,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: 'img',
                
                child: Image(
                  image: NetworkImage(
                      'https://blog-trycontechnologi.netdna-ssl.com/blog/wp-content/uploads/2019/03/ppt-1.png' ), height: 150,
                ),
              ),
              Text(
                '$qrCode', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    scanQRCode();
                  }, child: Text('Start QR Scan')),
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform.';
    }
  }
}

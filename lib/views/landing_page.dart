import 'package:flutter/material.dart';
import 'package:qrscanner/views/qr_create.dart';
import 'package:qrscanner/views/qr_scan.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Hero(
                tag: 'img',
                
                child: Image(
                  image: NetworkImage(
                      'https://blog-trycontechnologi.netdna-ssl.com/blog/wp-content/uploads/2019/03/ppt-1.png'),
                ),
              ),
              Container(
                  width: 300,
                  child:
                      ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QrScan()));
                      }, child: Text("QR Scan"))),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QrCreatePage()));
                      }, child: Text("QR Generate")))
            ],
          ),
        ),
      ),
    );
  }
}

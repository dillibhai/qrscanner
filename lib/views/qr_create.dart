import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
class QrCreatePage extends StatefulWidget {
  const QrCreatePage({ Key? key }) : super(key: key);

  @override
  _QrCreatePageState createState() => _QrCreatePageState();
}

class _QrCreatePageState extends State<QrCreatePage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber[900],
      appBar: AppBar(),
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'img',
              child: BarcodeWidget(
                barcode: Barcode.qrCode(),
                color: Colors.black,
                width: 200,
                height: 200,
                data: controller.text,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              // color: Colors.blue,
              child: Column(
                children: [
                  Container(child: buildTextField(context)),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        
                      });
                    }, child: Text('Submit')),
                  )
                 
                ],
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          hintText: 'Enter QR value',
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      );
}

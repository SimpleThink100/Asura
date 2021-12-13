import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'dart:ui' as ui;
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';

class coba2 extends StatefulWidget {
  @override
  _coba2State createState() => _coba2State();
}

class _coba2State extends State<coba2> {
  ByteData imgBytes;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:   Scaffold(
        appBar:  AppBar(
          title:  Text('Coba image to png'),
        ),
        body:  Column(
          children: [
            // Container(
            //   height: 200,
            //   color: Colors.amber,
            //   child: CustomPaint(
            //     size: Size(200, 200),
            //     painter: gambar1(),
            //   ),
            // ),
            imgBytes != null ?
            Container(
              height: 200,
              color: Colors.blue,
                child:Image.memory(
                  imgBytes.buffer.asUint8List(),
                  width: 200,
                  height: 300,
                )
            )
                : Container()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() async {
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class gambar1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Gambar12
    canvas.drawLine(Offset(0,0), Offset(100,100),
        Paint()..strokeWidth = 10..color = Colors.black);
  }
  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

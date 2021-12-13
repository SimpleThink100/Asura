import 'dart:ffi';
import 'dart:math';
import 'dart:ui' as ui;
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/ceking.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:path_provider/path_provider.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:path_provider/path_provider.dart';
import 'package:perancangan_tangga_app/coba.dart';
import 'dart:async';
import 'package:open_file/open_file.dart';
import 'package:flutter/material.dart';

class cobapage extends StatefulWidget {
  @override
  _cobapageState createState() => _cobapageState();
}

class _cobapageState extends State<cobapage> {
  final controllerPP = new TextEditingController();
  final controllerPU = new TextEditingController();
  void up(){setState(() {});}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coba"),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        color: Colors.green,
        child: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () async {
            //     final pdfFile = await PdfApi.generateTable();
            //     PdfApi.openFile(pdfFile);
            //     },
            //   child: Text("PDF"),
            //   style: ButtonStyle(
            //     backgroundColor:
            //         MaterialStateProperty.all<Color>(Colors.red[500]),
            //   ),
            // ),
            buildContainerTextFiel(controllerPP),
            Text(controllerPP.text),
            buildContainerTextFiel(controllerPU),
            Text(controllerPU.text),
          ],
        ),
      ),
    );
  }
  Container buildContainerTextFiel(TextEditingController controller){
    return Container(
      child: TextField(
        controller: controller,
      ),
    );
  }
}


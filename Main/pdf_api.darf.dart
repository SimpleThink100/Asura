//import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:perancangan_tangga_app/coba.dart';
import 'dart:typed_data';
import 'dart:async';
import 'package:open_file/open_file.dart';
import 'package:perancangan_tangga_app/Tangga_I/Gambar_Tangga_I.dart';

class buatMomen {
  final String C0;
  final String C1;
  final String C2;
  final String C3;
  final String C4;
  const buatMomen({ this.C0, this.C1, this.C2, this.C3, this.C4});
}

class buatPDF {
  final String BarisKe ='-';
  final String nama;
  final String rumus;
  final String tanda = "=";
  final double hasil;
  final String satuan;
  const buatPDF({ this.nama, this.rumus, this.hasil, this.satuan});
}

class buatPDFT {
  final String BarisKe ='-';
  final String nama;
  final String rumus;
  final String tanda = "=";
  final String hasil;
  final String satuan;
  const buatPDFT({ this.nama, this.rumus, this.hasil, this.satuan});
}

class PdfApi {
  static Future hcek()async{
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdf = Document();
    pdf.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            Text('Laporan',style: TextStyle(fontSize: 20)),
            Center(child: Text("Gambar Detail Jarak dan Tinggi Tangga")),
          ],
        ));
    return saveDocument(name: "hcek", pdf: pdf);
  }

  static Future HitunganI ({
    String Nama,String Projek,String Tanggal,String Jenis,
    List Hitungan1, List Hitungan2, List Hitungan3,
    ByteData Gambar1,
  })async{
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdftabel = Document();
    pdftabel.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            Text('Laporan',style: TextStyle(fontSize: 20)),
            Text('Project : '+ Projek),
            Text('Tangga : '+ Tanggal),
            Text('Jenis : '+ Jenis),
            Text('Nama : '+Nama),
            buildGambar(gambar_: Gambar1, height: 140, width: 170),
            Text('Desain'),
            buildTable(Hitungan1),
            Text('Analisis'),
            buildTable(Hitungan2),
            Text('Penulangan'),
            buildTable(Hitungan3),
          ],
        ));
    return saveDocument(name: Nama, pdf: pdftabel);
  }

  static Future HitunganII ({
    String Nama,String Projek,String Tanggal,String Jenis,
    List Hitungan1, List Hitungan2, List Hitungan3,List Hitungan4, List Hitungan5, List Hitungan6,
    ByteData Gambar1,
  })async{
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdftabel = Document();
    pdftabel.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            Text('Laporan',style: TextStyle(fontSize: 20)),
            Text('Project : '+ Projek),
            Text('Tangga : '+ Tanggal),
            Text('Jenis : '+ Jenis),
            Text('Nama : '+Nama),
            buildGambar(gambar_: Gambar1, height: 220, width: 170),
            Text('Desain'),
            SizedBox(height: 10),
            Text('Tangga Atas'),
            buildTable(Hitungan1),
            SizedBox(height: 10),
            Text('Tangga Bawah'),
            buildTable(Hitungan2),
            SizedBox(height: 20),
            Text('Analisis'),
            SizedBox(height: 10),
            Text('Tangga Atas'),
            buildTable(Hitungan3),
            SizedBox(height: 10),
            Text('Tangga Bawah'),
            buildTable(Hitungan4),
            SizedBox(height: 20),
            Text('Penulangan'),
            SizedBox(height: 10),
            Text('Tangga Atas'),
            buildTable(Hitungan5),
            SizedBox(height: 10),
            Text('Tangga Bawah'),
            buildTable(Hitungan6),
          ],
        ));
    return saveDocument(name: Nama, pdf: pdftabel);
  }

  static Future HitunganIII ({
    String Nama,String Projek,String Tanggal,String Jenis,
    List Hitungan1, List Hitungan2, List Hitungan3,List Hitungan4, List Hitungan5, List Hitungan6,
    List Hitungan7, List Hitungan8, List Hitungan9,
    ByteData Gambar1,
  })async{
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdftabel = Document();
    pdftabel.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            Text('Laporan',style: TextStyle(fontSize: 20)),
            Text('Project : '+ Projek),
            Text('Tangga : '+ Tanggal),
            Text('Jenis : '+ Jenis),
            Text('Nama : '+Nama),
            buildGambar(gambar_: Gambar1, height: 200, width: 170),
            //desain
            Text('Desain'),
            SizedBox(height: 10),
            Text('Tangga Atas'),
            buildTable(Hitungan1),
            SizedBox(height: 10),
            Text('Tangga Tengah'),
            buildTable(Hitungan2),
            SizedBox(height: 10),
            Text('Tangga Bawah'),
            buildTable(Hitungan3),
            //analisis
            SizedBox(height: 20),
            Text('Analisis'),
            SizedBox(height: 10),
            Text('Tangga Atas'),
            buildTable(Hitungan4),
            SizedBox(height: 10),
            Text('Tangga Tengah'),
            buildTable(Hitungan5),
            SizedBox(height: 10),
            Text('Tangga Bawah'),
            buildTable(Hitungan6),
            SizedBox(height: 20),
            //prnulangan
            Text('Penulangan'),
            SizedBox(height: 10),
            Text('Tangga Atas'),
            buildTable(Hitungan7),
            SizedBox(height: 10),
            Text('Tangga Tengah'),
            buildTable(Hitungan8),
            SizedBox(height: 10),
            Text('Tangga Bawah'),
            buildTable(Hitungan9),
          ],
        ));
    return saveDocument(name: Nama, pdf: pdftabel);
  }

  //widget gambar
  static Widget buildGambar({ByteData gambar_, int height, int width}){
    return Container(
        //color: PdfColors.grey,
        child: Center(
            child:Image(MemoryImage(gambar_.buffer.asUint8List()),
          height: height*PdfPageFormat.mm,
          width: width*PdfPageFormat.mm,
        ))
    );
  }
  // widget tabel
  static Table buildTable(List<List<Object>> Data,) {
    return Table.fromTextArray(
              headers: null,
              headerCount: 0,
              data: Data,
              border: null,
              cellHeight: 20,
              cellAlignments: {
                0: Alignment.centerLeft,
                1: Alignment.centerLeft,
                2: Alignment.centerLeft,
                3: Alignment.center,
                4: Alignment.centerRight,
                5: Alignment.centerLeft,
              },
              columnWidths: {
                0: FixedColumnWidth(10),
                1: FixedColumnWidth(85),
                2: FractionColumnWidth(.2),
                3: FixedColumnWidth(5),
                4: FixedColumnWidth(30),
                5: FixedColumnWidth(30),
              },
              );
  }
// widget tabel persebaran momen
  static Table buildMomenTabel(List<List<Object>> Data,) {
    return Table.fromTextArray(
      headers: null,
      headerCount: 0,
      data: Data,
      cellHeight: 20,
      cellAlignments: {
        0: Alignment.centerLeft,
        1: Alignment.center,
        2: Alignment.center,
        3: Alignment.center,
        4: Alignment.center,
      },
      columnWidths: {
        0: FractionColumnWidth(.2),
        1: FixedColumnWidth(70),
        2: FixedColumnWidth(70),
        3: FixedColumnWidth(70),
        4: FixedColumnWidth(70),
      },
    );
  }
  static Future<File> saveDocument({String name, Document pdf,}) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);
    return file;
  }
  static Future generateCenteredText(String text) async {
    final pd = Document();
    pd.addPage(Page(
        build: (context) => Center(
              child: Text(
                text, style: TextStyle(fontSize: 48),),
            )));
    return saveDocument(name: "my_example.pdf", pdf: pd);
  }
  static Future openFile(File file) async {
    final url = file.path;
    await OpenFile.open(url);
    print(url);
  }
}

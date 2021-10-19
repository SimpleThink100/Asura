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



class PdfApi {
  static Future HitunganI ({
    List Hitungan1,
    List Hitungan2,
    List Hitungan3,
    List Hitungan4,
    List Hitungan5,
    List Hitungan6,
    List Hitungan7,
    List Hitungan8,
    List Hitungann,
    ByteData Gambar1,
    ByteData Gambar2,
    ByteData Gambar3,
    ByteData Gambar4,
    ByteData Gambar5,
    ByteData Gambar6,
    ByteData Gambar7,
  }) async{
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdftabel = Document();
    pdftabel.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            Text('Peritungan Tangga I '),
            Text('Data Tangga'),
            buildGambar(gambar_: Gambar1, height: 140, width: 170),
            Center(child: Text("Gambar Detail Jarak dan Tinggi Tangga")),
            buildTable(Hitungan1),
            Text('Hitungan Pembebanan'),
            buildTable(Hitungan2),
            buildGambar(gambar_: Gambar2, height: 100, width: 170),
            Center(child: Text("Gambar Detail Anak Tangga dan Tebal Tangga")),
            buildTable(Hitungan3),
            Text('Analisa Struktur'),
            buildTable(Hitungan4),
            buildGambar(gambar_: Gambar3, height: 100, width: 170),
            Center(child: Text("Gambar Pembebanan dan Free Body tangga")),
            buildTable(Hitungan5),
            buildGambar(gambar_: Gambar4, height: 100, width: 170),
            Center(child: Text("Gambar Free Body tangga")),
            buildGambar(gambar_: Gambar5, height: 100, width: 170),
            Center(child: Text("Gambar NFD tangga")),
            buildGambar(gambar_: Gambar6, height: 100, width: 170),
            Center(child: Text("Gambar SFD tangga")),
            buildGambar(gambar_: Gambar7, height: 100, width: 170),
            Center(child: Text("Gambar BMD tangga")),
            Text('Penulangan Pelat Tangga'),
            Text('Tulangan AB'),
            buildTable(Hitungan6),
            Text('Tulangan BA'),
            buildTable(Hitungan7),
            Text('Tulangan AB Lapang'),
            buildTable(Hitungan8),
          ],
        ));
    return saveDocument(name: "my_exampletable.pdf", pdf: pdftabel);

  }

  static Future HitunganI1B ({
    List Hitungan1,
    List Hitungan2,
    List Hitungan3,
    List Hitungan4,
    List Hitungan5,
    List Hitungan6,
    List Hitungan7,
    List Hitungan8,
    List Hitungan9,
    List Hitungan10,
    List Hitungan11,
    List Hitungan12,

    List Hitungann,
    ByteData Gambar1,
    ByteData Gambar2,
    ByteData Gambar3,
    ByteData Gambar4,
    ByteData Gambar5,
    ByteData Gambar6,
    ByteData Gambar7,
  }) async {
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdftabel = Document();
    pdftabel.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            // Text('Peritungan Tangga I 1 Bordes'),
            // Text('Data Tangga'),
            // buildGambar(gambar_: Gambar1, height: 140, width: 170),
            // Center(child: Text("Gambar Detail Tangga Tampak Samping")),
            // buildTable(Hitungan1),
            // Text('Hitungan Tebal Tangga'),
            // buildTable(Hitungan2),
            // buildGambar(gambar_: Gambar2, height: 100, width: 170),
            // Center(child: Text("Gambar Detail Anak Tangga dan Tebal Tangga")),
            // Text('Hitungan Pembebanan'),
            // buildTable(Hitungan3),
            // Text('Analisa Struktur'),
            // buildTable(Hitungan4),
            // Text('Persebaran Momen'),
            // buildMomenTabel(Hitungan5),//persebaran momen
            // buildTable(Hitungan6),
            buildGambar(gambar_: Gambar3, height: 100, width: 170),
            Center(child: Text("Gambar Pembebanan dan Free Body tangga")),
            // buildTable(Hitungan7),
            // buildGambar(gambar_: Gambar4, height: 100, width: 170),
            // Center(child: Text("Gambar Free Body tangga")),
            // buildGambar(gambar_: Gambar5, height: 100, width: 170),
            // Center(child: Text("Gambar NFD tangga")),
            // buildGambar(gambar_: Gambar6, height: 100, width: 170),
            // Center(child: Text("Gambar SFD tangga")),
            // buildGambar(gambar_: Gambar7, height: 100, width: 170),
            // Center(child: Text("Gambar BMD tangga")),
            // Text('Penulangan Pelat Tangga'),
            // Text('Tulangan AB'),
            //buildTable(Hitungan8),
            //Text('Tulangan BA'),
            //buildTable(Hitungan9),
            //Text('Tulangan AB Lapang'),
            //buildTable(Hitungan10),
            //Text('Tulangan BC'),
            //buildTable(Hitungan11),
            //Text('Tulangan CB'),
            //buildTable(Hitungan12),
          ],
        ));
    return saveDocument(name: "my_exampletable.pdf", pdf: pdftabel);

  }


  static Future generateTable({
    List Hitungan1, List Hitungan2, List Hitungan3, List Hitungan4, List Hitungan5,List Hitungan6,List Hitungann,
    ByteData Gambar1,ByteData Gambar2,ByteData Gambar3,ByteData Gambar4,ByteData Gambar5, ByteData Gambar6,
    int h1=0,int h2=0,int h3=0,int h4=0,int h5=0,int h6=0,
    int w1=0,int w2=0,int w3=0,int w4=0,int w5=0,int w6=0,
    Widget Text1,Widget Text2,Widget Text3,Widget Text4,Widget Text5,Widget Text6,
    Widget Text11,Widget Text21,Widget Text31,Widget Text41,Widget Text51,Widget Text61,
    Widget Text12,Widget Text22,Widget Text32,Widget Text42,Widget Text52,Widget Text62,
    Widget Text13,Widget Text23,Widget Text33,Widget Text43,Widget Text53,Widget Text63,
  }) async {
    final PageTheme_ = PageTheme(pageFormat: PdfPageFormat.a4);
    final pdftabel = Document();
    pdftabel.addPage(
        MultiPage(
          pageTheme: PageTheme_,
          build: (context) => [
            //1
            Text1,
            Text11,
            buildGambar(gambar_: Gambar1, height: h1, width: w1),
            Text12,
            buildTable(Hitungan1==null?Hitungann:Hitungan1),
            Text13,
            //2
            Text2,
            Text21,
            buildGambar(gambar_: Gambar2, height: h2, width: w2),
            Text22,
            buildTable(Hitungan2==null?Hitungann:Hitungan2),
            Text23,
            //3
            Text3,
            Text31,
            buildGambar(gambar_: Gambar3, height: h3, width: w3),
            Text32,
            buildTable(Hitungan3==null?Hitungann:Hitungan3),
            Text33,
            //4
            Text4,
            Text41,
            buildGambar(gambar_: Gambar4, height: h4, width: w4),
            Text42,
            buildTable(Hitungan4==null?Hitungann:Hitungan4),
            Text43,
            //5
            Text5,
            Text51,
            buildGambar(gambar_: Gambar5, height: h5, width: w5),
            Text52,
            buildTable(Hitungan5==null?Hitungann:Hitungan5),
            Text53,
            //6
            Text6,
            Text61,
            buildGambar(gambar_: Gambar6, height: h6, width: w6),
            Text62,
            buildTable(Hitungan6==null?Hitungann:Hitungan6),
            Text63,
          ],
        ));
    return saveDocument(name: "my_exampletable.pdf", pdf: pdftabel);
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
  }
}

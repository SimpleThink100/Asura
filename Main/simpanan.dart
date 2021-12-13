import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Desain_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/main.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'dart:ui' as ui;
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:intl/intl.dart' as tl;

import 'dart:math';



//jenis text
final text1 = ui.ParagraphBuilder(ui.ParagraphStyle(
  textDirection: TextDirection.ltr, textAlign: TextAlign.center,));
final text2 = ui.ParagraphBuilder(ui.ParagraphStyle(
  textDirection: TextDirection.ltr, textAlign: TextAlign.start,));

final text1_ = ui.TextStyle(
  color: Colors.white,
  fontSize: 20,);

final text2_ = ui.TextStyle(
  color: Colors.white,
  fontSize: 17,);

final text3_ = ui.TextStyle(
  color: Colors.green[800],
  fontSize: 17,);

final text4_ = ui.TextStyle(
  color: Colors.black,
  fontSize: 17,);

//jenis garis
Paint Line1 = Paint()
  ..strokeWidth = 2
  ..color = Colors.orange;
Paint Line2 = Paint()
  ..strokeWidth = 5
  ..color = Colors.orange;
Paint Line3 = Paint()
  ..strokeWidth = 5
  ..color = Colors.orange[200];
Paint Line4 = Paint()
  ..strokeWidth = 2
  ..color = Colors.green[800];
Paint Line5 = Paint()
  ..strokeWidth = 2
  ..color = Colors.black;
Paint Line6 = Paint()
  ..strokeWidth = 0.5
  ..color = Colors.black;
Paint Line7 = Paint()
  ..strokeWidth = 2
  ..color = Colors.black
  ..style =PaintingStyle.stroke;
Paint Line8 = Paint()
  ..strokeWidth = 0.5
  ..color = Colors.orange[200];
Paint Line9 = Paint()
  ..strokeWidth = 2
  ..color = Colors.orange[200];
Paint Line10 = Paint()
  ..strokeWidth = 2
  ..color = Colors.orange[200]
  ..style =PaintingStyle.stroke;
Paint Line11 = Paint()
  ..strokeWidth = 1
  ..color = Colors.black;
Paint Line12 = Paint()
  ..strokeWidth = 5
  ..color = Colors.grey;


// size tulisan
final Size2 = TextStyle(fontSize: 12,);
final Size3 = TextStyle(fontSize: 16,);
final Size4 = TextStyle(fontSize: 22,);



//paragraph gambar
class Para{
  String Text;
  double Lebar;
  TextAlign Posisi = TextAlign.start;
  double font = 17;
  Color color = Colors.black;
  Para({this.Text,this.Lebar,this.Posisi,this.font,this.color});
  toJudul(){
    final Keterangan = ui.ParagraphBuilder(ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    ))
      ..pushStyle(ui.TextStyle(color: Colors.white, fontSize: 20))
      ..addText(Text);
    final Keterangan_ = Keterangan.build();
    Keterangan_ .layout(ui.ParagraphConstraints(
      width: Lebar,
    ));
    return Keterangan_;
  }
  toSub(){
    final Keterangan = ui.ParagraphBuilder(ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    ))
      ..pushStyle(ui.TextStyle(color: Colors.white, fontSize: 17))
      ..addText(Text);
    final Keterangan_ = Keterangan.build();
    Keterangan_ .layout(ui.ParagraphConstraints(
      width: Lebar==null?160:Lebar,
    ));
    return Keterangan_;
  }

  toKetW(){
    final Keterangan = ui.ParagraphBuilder(ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
      textAlign: Posisi,
    ))
      ..pushStyle(ui.TextStyle(color: Colors.white, fontSize: font))
      ..addText(Text);
    final Keterangan_ = Keterangan.build();
    Keterangan_ .layout(ui.ParagraphConstraints(
      width: Lebar==null?200:Lebar,
    ));
    return Keterangan_;
  }
  toKetB(){
    final Keterangan = ui.ParagraphBuilder(ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
      textAlign: Posisi,
    ))
      ..pushStyle(ui.TextStyle(color: Colors.black, fontSize: font))
      ..addText(Text);
    final Keterangan_ = Keterangan.build();
    Keterangan_ .layout(ui.ParagraphConstraints(
      width: Lebar==null?200:Lebar,
    ));
    return Keterangan_;}
  toKetG(){
    final Keterangan = ui.ParagraphBuilder(ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
      textAlign: Posisi,
    ))
      ..pushStyle(ui.TextStyle(color: Colors.green[800], fontSize: 17))
      ..addText(Text);
    final Keterangan_ = Keterangan.build();
    Keterangan_ .layout(ui.ParagraphConstraints(
      width: 200,
    ));
    return Keterangan_;}
  toKetC(){
    final Keterangan = ui.ParagraphBuilder(ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
      textAlign: Posisi,
    ))
      ..pushStyle(ui.TextStyle(color:color, fontSize: font))
      ..addText(Text);
    final Keterangan_ = Keterangan.build();
    Keterangan_ .layout(ui.ParagraphConstraints(
      width: Lebar,
    ));
    return Keterangan_;}
}


buildContainerTextFiel(
    String nama, String satuan, TextEditingController controller,LebarLayar) {
  final double LL=LebarLayar-40;
  return Container(
    color: Colors.green,
    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    height: 25,
    child: Row(
      children: [
        Container(
          //color: Colors.black,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          width: LL*200/320,
          child: Text(
            nama,
            style: TextStyle(color: Colors.green[100], fontSize: 17.0),
          ),
        ),
        Container(
          width: LL*70/320,
          color: Colors.green[100],
          child: Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            child: TextField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                hintMaxLines: 2,
                hintText: '0',
                hintStyle: TextStyle(),
                contentPadding: EdgeInsets.only(top: -20),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: LL*50/320,
          child: Text(satuan,
              style: TextStyle(color: Colors.green[100], fontSize: 17.0),
              textAlign: TextAlign.center),
        )
      ],
    ),
  );
}

Container buildContainerHasil(
    String NamaHasil, double Hasil, String SatuanHasil,LebarLayar) {
  final double LL=LebarLayar-40;
  return Container(
    margin: EdgeInsets.only(top: 2, bottom: 2),
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*200/320,
            child: Text(NamaHasil)),
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*50/320,
            child: Text(Hasil.toStringAsFixed(1), textAlign: TextAlign.end)),
        Container(
            margin: EdgeInsets.only(right: 0, left: 10),
            width: LL*40/320,
            child: Text(SatuanHasil, textAlign: TextAlign.start)),
      ],
    ),
  );
}

Container buildContainerPerancangan(
    String nama, String rumus, double hasil, String satuan, bool lolos,LebarLayar) {
  final double LL=LebarLayar-40;
  return Container(
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*150/320,
            child: Text(
              nama,
            )),
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*70/320,
            child: Text(rumus)),
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*45/320,
            child: Text(
              hasil.toStringAsFixed(1),
              textAlign: TextAlign.end,
              style: TextStyle(color: lolos ? Colors.black : Colors.red),
            )),
        Container(
            margin: EdgeInsets.only(right: 0, left: 5),
            width: LL*30/320,
            child: Text(satuan, textAlign: TextAlign.start)),
      ],
    ),
  );
}

Container BuildPerancanganMaterial(
    String nama, String rumus, bool lolos,LebarLayar) {
  final double LL=LebarLayar-40;
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*150/320,
            child: Text(
              nama,
            )),
        Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            width: LL*100/320,
            child: Text(rumus,
              textAlign: TextAlign.end,
              style: TextStyle(color: lolos ? Colors.black : Colors.red),)),

      ],
    ),
  );
}

Divider buildDivider(double height) {
  return Divider(
    height: height,
    color: Colors.green[500],
    thickness: 1,
  );
}

buildContainerTextFieldLoad(
    String nama, String satuan, TextEditingController controller,LebarLayar) {
  final double LL=LebarLayar-40;
  return Container(
    color: Colors.green,
    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    height: 25,
    child: Row(
      children: [
        Container(
          //color: Colors.black,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          width: LL*200/320,
          child: Text(
            nama,
            style: TextStyle(color: Colors.green[100], fontSize: 17.0),
          ),
        ),
        Container(
          width: LL*60/320,
          color: Colors.green[100],
          child: Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            child: TextField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                hintMaxLines: 2,
                hintText: '0',
                hintStyle: TextStyle(),
                contentPadding: EdgeInsets.only(top: -20),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: LL*60/320,
          child: Text(satuan,
              style: TextStyle(color: Colors.green[100], fontSize: 17.0),
              textAlign: TextAlign.center),
        )
      ],
    ),
  );
}

Container buildMenu(String text,bool cek,Icon Icon1,Icon Icon2){
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    color: Colors.green[100],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 20,
              color: Colors.green[900]),
        ),
        if(cek)Icon2 else Icon1,
      ],
    ),
  );
}

DropdownMenuItem Item(String Item){
  return  DropdownMenuItem(
    value: Item,
    child: Text(Item,style:Size3),
  );
}

DropdownMenuItem ItemBoll(String Item, bool bolean){
  return  DropdownMenuItem(
    value: bolean,
    child: Text(Item,style:Size3),
  );
}

void MasukanData(Task task){
  ResetValue();
  Optrede_1 = task.optredeR1;
  TinggiT_1 = task.tinggiT1;
  PanjangT_1 =task.panjangT1;
  Optrede_2 = task.optredeR2;
  TinggiT_2 = task.tinggiT2;
  PanjangT_2 =task.panjangT2;
  Optrede_3 = task.optredeR3;
  TinggiT_3 = task.tinggiT3;
  PanjangT_3 =task.panjangT3;
  LebarT = task.lebarT;
  LebarB_1 = task.lebarB;
  PanjangB_1 =task.panjangB;

  TebalPelatTanggaPilih_1=task.tebalT1;
  TebalPelatTanggaPilih_2=task.tebalT2;
  TebalPelatTanggaPilih_3=task.tebalT3;
  TebalPelatBordesPilih_1=task.tebalB;
  TebalPelatBordesPilih_2=task.tebalB;
  TebalPelatBordesPilih_3=task.tebalB;

  settingSatuan = task.satuan;
  UkuranTangga = task.ukuranTangga ;
  settingPembagiAntrede = task.pembagiA;
  settingPembagiOptrede = task.pembagiO;
  mirror = task.mirror;
  teratas = task.teratas;

  beton=task.Beton;
  keramik=task.Keramik;
  spesi=task.Spesi;
  ralling=task.Hand;
  hidup = task.hidup;

  tkeramik=task.tebalKeramik;
  tspesi=task.tebalSpesi;

  fy = task.fy;
  fc = task.fc;
  d = task.D;
  Selimut = task.S;

  ds=task.Ds;
  fcB =task.fcB;
  fyB =task.fyB;
  dB =task.DB;
  selimutB =task.sB;
  dsB =task.DsB;

  bB =task.bB;
  hB= task.hB;
  dinding= task.Dinding;
}


// //keterangan
// Form(
// key: _formKey,
// child: Container(
// margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.green[500],
// ),
// child: Column(
// children: [
// Container(
// //color: Colors.green,
// margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
// height: 30,
// child: Row(
// children: [
// Container(
// padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
// child: Text(
// 'Nama : ',
// style: TextStyle(
// color: Colors.green[100], fontSize: 17.0),
// ),
// ),
// Container(
// margin: EdgeInsets.fromLTRB(0, 5, 0, 2),
// //padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10),
// ),
// color: Colors.green[100],
// ),
// //color: Colors.green[100],
// child: SizedBox(
// width: 235.0,
// child: TextFormField(
// keyboardType: TextInputType.text,
// // initialValue: _nama,
// controller: controllerNama,
// // onChanged: (value) => _nama = value,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.fromLTRB(5, -23, 0, 0),
// hintText: 'Nama',
// hintStyle: TextStyle(fontSize: 17.0),
// border: InputBorder.none,
// ),
// validator: (value) => value.trim().isEmpty
// ? "Nama tidak boleh kosong"
//     : null,
// ),
// ),
// ),
// ],
// ),
// ),
// Container(
// //color: Colors.green,
// margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
// height: 30,
// child: Row(
// children: [
// Container(
// padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
// child: Text(
// 'Tanggal : ',
// style: TextStyle(
// color: Colors.green[100], fontSize: 17.0),
// ),
// ),
// Container(
// margin: EdgeInsets.only(
// top: 3, bottom: 5, right: 5, left: 0),
// //color: Colors.green[100],
// decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(10),
// bottomRight: Radius.circular(10),
// ),
// color: Colors.green[100],
// ),
// child: SizedBox(
// width: 220.0,
// child: TextFormField(
// readOnly: true,
// onTap: _datePiker,
// controller: controllerTanggal,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.fromLTRB(5, 7, 5, 8),
// border: InputBorder.none,
// hintText: "dd-MM-yyyy"),
// ),
// ),
// ),
// ],
// ),
// ),
// Container(
// //color: Colors.green,
// height: 165,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// //color: Colors.black,
// padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
// //width: 70,
// child: Text(
// 'Keterangan :',
// textAlign: TextAlign.start,
// style: TextStyle(
// color: Colors.green[100],
// fontSize: 17.0,
// ),
// ),
// ),
// Container(
// margin: EdgeInsets.only(right: 10, left: 10),
// //color: Colors.green[100],
// decoration: BoxDecoration(
// //borderRadius: BorderRadius.circular(10),
// color: Colors.green[100],
// ),
// child: SizedBox(
// width: 300.0,
// height: 120,
// child: TextField(
// keyboardType: TextInputType.multiline,
// controller: controllerKeterangan,
// maxLines: 5,
// // onChanged: (value) {
// //   _keterangan = value;
// // },
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.fromLTRB(5, 2, 5, 8),
// hintText: '',
// hintStyle: TextStyle(fontSize: 17.0),
// border: InputBorder.none,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// buildDivider(2),



//
// showDialog(context: context, builder: (context) {
// return
// //buka pdf
// AlertDialog(
// // title: Text('PDF Report dihasilkan'),
// content: Text("Buat PDF Report dan buka file?"),
// actions: [
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// ElevatedButton(
// style: ButtonStyle(
// // backgroundColor: MaterialStateProperty.all<Color>(Colors.green[500]),
// ),
// onPressed: ()async{
// // final pdfFile = await PdfApi.HitunganI();
// //     nama: ,
// //     Hitungan1: ,
// //     Hitungan2: ,
// //     Hitungan3: ,
// //     Gambar1: );
// //     PdfApi.openFile(pdfFile);
// },
// child: Container(
// width: 70,
// child: Center(child: Text('Ya'))
// )
// ),
// SizedBox(
// width: 20,
// ),
// ElevatedButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(
// Colors.green[500]),
// ),
// onPressed: (){
// Navigator.pop(context);
// },
// child: Container(
// width: 70,
// child: Center(child: Text('Tidak'))
// )
// ),
// ],
// )
// ],
// );
// });
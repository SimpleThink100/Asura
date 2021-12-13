import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as tl;
import 'dart:typed_data';
import 'package:get/get.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/database.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/ceking.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/coba.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Hitung_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Gambar_Tangga_U_2B.dart';

class Gambar_Tangga_U_2B_1 extends CustomPainter {
  final double c = (1.0).toT_U_2B_a();
  @override
  void paint(Canvas canvas, Size size) {
    final double _teratas=teratas=="Antrede"?1:0;
    final double Antrede_1=AntredeR_1;
    final double Optrede_1=OptredeR_1;
    final double xT_1=TebalPelatTanggaPilih_1/sina_1;
    final double yT_1=TebalPelatTanggaPilih_1/sina_1+(Optrede_1-TebalPelatBordesPilih_1)*cosa_1/sina_1;
    final double yB_1=TebalPelatBordesPilih_1;
    final double Antrede_2=AntredeR_2;
    final double Optrede_2=OptredeR_2;
    final double Antrede_3=AntredeR_3;
    final double Optrede_3=OptredeR_3;
    final double xT_3=TebalPelatTanggaPilih_3/sina_3-(TebalPelatBordesPilih_2)*cosa_3/sina_3;
    final double yT_3=TebalPelatTanggaPilih_3*cosa_3;
    final double yB_2=TebalPelatBordesPilih_2;
    final double JA=20<(PanjangT_3-PanjangT_1)*c?(PanjangT_3-PanjangT_1+Antrede_3*(1-_teratas))*c:20+(Antrede_3*(1-_teratas))*c;


    //judulgambar
    final Judul11=Para(Text: "Tampak Samping",Lebar :LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //Gambartangga atas
    var path3 = Path();
    path3.moveTo((JA+(PanjangT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    for (var i = 0; i <= OptredeNT_3-1; i++) {
      path3.lineTo((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c);
      path3.lineTo((JA + (PanjangT_1-Antrede_3*(i+1))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c);
    }
    path3.lineTo((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+yT_3)*c);
    path3.lineTo((JA + (PanjangT_1-xT_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c);
    path3.lineTo((JA + (PanjangT_1+LebarB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c);
    path3.lineTo((JA + (PanjangT_1+LebarB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    canvas.drawPath(path3, Line3);

    for (var i = 0; i <= OptredeNT_3-1; i++) {
      canvas.drawLine(
          Offset((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i))*c),
          Offset((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c),
          Offset((JA + (PanjangT_1-Antrede_3*(i+1))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Offset((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+yT_3)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+yT_3)*c),
        Offset((JA + (PanjangT_1-xT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1-xT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+yB_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);

    // gambar tangga tengah
    var path2 = Path();
    path2.moveTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c);
    path2.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    path2.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    path2.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c);
    canvas.drawPath(path2, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);
    for (var i = 1; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Line1);
    }

    // gambar tangga bawah
    var path = Path();
    path.moveTo(JA.toMirror(M, MV), TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      path.lineTo((JA + Antrede_1*c * (i)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
      path.lineTo((JA + Antrede_1*c * (i+1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
    }
    path.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c);
    path.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c);
    path.lineTo((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c);
    path.lineTo((JA+(xT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
   canvas.drawPath(path, Line3);

for (var i = 0; i <= OptredeNT_1-1; i++) {
  canvas.drawLine(
      Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i))*c),
      Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
      Line1);
  canvas.drawLine(
      Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
      Offset(JA+(Antrede_1*(i+1))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
      Line1);
}
canvas.drawLine(
    Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c),
    Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c),
    Line1);
canvas.drawLine(
    Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c),
    Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
    Line1);
canvas.drawLine(
    Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
    Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
    Line1);
canvas.drawLine(
    Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
    Offset((JA+(xT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c),
    Line1);
canvas.drawLine(
    Offset((JA+(xT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c),
    Offset((JA+(0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c),
    Line1);

//balok bawah
    var path4 = Path();
    path4.moveTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c);
    path4.lineTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c);
    path4.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c);
    path4.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c);
    canvas.drawPath(path4, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Line1);
    var path5 = Path();
    path5.moveTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    path5.lineTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c);
    path5.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c);
    path5.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    canvas.drawPath(path5, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);

//keterangan garis bawah
    canvas.drawLine(
        Offset((JA + (0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB +JK),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK-5),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+5),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB +JK),
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK),
        Line1);
    // atas
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB -JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Offset((JA + (PanjangT_1-PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);
    // kanan
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB),
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK-5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA + JK+5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK-5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + JK+5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);
    //keterangan
    //keterangan11
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    //keterangan14
    final Kete14 = Para(Text:LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    //keterangan15
    final Kete15 = Para(Text:PanjangT_3.toStringAsFixed(0) + " cm",Lebar: PanjangT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete15.toKetW(),
        Offset((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB -JK*3+(-TinggiT_1-TinggiT_2-TinggiT_3).toT_U_2B_a()));
    //keterangan13
    final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));
    //keterangan23
    final Kete23 = Para(Text:Sudut_2.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete23.toKetW(),
        Offset(JA-JK*3 + (PanjangT_1)*c,
            TinggiCanvasa - JB-JK*2 +(-TinggiT_1)*c));
    //keterangan24
    final Kete24 = Para(Text:Sudut_3.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete24.toKetW(),
        Offset(JA-JK+ (PanjangT_1-PanjangT_3*1/3)*c,
            TinggiCanvasa - JB +(-TinggiT_1-TinggiT_2-TinggiT_3/5)*c));
    //vertikal
    canvas.rotate(270/180*pi);
    //keterangan12
    final Kete12 =Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa + JB,
        JA + (PanjangT_1+LebarT+bB/2)*c + JK));
//keterangan16
    final Kete16 =Para(Text:TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete16.toKetW(),
        Offset(-TinggiCanvasa + JB+(TinggiT_1)*c,
            JA + (PanjangT_1+LebarT+bB/2)*c + JK));
//keterangan17
    final Kete17 =Para(Text:TinggiT_3.toStringAsFixed(0) + " cm",Lebar: TinggiT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete17.toKetW(),
        Offset(-TinggiCanvasa + JB+(TinggiT_1+TinggiT_2)*c,
            JA + (PanjangT_1+LebarT+bB/2)*c + JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toT_U_2B_b();
    final double _teratas=teratas=="Antrede"?1:0;
    final double Antrede_1=AntredeR_1;
    final double Optrede_1=OptredeR_1;
    final double xT_1=TebalPelatTanggaPilih_1/sina_1;
    final double yT_1=TebalPelatTanggaPilih_1/sina_1+(Optrede_1-TebalPelatBordesPilih_1)*cosa_1/sina_1;
    final double yB_1=TebalPelatBordesPilih_1;
    final double Antrede_3=AntredeR_3;
    final double Optrede_3=OptredeR_3;
    final double xT_3=TebalPelatTanggaPilih_3/sina_3-(TebalPelatBordesPilih_2)*cosa_3/sina_3;
    final double yT_3=TebalPelatTanggaPilih_3*cosa_3;
    final double yB_2=TebalPelatBordesPilih_2;
    final double JA=20<(PanjangT_3-PanjangT_1)*c?(PanjangT_3-PanjangT_1+Antrede_3*(1-_teratas))*c:20+(Antrede_3*(1-_teratas))*c;

    //judulgambar
    final Judul21 = Para(Text:"Tampak Atas",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul21.toJudul(), Offset(0, 20));

    //Gambar
    var path = Path();
    path.moveTo((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c);
    path.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c);
    path.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c);
    path.lineTo((JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c);
    path.lineTo((JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c);
    path.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c);
    path.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c);
    canvas.drawPath(path, Line3);

    canvas.drawLine(
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Offset((JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Offset((JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c),
        Line1);

    for (var i = 1; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(
          Offset((JA + (i * Antrede_1)*c).toMirror(M, MV), TinggiCanvasb - JB +(0.0)*c),
          Offset((JA + (i * Antrede_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
          Line1);
    }
    for (var i = 0; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb - JB +(-LebarT-Antrede_2*i)*c),
          Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-Antrede_2*i)*c),
          Line1);
    }
    for (var i = 0; i <= OptredeNT_3-1; i++) {
      canvas.drawLine(
          Offset((JA + (PanjangT_1-i * Antrede_1)*c).toMirror(M, MV), TinggiCanvasb - JB +(-LebarT-PanjangT_2)*c),
          Offset((JA + (PanjangT_1-i * Antrede_1)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c),
          Line1);
    }
    //keterangan garis
    //bawah
    canvas.drawLine(
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasb - JB+JK +(0.0)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+JK+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+JK-5+(0.0)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+JK+5+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb - JB+JK +(0.0)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB+JK+(0.0)*c),
        Line1);
    //atas
    canvas.drawLine(
        Offset((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasb - JB-JK +(-LebarT*2-PanjangT_2)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb-JB-JK+(-LebarT*2-PanjangT_2)*c),
        Line1);


    //kanan
    canvas.drawLine(
        Offset((JA+JK+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(0.0)*c),
        Offset((JA+JK+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+JK+5+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Offset((JA+JK-5+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+JK+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT)*c),
        Offset((JA+JK+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+JK+5+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Offset((JA+JK-5+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+JK+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT-PanjangT_2)*c),
        Offset((JA+JK+ (PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasb-JB+(-LebarT*2-PanjangT_2)*c),
        Line1);


    //keterangan1
    final Kete21 = Para(Text: LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete21.toKetW(),
        Offset((JA + PanjangT_1*c).toMirror(M, MV),TinggiCanvasb-JB+JK));
    //keterangan2
    final Kete22 = Para(Text: PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi:TextAlign.center);
    canvas.drawParagraph(
        Kete22.toKetW(),
        Offset((JA).toMirror(M, MV),TinggiCanvasb-JB+JK));
    //keterangan3
    final Kete24 = Para(Text: PanjangT_3.toStringAsFixed(0) + " cm",Lebar: PanjangT_3*c,Posisi:TextAlign.center);
    canvas.drawParagraph(
        Kete24.toKetW(),
        Offset((JA+PanjangT_1-PanjangT_3).toMirror(M, MV),TinggiCanvasb-JB-JK*3+(-LebarT*2-PanjangT_2)*c));

    //vertikal
    canvas.rotate(270/180*pi);
    final Kete23 = Para(Text: PanjangT_2.toStringAsFixed(0) + " cm",Lebar: PanjangT_2*c,Posisi:TextAlign.center);
    canvas.drawParagraph(
        Kete23.toKetW(),
        Offset(-TinggiCanvasb+JB+(LebarT)*c,JA+JK+(PanjangT_1+LebarT)*c));
    canvas.drawParagraph(
        Kete21.toKetW(),
        Offset(-TinggiCanvasb+JB+(0.0)*c,JA+JK+(PanjangT_1+LebarT)*c));
    canvas.drawParagraph(
        Kete21.toKetW(),
        Offset(-TinggiCanvasb+JB+(LebarT+PanjangT_2)*c,JA+JK+(PanjangT_1+LebarT)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size){{
    //Judul31
    final judul31 = Para(Text: "Detail Jumlah Anak Tangga", Lebar: LebarCanvas);
    canvas.drawParagraph(judul31.toJudul(), Offset(0, 20));

    //Gambar31
    var GH3 = 50;
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB - GH3),
        Offset(JA + 5 + 80, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB - GH3),
        Offset(JA + 5 + 40, TinggiCanvasc - JB - GH3), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB - GH3),
        Offset(JA + 5, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 5 + 40, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 5 + 40, TinggiCanvasc - JB - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB - GH3 - 80),
        Offset(JA + 5 + 80, TinggiCanvasc - JB - GH3 - 80), Line1);
    var path31 = Path();
    path31.moveTo(JA + 5, TinggiCanvasc - GH3 + 20 - JB + 40);
    path31.lineTo(JA + 5, TinggiCanvasc - GH3 + 20 - 50 - JB + 40);
    path31.lineTo(JA + 5 + 40 * 2, TinggiCanvasc - GH3 + 20 - 50 - JB + 40);
    path31.lineTo(JA + 5 + 40 * 2, TinggiCanvasc - GH3 + 20 - JB + 40);
    canvas.drawPath(path31, Line3);

    //Gambar 32
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB - GH3),
        Offset(JA + 20 + 40 * 4, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB - GH3),
        Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB - GH3 - 80),
        Offset(JA + 20 + 40 * 4, TinggiCanvasc - JB - GH3 - 80), Line1);
    var path32 = Path();
    path32.moveTo(JA + 20 + 40 * 2, TinggiCanvasc - GH3 + 20 - JB + 40);
    path32.lineTo(JA + 20 + 40 * 2, TinggiCanvasc - GH3 + 20 - 50 - JB + 40);
    path32.lineTo(JA + 20 + 40 * 4, TinggiCanvasc - GH3 + 20 - 50 - JB + 40);
    path32.lineTo(JA + 20 + 40 * 4, TinggiCanvasc - GH3 + 20 - JB + 40);
    canvas.drawPath(path32, Line3);

    //gambar33
    canvas.drawLine(Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB - GH3),
        Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB - GH3 - 80),
        Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB - GH3 - 80),
        Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB - GH3), Line1);
    var path33 = Path();
    path33.moveTo(JA + 35 + 40 * 4, TinggiCanvasc - GH3 + 20 - JB + 40);
    path33.lineTo(JA + 35 + 40 * 4, TinggiCanvasc - GH3 + 20 - 50 - JB + 40);
    path33.lineTo(JA + 35 + 40 * 6, TinggiCanvasc - GH3 + 20 - 50 - JB + 40);
    path33.lineTo(JA + 35 + 40 * 6, TinggiCanvasc - GH3 + 20 - JB + 40);
    canvas.drawPath(path33, Line3);

    //keterangan36 optrede1
    if (Optrede1N_1 > 0) {
      Ket36 = (Optrede_1 - PembagiOptrede).toString();
    } else if (OptredeN1_1 > 0) {
      Ket36 = (Optrede_1 + PembagiOptrede).toString();
    } else {
      Ket36 = (Optrede_1).toPrecision(2).toString();
    }
    ;
    final kete36 = Para(Text: Ket36);
    canvas.drawParagraph(
        kete36.toKetW(), Offset(JA + 6 + 40, TinggiCanvasc - JB - 70 - GH3));

    //keterangan33 antrede1
    if (Antrede1N_1 > 0) {
      Ket33 = (Antrede_1 - PembagiAntrede).toString();
    } else if (AntredeN1_1 > 0) {
      Ket33 = (Antrede_1 + PembagiAntrede).toString();
    } else {
      Ket33 = (Antrede_1).toPrecision(2).toString();
    }
    ;

    final Kete33 = Para(Text: Ket33);
    canvas.drawParagraph(
        Kete33.toKetW(), Offset(JA + 10, TinggiCanvasc - JB - 40 - GH3));

    //keterangan39 antrede 1 angka
    final Kete39 = Para(Text: AntredeNB_1.toText());
    canvas.drawParagraph(
        Kete39.toKetG(), Offset(JA + 15 + 5, TinggiCanvasc - JB + 15 - GH3));

    //keterangan311 optrede 1 angka
    final Kete311 = Para(Text: AntredeNB_1.toText());
    canvas.drawParagraph(
        Kete311.toKetG(), Offset(JA + 5 + 50, TinggiCanvasc - JB + 35 - GH3));

    //keterangan37 optrede 2
    final Kete37 = Para(Text: Optrede_1.toPrecision(2).toString());
    canvas.drawParagraph(Kete37.toKetW(),
        Offset(JA + 5 + 40 + 95, TinggiCanvasc - JB - 70 - GH3));

    //keterangan34 antrede 2
    final Kete34 = Para(Text: Antrede_1.toPrecision(2).toString());
    canvas.drawParagraph(
        Kete34.toKetW(), Offset(JA + 10 + 95, TinggiCanvasc - JB - 40 - GH3));

    //keterangan312 antrede 2 angka
    final Kete312 = Para(Text: AntredeN_1.toText());
    canvas.drawParagraph(Kete312.toKetG(),
        Offset(JA + 15 + 5 + 95, TinggiCanvasc - JB + 15 - GH3));

    //keterangan313 optrede 2 angka
    final Kete313 = Para(Text: OptredeN_1.toText());
    canvas.drawParagraph(Kete313.toKetG(),
        Offset(JA + 5 + 50 + 95, TinggiCanvasc - JB + 35 - GH3));

    //keterangan38 optrede 3
    if (Optrede1N_1 > 0) {
      Ket38 = (Optrede_1 - PembagiOptrede).toString();
    } else if (OptredeN1_1 > 0) {
      Ket38 = (Optrede_1 + PembagiOptrede).toString();
    } else {
      Ket38 = (Optrede_1).toPrecision(2).toString();
    };
    final Kete38 = Para(Text: Ket38);
    canvas.drawParagraph(Kete38.toKetW(),
        Offset(JA + 6 + 40 + 95 + 95, TinggiCanvasc - JB - 70 - GH3));

    //keterangan35 antrede 3
    if (Antrede1N_1 > 1) {
      Ket35 = (Antrede_1 - PembagiAntrede).toString();
    } else if (AntredeN1_1 > 1) {
      Ket35 = (Antrede_1 + PembagiAntrede).toString();
    } else {
      Ket35 = (Antrede_1).toPrecision(2).toString();
    };
    final Kete35 = Para(Text: Ket35);
    canvas.drawParagraph(Kete35.toKetW(),
        Offset(JA + 10 + 95 * 2, TinggiCanvasc - JB - 40 - GH3));

    //keterangan314 antrede 3 angka
    final Kete314 = Para(Text: AntredeNA_1.toText());
    canvas.drawParagraph(Kete314.toKetG(),
        Offset(JA + 15 + 5 + 190, TinggiCanvasc - JB + 15 - GH3));

    //keterangan315 optrede 3 angka
    final Kete315 = Para(Text: OptredeNA_1.toText());
    canvas.drawParagraph(Kete315.toKetG(),
        Offset(JA + 5 + 50 + 190, TinggiCanvasc - JB + 35 - GH3));

    //keterangan310 tangga bawah
    final Kete310 = Para(Text: "Tangga Bawah", Lebar: LebarCanvas);
    canvas.drawParagraph(Kete310.toSub(), Offset(0, TinggiCanvasc - JB - 160));

    //keterangan_pembagi1
    canvas.drawLine(Offset(JA + 30, TinggiCanvasc - JB + 50 - GH3),
        Offset(JA + 60, TinggiCanvasc - JB + 20 - GH3), Line4);

    //keterangan_pembagi2
    canvas.drawLine(Offset(JA + 30 + 95, TinggiCanvasc - JB + 50 - GH3),
        Offset(JA + 60 + 95, TinggiCanvasc - JB + 20 - GH3), Line4);

    //keterangan_pembagi3
    canvas.drawLine(Offset(JA + 30 + 190, TinggiCanvasc - JB + 50 - GH3),
        Offset(JA + 60 + 190, TinggiCanvasc - JB + 20 - GH3), Line4);

    // gambar tengah
    //Gambar31
    var JB2 = JB * 2 + 150;
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB2 - GH3),
        Offset(JA + 5 + 80, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB2 - GH3),
        Offset(JA + 5 + 40, TinggiCanvasc - JB2 - GH3), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB2 - GH3),
        Offset(JA + 5, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 5 + 40, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 5 + 40, TinggiCanvasc - JB2 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB2 - GH3 - 80),
        Offset(JA + 5 + 80, TinggiCanvasc - JB2 - GH3 - 80), Line1);
    var path311 = Path();
    path311.moveTo(JA + 5, TinggiCanvasc - GH3 + 20 - JB2 + 40);
    path311.lineTo(JA + 5, TinggiCanvasc - GH3 + 20 - 50 - JB2 + 40);
    path311.lineTo(JA + 5 + 40 * 2, TinggiCanvasc - GH3 + 20 - 50 - JB2 + 40);
    path311.lineTo(JA + 5 + 40 * 2, TinggiCanvasc - GH3 + 20 - JB2 + 40);
    canvas.drawPath(path311, Line3);

    //Gambar 32
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB2 - GH3),
        Offset(JA + 20 + 40 * 4, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB2 - GH3),
        Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB2 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB2 - GH3 - 80),
        Offset(JA + 20 + 40 * 4, TinggiCanvasc - JB2 - GH3 - 80), Line1);
    var path322 = Path();
    path322.moveTo(JA + 20 + 40 * 2, TinggiCanvasc - GH3 + 20 - JB2 + 40);
    path322.lineTo(JA + 20 + 40 * 2, TinggiCanvasc - GH3 + 20 - 50 - JB2 + 40);
    path322.lineTo(JA + 20 + 40 * 4, TinggiCanvasc - GH3 + 20 - 50 - JB2 + 40);
    path322.lineTo(JA + 20 + 40 * 4, TinggiCanvasc - GH3 + 20 - JB2 + 40);
    canvas.drawPath(path322, Line3);

    //gambar33
    canvas.drawLine(Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB2 - GH3),
        Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB2 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB2 - GH3 - 80),
        Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB2 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB2 - GH3 - 80),
        Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB2 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB2 - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB2 - GH3), Line1);
    var path333 = Path();
    path333.moveTo(JA + 35 + 40 * 4, TinggiCanvasc - GH3 + 20 - JB2 + 40);
    path333.lineTo(JA + 35 + 40 * 4, TinggiCanvasc - GH3 + 20 - 50 - JB2 + 40);
    path333.lineTo(JA + 35 + 40 * 6, TinggiCanvasc - GH3 + 20 - 50 - JB2 + 40);
    path333.lineTo(JA + 35 + 40 * 6, TinggiCanvasc - GH3 + 20 - JB2 + 40);
    canvas.drawPath(path333, Line3);

    //keterangan36 optrede1
    if (Optrede1N_2 > 0) {
      Ket366 = (Optrede_2 - PembagiOptrede).toString();
    } else if (OptredeN1_2 > 0) {
      Ket366 = (Optrede_2 + PembagiOptrede).toString();
    } else {
      Ket366 = (Optrede_2).toPrecision(2).toString();
    }
    ;
    final Kete366 = Para(Text: Ket366);
    canvas.drawParagraph(
        Kete366.toKetW(), Offset(JA + 6 + 40, TinggiCanvasc - JB2 - 70 - GH3));

    //keterangan33 antrede1
    if (Antrede1N_2 > 0) {
      Ket333 = (Antrede_2 - PembagiAntrede).toString();
    } else if (AntredeN1_2 > 0) {
      Ket333 = (Antrede_2 + PembagiAntrede).toString();
    } else {
      Ket333 = (Antrede_2).toPrecision(2).toString();
    }
    ;
    final Kete333 = Para(Text: Ket333);
    canvas.drawParagraph(
        Kete333.toKetW(), Offset(JA + 10, TinggiCanvasc - JB2 - 40 - GH3));

    //keterangan39 antrede 1 angka
    final Kete399 = Para(Text: AntredeNB_2.toText());
    canvas.drawParagraph(
        Kete399.toKetG(), Offset(JA + 15 + 5, TinggiCanvasc - JB2 + 15 - GH3));

    //keterangan311 optrede 1 angka
    final Kete31111 = Para(Text: OptredeNB_2.toText());
    canvas.drawParagraph(Kete31111.toKetG(),
        Offset(JA + 5 + 50, TinggiCanvasc - JB2 + 35 - GH3));

    //keterangan37 optrede 2
    final Kete377 = Para(Text: Optrede_2.toPrecision(2).toString());
    canvas.drawParagraph(Kete377.toKetW(),
        Offset(JA + 5 + 40 + 95, TinggiCanvasc - JB2 - 70 - GH3));

    //keterangan34 antrede 2
    final Kete344 = Para(Text: Antrede_2.toPrecision(2).toString());
    canvas.drawParagraph(
        Kete344.toKetW(), Offset(JA + 10 + 95, TinggiCanvasc - JB2 - 40 - GH3));

    //keterangan312 antrede 2 angka
    final Kete3122 = Para(Text: AntredeN_2.toText());
    canvas.drawParagraph(Kete3122.toKetG(),
        Offset(JA + 15 + 5 + 95, TinggiCanvasc - JB2 + 15 - GH3));

    //keterangan313 optrede 2 angka
    final Kete3133 = Para(Text: OptredeN_2.toText());
    canvas.drawParagraph(Kete3133.toKetG(),
        Offset(JA + 5 + 50 + 95, TinggiCanvasc - JB2 + 35 - GH3));

    //keterangan38 optrede 3
    if (Optrede1N_2 > 0) {
      Ket388 = (Optrede_2 - PembagiOptrede).toString();
    } else if (OptredeN1_2 > 0) {
      Ket388 = (Optrede_2 + PembagiOptrede).toString();
    } else {
      Ket388 = (Optrede_2).toPrecision(2).toString();
    }
    ;
    final Kete388 = Para(Text: Ket388);
    canvas.drawParagraph(Kete388.toKetW(),
        Offset(JA + 6 + 40 + 95 + 95, TinggiCanvasc - JB2 - 70 - GH3));

    //keterangan35 antrede 3
    if (Antrede1N_2 > 1) {
      Ket355 = (Antrede_2 - PembagiAntrede).toString();
    } else if (AntredeN1_2 > 1) {
      Ket355 = (Antrede_2 + PembagiAntrede).toString();
    } else {
      Ket355 = (Antrede_2).toPrecision(2).toString();
    }
    ;
    final Kete355 = Para(Text: Ket355);
    canvas.drawParagraph(Kete355.toKetW(),
        Offset(JA + 10 + 95 * 2, TinggiCanvasc - JB2 - 40 - GH3));

    //keterangan314 antrede 3 angka
    final Kete3144 = Para(Text: AntredeNA_2.toText());
    canvas.drawParagraph(Kete3144.toKetG(),
        Offset(JA + 15 + 5 + 190, TinggiCanvasc - JB2 + 15 - GH3));

    //keterangan315 optrede angka
    final Kete3155 = Para(Text: OptredeNA_2.toText());
    canvas.drawParagraph(Kete3155.toKetG(),
        Offset(JA + 5 + 50 + 190, TinggiCanvasc - JB2 + 35 - GH3));

    //keterangan310 satuan
    final Kete3100 = Para(Text: "($settingSatuan)");
    canvas.drawParagraph(
        Kete3100.toKetW(), Offset(JA + 6 + 120, 45));

    //keterangan3101 tangga bawah
    final Kete3101 = Para(Text: "Tangga Tengah", Lebar: LebarCanvas);
    canvas.drawParagraph(Kete3101.toSub(), Offset(0, TinggiCanvasc - JB2 - 160));

    //keterangan_pembagi1
    canvas.drawLine(Offset(JA + 30, TinggiCanvasc - JB2 + 50 - GH3),
        Offset(JA + 60, TinggiCanvasc - JB2 + 20 - GH3), Line4);

    //keterangan_pembagi2
    canvas.drawLine(Offset(JA + 30 + 95, TinggiCanvasc - JB2 + 50 - GH3),
        Offset(JA + 60 + 95, TinggiCanvasc - JB2 + 20 - GH3), Line4);

    //keterangan_pembagi3
    canvas.drawLine(Offset(JA + 30 + 190, TinggiCanvasc - JB2 + 50 - GH3),
        Offset(JA + 60 + 190, TinggiCanvasc - JB2 + 20 - GH3), Line4);

    // gambar atas
    //Gambar31
    var JB3 = JB * 3 + 300;
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB3 - GH3),
        Offset(JA + 5 + 80, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB3 - GH3),
        Offset(JA + 5 + 40, TinggiCanvasc - JB3 - GH3), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB3 - GH3),
        Offset(JA + 5, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 5 + 40, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 5 + 40, TinggiCanvasc - JB3 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 5 + 40, TinggiCanvasc - JB3 - GH3 - 80),
        Offset(JA + 5 + 80, TinggiCanvasc - JB3 - GH3 - 80), Line1);
    var path3113 = Path();
    path3113.moveTo(JA + 5, TinggiCanvasc - GH3 + 20 - JB3 + 40);
    path3113.lineTo(JA + 5, TinggiCanvasc - GH3 + 20 - 50 - JB3 + 40);
    path3113.lineTo(JA + 5 + 40 * 2, TinggiCanvasc - GH3 + 20 - 50 - JB3 + 40);
    path3113.lineTo(JA + 5 + 40 * 2, TinggiCanvasc - GH3 + 20 - JB3 + 40);
    canvas.drawPath(path3113, Line3);

    //Gambar 32
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB3 - GH3),
        Offset(JA + 20 + 40 * 4, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB3 - GH3),
        Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 2, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB3 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 20 + 40 * 3, TinggiCanvasc - JB3 - GH3 - 80),
        Offset(JA + 20 + 40 * 4, TinggiCanvasc - JB3 - GH3 - 80), Line1);
    var path3223 = Path();
    path3223.moveTo(JA + 20 + 40 * 2, TinggiCanvasc - GH3 + 20 - JB3 + 40);
    path3223.lineTo(JA + 20 + 40 * 2, TinggiCanvasc - GH3 + 20 - 50 - JB3 + 40);
    path3223.lineTo(JA + 20 + 40 * 4, TinggiCanvasc - GH3 + 20 - 50 - JB3 + 40);
    path3223.lineTo(JA + 20 + 40 * 4, TinggiCanvasc - GH3 + 20 - JB3 + 40);
    canvas.drawPath(path3223, Line3);

    //gambar33
    canvas.drawLine(Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB3 - GH3),
        Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 4, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB3 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB3 - GH3 - 80),
        Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB3 - GH3 - 80), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB3 - GH3 - 80),
        Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB3 - GH3 - 40), Line1);
    canvas.drawLine(Offset(JA + 35 + 40 * 6, TinggiCanvasc - JB3 - GH3 - 40),
        Offset(JA + 35 + 40 * 5, TinggiCanvasc - JB3 - GH3), Line1);
    var path3333 = Path();
    path3333.moveTo(JA + 35 + 40 * 4, TinggiCanvasc - GH3 + 20 - JB3 + 40);
    path3333.lineTo(JA + 35 + 40 * 4, TinggiCanvasc - GH3 + 20 - 50 - JB3 + 40);
    path3333.lineTo(JA + 35 + 40 * 6, TinggiCanvasc - GH3 + 20 - 50 - JB3 + 40);
    path3333.lineTo(JA + 35 + 40 * 6, TinggiCanvasc - GH3 + 20 - JB3 + 40);
    canvas.drawPath(path3333, Line3);

    //keterangan36 optrede1
    if (Optrede1N_3 > 0) {
      Ket3663 = (Optrede_3 - PembagiOptrede).toString();
    } else if (OptredeN1_3 > 0) {
      Ket3663 = (Optrede_3 + PembagiOptrede).toString();
    } else {
      Ket3663 = (Optrede_3).toPrecision(2).toString();
    }
    ;
    final Kete3663 = Para(Text: Ket366);
    canvas.drawParagraph(
        Kete3663.toKetW(), Offset(JA + 6 + 40, TinggiCanvasc - JB3 - 70 - GH3));

    //keterangan33 antrede1
    if (Antrede1N_3 > 0) {
      Ket3333 = (Antrede_3 - PembagiAntrede).toString();
    } else if (AntredeN1_3 > 0) {
      Ket3333 = (Antrede_3 + PembagiAntrede).toString();
    } else {
      Ket3333 = (Antrede_3).toPrecision(2).toString();
    }
    ;
    final Kete3333 = Para(Text: Ket3333);
    canvas.drawParagraph(
        Kete3333.toKetW(), Offset(JA + 10, TinggiCanvasc - JB3 - 40 - GH3));

    //keterangan39 antrede 1 angka
    final Kete3993 = Para(Text: AntredeNB_3.toText());
    canvas.drawParagraph(
        Kete3993.toKetG(), Offset(JA + 15 + 5, TinggiCanvasc - JB3 + 15 - GH3));

    //keterangan311 optrede 1 angka
    final Kete311113 = Para(Text: OptredeNB_3.toText());
    canvas.drawParagraph(Kete311113.toKetG(),
        Offset(JA + 5 + 50, TinggiCanvasc - JB3 + 35 - GH3));

    //keterangan37 optrede 2
    final Kete3773 = Para(Text: Optrede_3.toPrecision(2).toString());
    canvas.drawParagraph(Kete3773.toKetW(),
        Offset(JA + 5 + 40 + 95, TinggiCanvasc - JB3 - 70 - GH3));

    //keterangan34 antrede 2
    final Kete3443 = Para(Text: Antrede_3.toPrecision(2).toString());
    canvas.drawParagraph(
        Kete3443.toKetW(), Offset(JA + 10 + 95, TinggiCanvasc - JB3 - 40 - GH3));

    //keterangan312 antrede 2 angka
    final Kete31223 = Para(Text: AntredeN_3.toText());
    canvas.drawParagraph(Kete31223.toKetG(),
        Offset(JA + 15 + 5 + 95, TinggiCanvasc - JB3 + 15 - GH3));

    //keterangan313 optrede 2 angka
    final Kete31333 = Para(Text: OptredeN_3.toText());
    canvas.drawParagraph(Kete31333.toKetG(),
        Offset(JA + 5 + 50 + 95, TinggiCanvasc - JB3 + 35 - GH3));

    //keterangan38 optrede 3
    if (Optrede1N_3 > 0) {
      Ket3883 = (Optrede_3 - PembagiOptrede).toString();
    } else if (OptredeN1_3 > 0) {
      Ket3883 = (Optrede_3 + PembagiOptrede).toString();
    } else {
      Ket3883 = (Optrede_3).toPrecision(2).toString();
    }
    ;
    final Kete3883 = Para(Text: Ket3883);
    canvas.drawParagraph(Kete3883.toKetW(),
        Offset(JA + 6 + 40 + 95 + 95, TinggiCanvasc - JB3 - 70 - GH3));

    //keterangan35 antrede 3
    if (Antrede1N_3 > 1) {
      Ket3553 = (Antrede_3 - PembagiAntrede).toString();
    } else if (AntredeN1_3 > 1) {
      Ket3553 = (Antrede_3 + PembagiAntrede).toString();
    } else {
      Ket3553 = (Antrede_3).toPrecision(2).toString();
    }
    ;
    final Kete3553 = Para(Text: Ket3553);
    canvas.drawParagraph(Kete3553.toKetW(),
        Offset(JA + 10 + 95 * 2, TinggiCanvasc - JB3 - 40 - GH3));

    //keterangan314 antrede 3 angka
    final Kete31443 = Para(Text: AntredeNA_3.toText());
    canvas.drawParagraph(Kete31443.toKetG(),
        Offset(JA + 15 + 5 + 190, TinggiCanvasc - JB3 + 15 - GH3));

    //keterangan315 optrede angka
    final Kete31553 = Para(Text: OptredeNA_3.toText());
    canvas.drawParagraph(Kete31553.toKetG(),
        Offset(JA + 5 + 50 + 190, TinggiCanvasc - JB3 + 35 - GH3));

    //keterangan310 satuan
    final Kete31003 = Para(Text: "($settingSatuan)");
    canvas.drawParagraph(
        Kete31003.toKetW(), Offset(JA + 6 + 120, 45));

    //keterangan3101 tangga bawah
    final Kete31013 = Para(Text: "Tangga Atas", Lebar: LebarCanvas);
    canvas.drawParagraph(Kete31013.toSub(), Offset(0, TinggiCanvasc - JB3 - 160));

    //keterangan_pembagi1
    canvas.drawLine(Offset(JA + 30, TinggiCanvasc - JB3 + 50 - GH3),
        Offset(JA + 60, TinggiCanvasc - JB3 + 20 - GH3), Line4);

    //keterangan_pembagi2
    canvas.drawLine(Offset(JA + 30 + 95, TinggiCanvasc - JB3 + 50 - GH3),
        Offset(JA + 60 + 95, TinggiCanvasc - JB3 + 20 - GH3), Line4);

    //keterangan_pembagi3
    canvas.drawLine(Offset(JA + 30 + 190, TinggiCanvasc - JB3 + 50 - GH3),
        Offset(JA + 60 + 190, TinggiCanvasc - JB3 + 20 - GH3), Line4);
  }}

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_U_2B_1m extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)  {
    final double c = (1.0).toM_U_2B_a();
    final double JB = 80;
    final double JB2 = JB;
    final double JA = 60;
    final double TinggiCanvasa = TinggiCanvasm_1;
    double gaya =20;

    //judulgambar
    final Judul11 = Para(Text: "Posisi Tangga Atas",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan J
    final Kete = Para(Text:"J");
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_3)*c));
    //keterangan I
    final Kete2 = Para(Text:"I");
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(0.0)*c));
    //keterangan H
    final Kete3 = Para(Text:"H");
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+(PanjangT_3+PanjangB_3)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(0.0)*c));
    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line2);

    //gambar bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Line2);
    var path = Path();
    final double k=5;
    path.moveTo((JA-k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (0.0)*c );
    path.lineTo((JA+k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (0.0)*c );
    path.lineTo((JA+k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (0.0)*c );
    path.lineTo((JA-k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (0.0)*c );
    canvas.drawPath(path, Line3);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_2m extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)  {
    final double c = (1.0).toM_U_2B_b();

    final double JB = 60;
    final double JB2 = JB;
    final double JA = 60+PanjangB_1*c;
    double gaya =20;
    final double TinggiCanvasa= TinggiCanvasm_2;
    //judulgambar
    final Judul11 = Para(Text: "Posisi Tangga Tengah",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan D
    final Kete = Para(Text:"D");
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(-PanjangB_2)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(0.0)*c));
    //keterangan E
    final Kete2 = Para(Text:"E");
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(0.0)*c));
    //keterangan F
    final Kete3 = Para(Text:"F");
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_2)*c));
    //keterangan G
    final Kete4 = Para(Text:"G");
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_2)*c));

    //gambar
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Offset((JA+(0-PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Line2);
    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);

    //gambar bordes //atas
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Line2);

    var path = Path();
    final double k=5;
    path.moveTo((JA-k + (-PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (0.0)*c );
    path.lineTo((JA+k + (-PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (0.0)*c );
    path.lineTo((JA+k + (-PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (0.0)*c );
    path.lineTo((JA-k + (-PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (0.0)*c );
    canvas.drawPath(path, Line3);

    path.moveTo((JA-k + (PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (-TinggiT_2)*c );
    path.lineTo((JA+k + (PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (-TinggiT_2)*c );
    path.lineTo((JA+k + (PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (-TinggiT_2)*c );
    path.lineTo((JA-k + (PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (-TinggiT_2)*c );
    canvas.drawPath(path, Line3);

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_3m extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toM_U_2B_c();

    final double JB = 50;
    final double JB2 = 50;
    final double JA = 60;
    double gaya =20;
    final double TinggiCanvasa = TinggiCanvasm_3;

    //judulgambar
    final Judul11 = Para(Text: "Posisi Tangga Bawah",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan A
    final Kete = Para(Text:"A");
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(0.0)*c));
    //keterangan B
    final Kete2 = Para(Text:"B");
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_1)*c));
    //keterangan C
    final Kete3 = Para(Text:"C");
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_1)*c));

    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);

    //gambar bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Line2);
    var path = Path();
    final double k=5;
    path.moveTo((JA-k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (-TinggiT_1)*c );
    path.lineTo((JA+k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-k + (-TinggiT_1)*c );
    path.lineTo((JA+k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (-TinggiT_1)*c );
    path.lineTo((JA-k + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+k + (-TinggiT_1)*c );
    canvas.drawPath(path, Line3);

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_U_2B_1O extends CustomPainter {
  final double c = (1.0).toG_U_2B_aa();
  final double TinggiCanvasa = TinggiCanvasG_1;
  @override
  void paint(Canvas canvas, Size size) {
    final double _teratas=teratas=="Antrede"?1:0;
    final double Antrede_1=AntredeR_1;
    final double Optrede_1=OptredeR_1;
    final double xT_1=TebalPelatTanggaPilih_1/sina_1;
    final double yT_1=TebalPelatTanggaPilih_1/sina_1+(Optrede_1-TebalPelatBordesPilih_1)*cosa_1/sina_1;
    final double yB_1=TebalPelatBordesPilih_1;
    final double Antrede_2=AntredeR_2;
    final double Optrede_2=OptredeR_2;
    final double Antrede_3=AntredeR_3;
    final double Optrede_3=OptredeR_3;
    final double xT_3=TebalPelatTanggaPilih_3/sina_3-(TebalPelatBordesPilih_2)*cosa_3/sina_3;
    final double yT_3=TebalPelatTanggaPilih_3*cosa_3;
    final double yB_2=TebalPelatBordesPilih_2;
    final double JA=20<(PanjangT_3-PanjangT_1)*c?(PanjangT_3-PanjangT_1+Antrede_3*(1-_teratas))*c:20+(Antrede_3*(1-_teratas))*c;


    //judulgambar
    final Judul11=Para(Text: "Tampak Samping",Lebar :LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //Gambartangga atas
    var path3 = Path();
    path3.moveTo((JA+(PanjangT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    for (var i = 0; i <= OptredeNT_3-1; i++) {
      path3.lineTo((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c);
      path3.lineTo((JA + (PanjangT_1-Antrede_3*(i+1))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c);
    }
    path3.lineTo((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+yT_3)*c);
    path3.lineTo((JA + (PanjangT_1-xT_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c);
    path3.lineTo((JA + (PanjangT_1+LebarB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c);
    path3.lineTo((JA + (PanjangT_1+LebarB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    canvas.drawPath(path3, Line3);

    for (var i = 0; i <= OptredeNT_3-1; i++) {
      canvas.drawLine(
          Offset((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i))*c),
          Offset((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA + (PanjangT_1-Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c),
          Offset((JA + (PanjangT_1-Antrede_3*(i+1))*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-Optrede_3*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Offset((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+yT_3)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1-PanjangT_3+Antrede_3*(_teratas-1))*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+yT_3)*c),
        Offset((JA + (PanjangT_1-xT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1-xT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+yB_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+yB_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);

    // gambar tangga tengah
    var path2 = Path();
    path2.moveTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c);
    path2.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    path2.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    path2.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c);
    canvas.drawPath(path2, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);
    for (var i = 1; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Line1);
    }

    // gambar tangga bawah
    var path = Path();
    path.moveTo(JA.toMirror(M, MV), TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      path.lineTo((JA + Antrede_1*c * (i)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
      path.lineTo((JA + Antrede_1*c * (i+1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
    }
    path.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c);
    path.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c);
    path.lineTo((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c);
    path.lineTo((JA+(xT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    canvas.drawPath(path, Line3);

    for (var i = 0; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(
          Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i))*c),
          Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Offset(JA+(Antrede_1*(i+1))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Offset((JA+(xT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(xT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);

//balok bawah
    var path4 = Path();
    path4.moveTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c);
    path4.lineTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c);
    path4.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c);
    path4.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c);
    canvas.drawPath(path4, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1+hB)*c),
        Line1);
    var path5 = Path();
    path5.moveTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    path5.lineTo((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c);
    path5.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c);
    path5.lineTo((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    canvas.drawPath(path5, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+hB)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Line1);

//keterangan garis bawah
    canvas.drawLine(
        Offset((JA + (0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB +JK),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK-5),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+5),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB +JK),
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK),
        Line1);
    // atas
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB -JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Offset((JA + (PanjangT_1-PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);
    // kanan
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB),
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK-5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA + JK+5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK-5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + JK+5+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + JK+(PanjangT_1+LebarT+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);
    //keterangan
    //keterangan11
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    //keterangan14
    final Kete14 = Para(Text:LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    //keterangan15
    final Kete15 = Para(Text:PanjangT_3.toStringAsFixed(0) + " cm",Lebar: PanjangT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete15.toKetW(),
        Offset((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB -JK*3+(-TinggiT_1-TinggiT_2-TinggiT_3).toT_U_2B_a()));
    //keterangan13
    final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));
    //keterangan23
    final Kete23 = Para(Text:Sudut_2.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete23.toKetW(),
        Offset(JA-JK*3 + (PanjangT_1)*c,
            TinggiCanvasa - JB-JK*2 +(-TinggiT_1)*c));
    //keterangan24
    final Kete24 = Para(Text:Sudut_3.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete24.toKetW(),
        Offset(JA-JK+ (PanjangT_1-PanjangT_3*1/3)*c,
            TinggiCanvasa - JB +(-TinggiT_1-TinggiT_2-TinggiT_3/5)*c));
    //vertikal
    canvas.rotate(270/180*pi);
    //keterangan12
    final Kete12 =Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa + JB,
            JA + (PanjangT_1+LebarT+bB/2)*c + JK));
//keterangan16
    final Kete16 =Para(Text:TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete16.toKetW(),
        Offset(-TinggiCanvasa + JB+(TinggiT_1)*c,
            JA + (PanjangT_1+LebarT+bB/2)*c + JK));
//keterangan17
    final Kete17 =Para(Text:TinggiT_3.toStringAsFixed(0) + " cm",Lebar: TinggiT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete17.toKetW(),
        Offset(-TinggiCanvasa + JB+(TinggiT_1+TinggiT_2)*c,
            JA + (PanjangT_1+LebarT+bB/2)*c + JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_1bO extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_ab();
    final double TinggiCanvasa = TinggiCanvasG_1;
    //judulgambar
    final Judul11=Para(Text: "Tampak Samping",Lebar :LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //Gambar12
    var path = Path();
    path.moveTo(JA.toMirror(M, MV), TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      path.lineTo((JA + Antrede_1*c * (i)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
      path.lineTo((JA + Antrede_1*c * (i+1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
    }
    path.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
    path.lineTo((JA + (PanjangT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+Optrede_3)*c);
    path.lineTo((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3)*c);
    path.lineTo((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3)*c);

    for (var i = 0; i <= OptredeNT_3-1; i++) {
      path.lineTo((JA + (PanjangT_1-PanjangT_3+Antrede_3*(i+1))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c);
      path.lineTo((JA + (PanjangT_1-PanjangT_3+Antrede_3*(i+1))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i+1))*c);
    }
    path.lineTo((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
    path.lineTo((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1+Optrede_1)*c);
    path.lineTo((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1));

    path.lineTo((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    for (var i = 0; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(
          Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i))*c),
          Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Offset(JA+(Antrede_1*(i+1))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+Optrede_3)*c),
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3)*c),
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);

    for (var i = 1; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Line1);
    }

    for (var i = 0; i <= OptredeNT_3-1; i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c),
          Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i+1))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c),
          Line1);
      canvas.drawLine(
          Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i+1))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c),
          Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i+1))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);



    canvas.drawLine(Offset((JA).toMirror(M, MV), TinggiCanvasa - JB),
        Offset(JA +(Antrede_1)*c, TinggiCanvasa - JB), Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1+Optrede_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1+Optrede_1)*c),
        Offset((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
            TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1)),
        Line1);
    canvas.drawLine(
        Offset((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
            TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1)),
        Offset((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB),
        Line1);

//keterangan garis bawah
    canvas.drawLine(
        Offset((JA + (0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB +JK),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK-5),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+5),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB +JK),
        Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK),
        Line1);
    // atas
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB -JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Offset((JA + (PanjangT_1-PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);
    // kanan
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB),
        Offset((JA + JK+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK-5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA + JK+5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA + JK+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK-5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + JK+5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + JK+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + JK+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
        Line1);
    //keterangan
    //keterangan11
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    //keterangan14
    final Kete14 = Para(Text:LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    //keterangan15
    final Kete15 = Para(Text:PanjangT_3.toStringAsFixed(0) + " cm",Lebar: PanjangT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete15.toKetW(),
        Offset((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB -JK*3+(-TinggiT_1-TinggiT_2-TinggiT_3).toT_U_2B_a()));
    //keterangan13
    final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));
    //vertikal
    canvas.rotate(270/180*pi);
    //keterangan12
    final Kete12 =Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa + JB,
            JA + (PanjangT_1+LebarT)*c + JK));
//keterangan16
    final Kete16 =Para(Text:TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete16.toKetW(),
        Offset(-TinggiCanvasa + JB+(TinggiT_1)*c,
            JA + (PanjangT_1+LebarT)*c + JK));
//keterangan17
    final Kete17 =Para(Text:TinggiT_3.toStringAsFixed(0) + " cm",Lebar: TinggiT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete17.toKetW(),
        Offset(-TinggiCanvasa + JB+(TinggiT_1+TinggiT_2)*c,
            JA + (PanjangT_1+LebarT)*c + JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//tangga atas
class Gambar_Tangga_U_2B_2O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_b();
    final double TinggiCanvasa =TinggiCanvasG_2/2.9;
    final double JA = 5;
    final double JB = 20;
    canvas.scale(2.9);
    canvas.drawLine(
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(0.00)*c)),
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3)*c)),
        Line1);
    canvas.drawLine(
        Offset(((JA + (0.0)*c + JK).toMirror(M, MV)),
            (TinggiCanvasa - JB+(-Optrede_3)*c)),
        Offset((JA + (Antrede_3)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_3)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_3)*c)),
        Offset((JA + (Antrede_3)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_3)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_3*2)*c)),
        Offset((JA + (Antrede_3*2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_3*2.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2+(0.00)*c)),
        Offset((JA + (Antrede_3*2.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2 +(-Optrede_3)*c)),
        Line1);
    canvas.drawLine(
        Offset(((JA + (Antrede_3*2.5)*c + JK).toMirror(M, MV)),
            (TinggiCanvasa - JB/2+(-Optrede_3)*c)),
        Offset((JA + (Antrede_3*3.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2 +(-Optrede_3)*c)),
        Line1);
    double miringy =TinggiMiringAnakTangga_3*cosa_3;
    double miringx =TinggiMiringAnakTangga_3*sina_3;
    double tebalsy =15*cosa_3;
    double tebalsx =15*sina_3;
    canvas.drawLine(
        Offset((JA + (Antrede_3*2+tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_3*2+tebalsy)*c)),
        Offset((JA + (Antrede_3*2-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(tebalsy)*c)),
        Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-miringy)*c)),
        Offset((JA + (Antrede_3*2-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (-miringx/2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-miringy/2)*c)),
        Offset((JA + (Antrede_3*2-miringx/2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2-miringy/2)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(0.0)*c)),
        Offset((JA + (Antrede_3*2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(tebalsy)*c)),
        Offset((JA + (Antrede_3*2+tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_3*2+tebalsy)*c)),
        Line8);


    //keterangan
    //keterangan Antrede
    final Kete = Para(Text:Antrede_3.toStringAsFixed(0) + " cm",Lebar: Antrede_3*c,Posisi: TextAlign.center,font: 7);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA-JK/2+(Antrede_3*3)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB/2-JK +(-Optrede_3)*c)));
    //keterangan1 Optrede
    final Kete1 = Para(Text:Optrede_3.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+JK/2+(Antrede_3*1.8)*c).toMirror(M, MV) ,
            (TinggiCanvasa -JB/2+(-Optrede_3*4/5)*c)));
//keterangan2 0.5 tebal plat tangga
    final Kete2 = Para(Text:TinggiMiring5AnakTangga_3.toStringAsFixed(1) + " cm",font: 7);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+JK+(Antrede_3*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_3*2)*c)));
//keterangan3 Tebal pelat tangga pilih
    final Kete3 = Para(Text:(TebalPelatTanggaPilih_3).toStringAsFixed(1)+" cm",font: 7);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+JK*1.5+(Antrede_3*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_3*1.3)*c)));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_3O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)  {
    final double c = (1.0).toG_U_2B_c();
    final double JB = 90;
    final double JB2 = JB;
    final double JA = 60;
    final double TinggiCanvasa = TinggiCanvasG_3;
    double gaya =20;

    final arc1 = Path();
    //bawah
    arc1.moveTo((JA+(PanjangT_3*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_3*7/10)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_3*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20+(-TinggiT_3*7/10)*c),
        radius: Radius.circular(2),
        clockwise: false
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_3*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_3+(-TinggiT_3*7/10)*c),
        Offset((JA-4.5+(PanjangT_3*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_3+4.5+(-TinggiT_3*7/10)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_3+(-TinggiT_3*7/10)*c),
        Offset((JA-4.5+(PanjangT_3*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_3-4.5+(-TinggiT_3*7/10)*c),
        Line9);
    //DEF
    //keterangan MaFE
    final Kete2 = Para(Text:(-MaFE).toStringAsFixed(1) + " kNm",font: 16);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA-20+(PanjangT_3*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(-TinggiT_3*7/10)*c));
//keterangan beban FHFE
    final Kete5 = Para(Text:FHbFE.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-JK*2+(-TinggiT_3)*c));
//keterangan beban FVFE
    final Kete6 = Para(Text:FVbFE.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*2+(-TinggiT_3)*c));

    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(-TinggiT_3)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(0.0)*c),
        Line9);
    for (var i = 0; i <= (PanjangT_3/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_3-(PanjangT_3/(PanjangT_3/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_3/(PanjangT_3/20).toRound(0)*i)*c),
          Offset((JA+(PanjangT_3-(PanjangT_3/(PanjangT_3/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB-gaya+(-TinggiT_3/(PanjangT_3/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_3-(PanjangT_3/(PanjangT_3/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_3/(PanjangT_3/20).toRound(0)*i)*c),
          Offset((JA+5+(PanjangT_3-(PanjangT_3/(PanjangT_3/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_3/(PanjangT_3/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_3-(PanjangT_3/(PanjangT_3/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_3/(PanjangT_3/20).toRound(0)*i)*c),
          Offset((JA-5+(PanjangT_3-(PanjangT_3/(PanjangT_3/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_3/(PanjangT_3/20).toRound(0)*i)*c),
          Line9);
    }



//garis gaya //FE //H
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_3)*c),
        Offset((JA-JK-20+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_3)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_3)*c),
        Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(-TinggiT_3)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_3)*c),
        Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(-TinggiT_3)*c),
        Line9);

    //V
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_3)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(-TinggiT_3)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_3)*c),
        Offset((JA-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_3)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_3)*c),
        Offset((JA+5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_3)*c),
        Line9);

//keterangan beban terfaktor
    final Kete4 = Para(Text:BebanTerfaktorTangga_3.toStringAsFixed(1) + " kN/m",font: 16);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-80+(PanjangT_3)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_3/2)*c));

    //gambar bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(0.0)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(0.0)*c),
        Line9);
    for (var i = 0; i <= (LebarB_2/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_3+LebarB_2/(LebarB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA+(PanjangT_3+LebarB_2/(LebarB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-gaya+(0.0)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_3+LebarB_2/(LebarB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA+5+(PanjangT_3+LebarB_2/(LebarB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(0.0)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_3+LebarB_2/(LebarB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA-5+(PanjangT_3+LebarB_2/(LebarB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(0.0)*c),
          Line9);
    }

    //kanan
    arc1.moveTo((JA+(PanjangT_3+LebarB_2*7/10)*c).toMirror(M, MV),
        TinggiCanvasa-JB2+20+(0.0)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_3+LebarB_2*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(0.0)*c),
        radius: Radius.circular(2),
        clockwise: true
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(0.0)*c),
        Offset((JA+4.5+(PanjangT_3+LebarB_2*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40-4.5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(0.0)*c),
        Offset((JA+4.5+(PanjangT_3+LebarB_2*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+4.5+(0.0)*c),
        Line9);

    //JIH
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Offset((JA+JK+20+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Offset((JA+JK+5+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Offset((JA+JK+5+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-5+(0.0)*c),
        Line9);
    //V
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(0.0)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+20+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(0.0)*c),
        Offset((JA-5+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(0.0)*c),
        Offset((JA+5+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(0.0)*c),
        Line9);


//keterangan MaDE
    final Kete12 = Para(Text:MaDE.toStringAsFixed(1) + " kNm",font: 16);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset((JA-20+(PanjangT_3+LebarB_2*4/5)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+60+(0.0)*c));
//keterangan beban terfaktor
    final Kete13 = Para(Text:BebanTerfaktorBordes_2.toStringAsFixed(1) + " kN/m",font: 16,);
    canvas.drawParagraph(Kete13.toKetW(),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-gaya-30+(0.0)*c));
//keterangan beban FHDE
    final Kete16 = Para(Text:(-FHbDE).toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete16.toKetW(),
        Offset((JA+JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-JK*2+(0.0)*c));
//keterangan beban FVDE
    final Kete17 = Para(Text:FVbDE.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete17.toKetW(),
        Offset((JA+JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK*3+(0.0)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_5O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_e();
    final double s = 1;
    final double font = 16;
    final double JB = 50;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_3*sina_3;
    final double cc=cosa_3*cosa_3;
    final double TinggiCanvasa = TinggiCanvasG_5;
    //DEF
//tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(NFE*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3-NFE*cosa_3*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3-NEF*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NEF*s*cosa_3)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(NFE*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3-NFE*cosa_3*s)*c),
        Offset((JA+(PanjangT_3-NEF*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NEF*s*cosa_3)*c),
        Line9);


// keterangan NFE
    final Kete4 = Para(Text:(NFE).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-NFE*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3-NFE*cc*s)*c));
// keterangan NEF
    final Kete1 = Para(Text:(-NEF).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa -JB+(NEF*s*cc*2)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+NED*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+NED*s)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-NDE*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-NDE*s)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan NED
    final Kete5 = Para(Text:(NED).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*8+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NED*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(-NDE).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-NDE*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_6O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_f();
    final double s = 3;
    final double font = 16;
    final double JB = 60;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_3*sina_3;
    final double cc=cosa_3*cosa_3;
    final double TinggiCanvasa = TinggiCanvasG_6;
    //DEF
//tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(SFE*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3-SFE*cosa_3*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3-SEF*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(SEF*s*cosa_3)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(SFE*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3-SFE*cosa_3*s)*c),
        Offset((JA+(PanjangT_3-SEF*s*sina_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(SEF*s*cosa_3)*c),
        Line9);


// keterangan NFE
    final Kete4 = Para(Text:(SFE).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-SFE*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-SFE*cc*s)*c));
// keterangan NEF
    final Kete1 = Para(Text:(SEF).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa -JB+(SEF*s*cc*2)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-SED*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-SED*s)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+SDE*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+SDE*s)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan NED
    final Kete5 = Para(Text:(SED).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*4+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SED*s*2)*c));
// keterangan NDE
    final Kete6 = Para(Text:(SDE).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SDE*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_7O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_g();
    final double s = 6;
    final double font = 16;
    final double JB = 60;
    final double JA = 60;
    final double cs=cosa_3*sina_3;
    final double cc=cosa_3*cosa_3;
    final double TinggiCanvasa = TinggiCanvasG_7;
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(MAB*s*sina_3)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(-TinggiT_3-MAB*cosa_3*s)*c),//cc
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3-MBA*s*sina_3)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(0.0+MBA*cosa_3*s)*c),//cc
        Line9);

    var arc = Path();
    arc.moveTo(
      //kiri
        (JA+(-MFE*s*sina_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_3+MFE*cosa_3*s)*c);
    arc.quadraticBezierTo(
      //tengah
        (JA+(PanjangT_3-JFE*100*cosa_3+(MLEF-MEF)*s*sina_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB-(-TinggiT_3+JFE*100*sina_3-(MLEF-MEF)*s*cosa_3)*c,
        //kanan
        (JA+(PanjangT_3+MEF*s*sina_3)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-MEF*s*cosa_3)*c);
    canvas.drawPath(arc, Line10);

// keterangan MFE
    final Kete4 = Para(Text:(-MFE).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-MFE*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-TinggiT_3)*c));
// keterangan MEF
    final Kete1 = Para(Text:(MEF).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+(PanjangT_3+MEF*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*3+(0.0)*c));
// keterangan MLEF
    final Kete2 = Para(Text:(-MLEF).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset( (JA+(-JFE*cosa_3-(MLEF-MFE)*2*sina_3)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(JFE*sina_3-(MLEF-MFE)*2*cosa_3)*c,));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MED*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MED*s)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-MDE*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-MDE*s)*c),
        Offset((JA+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan MED
    final Kete5 = Para(Text:(-MED).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_3)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-MED*s)*c));
// keterangan MDE
    final Kete6 = Para(Text:(MDE).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_3+LebarB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-MDE*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//tangga tengah
class Gambar_Tangga_U_2B_8O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_h();
    final double TinggiCanvasa =TinggiCanvasG_8/2.9;
    final double JA = 5;
    final double JB = 20;
    canvas.scale(2.9);
    canvas.drawLine(
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(0.00)*c)),
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2)*c)),
        Line1);
    canvas.drawLine(
        Offset(((JA + (0.0)*c + JK).toMirror(M, MV)),
            (TinggiCanvasa - JB+(-Optrede_2)*c)),
        Offset((JA + (Antrede_2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_2)*c)),
        Offset((JA + (Antrede_2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_2*2)*c)),
        Offset((JA + (Antrede_2*2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_2*2.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2+(0.00)*c)),
        Offset((JA + (Antrede_2*2.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2 +(-Optrede_2)*c)),
        Line1);
    canvas.drawLine(
        Offset(((JA + (Antrede_2*2.5)*c + JK).toMirror(M, MV)),
            (TinggiCanvasa - JB/2+(-Optrede_2)*c)),
        Offset((JA + (Antrede_2*3.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2 +(-Optrede_2)*c)),
        Line1);
    double miringy =TinggiMiringAnakTangga_2*cosa_2;
    double miringx =TinggiMiringAnakTangga_2*sina_2;
    double tebalsy =15*cosa_2;
    double tebalsx =15*sina_2;
    canvas.drawLine(
        Offset((JA + (Antrede_2*2+tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_2*2+tebalsy)*c)),
        Offset((JA + (Antrede_2*2-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(tebalsy)*c)),
        Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-miringy)*c)),
        Offset((JA + (Antrede_2*2-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (-miringx/2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-miringy/2)*c)),
        Offset((JA + (Antrede_2*2-miringx/2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2-miringy/2)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(0.0)*c)),
        Offset((JA + (Antrede_2*2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(tebalsy)*c)),
        Offset((JA + (Antrede_2*2+tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_2*2+tebalsy)*c)),
        Line8);


    //keterangan
    //keterangan Antrede
    final Kete = Para(Text:Antrede_2.toStringAsFixed(0) + " cm",Lebar: Antrede_2*c,Posisi: TextAlign.center,font: 7);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA-JK/2+(Antrede_2*3)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB/2-JK +(-Optrede_2)*c)));
    //keterangan1 Optrede
    final Kete1 = Para(Text:Optrede_2.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+JK/2+(Antrede_2*1.8)*c).toMirror(M, MV) ,
            (TinggiCanvasa -JB/2+(-Optrede_2*4/5)*c)));
//keterangan2 0.5 tebal plat tangga
    final Kete2 = Para(Text:TinggiMiring5AnakTangga_2.toStringAsFixed(1) + " cm",font: 7);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+JK+(Antrede_2*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_2*2)*c)));
//keterangan3 Tebal pelat tangga pilih
    final Kete3 = Para(Text:(TebalPelatTanggaPilih_2).toStringAsFixed(1)+" cm",font: 7);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+JK*1.5+(Antrede_2*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_2*1.3)*c)));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_9O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)  {
    final double c = (1.0).toG_U_2B_i();
    final double font = 16;
    final double JB = 70;
    final double JB2 = JB;
    final double JA = 60+PanjangB_1*c;
    final double gaya =20;
    final double TinggiCanvasa= TinggiCanvasG_9;

    // gambar bordes bawah
    // bawah
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Offset((JA+(0-PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(0.0)*c),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(0.0)*c),
        Line9);
    for (var i = 0; i <= (PanjangB_1/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(-PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA+(-PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-gaya+(0.0)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(-PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA+5+(-PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(0.0)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(-PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA-5+(-PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(0.0)*c),
          Line9);
    }
    final arc1 = Path();


    //bawah
    arc1.moveTo((JA+(-PanjangB_1*7/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(0.0)*c);
    arc1.arcToPoint(
        Offset((JA+(-PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20+(0.0)*c),
        radius: Radius.circular(2),
        clockwise: false
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2+(0.0)*c),
        Offset((JA-4.5+(-PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2+4.5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2+(0.0)*c),
        Offset((JA-4.5+(-PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2-4.5+(0.0)*c),
        Line9);
    //GHIJ
    //keterangan MaGH
    final Kete2 = Para(Text:MaGH.toStringAsFixed(1) + " kNm",font:font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA-20+(-PanjangB_1*7/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(0.0)*c));
//keterangan beban FHGH
    final Kete5 = Para(Text:FHbGH.toStringAsFixed(1) + " kN",font:font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*5+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB*1.5-JK*2+(0.0)*c));
//keterangan beban FVGH
    final Kete6 = Para(Text:FVbGH.toStringAsFixed(1) + " kN",font:font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*5+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*2+(0.0)*c));
//keterangan beban terfaktor
    final Kete20 = Para(Text:BebanTerfaktorBordes_1.toStringAsFixed(1) + " kN/m",Lebar:PanjangB_1*c,Posisi: TextAlign.center,font:font);
    canvas.drawParagraph(Kete20.toKetW(),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB2-gaya-30+(0.0)*c));

    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(0.0)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(-TinggiT_2)*c),
        Line9);
    for (var i = 0; i <= (PanjangT_2/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_2/(PanjangT_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Offset((JA+(PanjangT_2/(PanjangT_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB-gaya+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2/(PanjangT_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Offset((JA+5+(PanjangT_2/(PanjangT_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2/(PanjangT_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Offset((JA-5+(PanjangT_2/(PanjangT_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Line9);
    }



//garis gaya //GH //H
    canvas.drawLine(
        Offset((JA-JK+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Offset((JA-JK-20+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Offset((JA-JK-5+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Offset((JA-JK-5+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(0.0)*c),
        Line9);

    //V
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
        Offset((JA-5+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
        Offset((JA+5+(-PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(0.0)*c),
        Line9);

//keterangan beban terfaktor
    final Kete4 = Para(Text:BebanTerfaktorTangga_2.toStringAsFixed(1) + " kN/m",Lebar: PanjangT_2*c,Posisi: TextAlign.center,font:font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_2/2)*c));



    //gambar bordes //atas
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(-TinggiT_2)*c),
        Line9);
    for (var i = 0; i <= (PanjangB_2/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_2+PanjangB_2/(PanjangB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_2)*c),
          Offset((JA+(PanjangT_2+PanjangB_2/(PanjangB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-gaya+(-TinggiT_2)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2+PanjangB_2/(PanjangB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_2)*c),
          Offset((JA+5+(PanjangT_2+PanjangB_2/(PanjangB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(-TinggiT_2)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2+PanjangB_2/(PanjangB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_2)*c),
          Offset((JA-5+(PanjangT_2+PanjangB_2/(PanjangB_2/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(-TinggiT_2)*c),
          Line9);
    }

    //kanan
    arc1.moveTo((JA+(PanjangT_2+PanjangB_2*5/10)*c).toMirror(M, MV),
        TinggiCanvasa-JB2+20+(-TinggiT_2)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_2+PanjangB_2*5/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_2)*c),
        radius: Radius.circular(2),
        clockwise: true
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2*5/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_2)*c),
        Offset((JA+4.5+(PanjangT_2+PanjangB_2*5/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40-4.5+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2*5/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_2)*c),
        Offset((JA+4.5+(PanjangT_2+PanjangB_2*5/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+4.5+(-TinggiT_2)*c),
        Line9);

    //JIH
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_2)*c),
        Offset((JA+JK+20+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_2)*c),
        Offset((JA+JK+5+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+5+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_2)*c),
        Offset((JA+JK+5+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-5+(-TinggiT_2)*c),
        Line9);
    //V
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+20+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_2)*c),
        Offset((JA-5+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_2)*c),
        Offset((JA+5+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(-TinggiT_2)*c),
        Line9);

//IJ
//keterangan MaJI
    final Kete12 = Para(Text:(-MaJI).toStringAsFixed(1) + " kNm",font:font);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset((JA-20+(PanjangT_2+PanjangB_2*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB2+60+(-TinggiT_2)*c));
//keterangan beban terfaktor
    final Kete13 = Para(Text:BebanTerfaktorBordes_2.toStringAsFixed(1) + " kN/m",Lebar:PanjangB_2*c,Posisi: TextAlign.center,font:font);
    canvas.drawParagraph(Kete13.toKetW(),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),TinggiCanvasa-JB2-gaya-30+(-TinggiT_2)*c));
//keterangan beban FHIJ
    final Kete16 = Para(Text:(-FHbJI).toStringAsFixed(1) + " kN",font:font);
    canvas.drawParagraph(Kete16.toKetW(),
        Offset((JA+JK+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),TinggiCanvasa-JB2*1.5-JK*2+(-TinggiT_2)*c));
//keterangan beban FVIJ
    final Kete17 = Para(Text:FVbJI.toStringAsFixed(1) + " kN",font:font);
    canvas.drawParagraph(Kete17.toKetW(),
        Offset((JA+JK+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK*3+(-TinggiT_2)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_11O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_k();
    final double s = 3;
    final double font = 16;
    final double JB = 30;
    final double JA = 60+PanjangB_1*c;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_2*sina_2;
    final double cc=cosa_2*cosa_2;
    final double TinggiCanvasa= TinggiCanvasG_11;
    //bordes bawah
    //bordes
    //GHIJ
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0)*c),
        Offset((JA+(0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0)*c),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0-NGH*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0-NGH*s)*c),
        Offset((JA+(0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0+NHG*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0+NHG*s)*c),
        Offset((JA+(0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0)*c),
        Line9);
    // keterangan NGH
    final Kete7 = Para(Text:(-NGH).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete7.toKetW(),
        Offset((JA-JK*4+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-NGH*s)*c));
// keterangan NHG
    final Kete8 = Para(Text:(NHG).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete8.toKetW(),
        Offset((JA-JK*1+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NHG*s)*c));

//tangga //HI
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(NHI*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NHI*cosa_2*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2-NIH*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-NIH*s*cosa_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(NHI*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NHI*cosa_2*s)*c),
        Offset((JA+(PanjangT_2-NIH*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-NIH*s*cosa_2)*c),
        Line9);


// keterangan NHI
    final Kete4 = Para(Text:(NHI).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*2+(-NAB*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-NHI*cc*s)*c));
// keterangan NIH
    final Kete1 = Para(Text:(NIH).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa -JB-JK*3+(-TinggiT_2+NIH*s*cc)*c));

    //bordes //IJ
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-NIJ*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-NIJ*s)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+NJI*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+NJI*s)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line9);
    // keterangan NIJ
    final Kete5 = Para(Text:(-NIJ).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*4+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(-TinggiT_2-NIJ*s)*c));
// keterangan NJI
    final Kete6 = Para(Text:(NJI).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+NJI*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_12O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c =(1.0).toG_U_2B_l();
    final s = 2;
    final double font =16;
    final double JB = 50;
    final double JA = 50+PanjangB_1*c;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_2*sina_2;
    final double cc=cosa_2*cosa_2;
    final double TinggiCanvasa= TinggiCanvasG_12;
    //bordes GH
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+SGH*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+SGH*s)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-SHG*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-SHG*s)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan NGH
    final Kete7 = Para(Text:(SGH).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete7.toKetW(),
        Offset((JA-JK*4+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-SBC*s)*c));
// keterangan NHG
    final Kete8 = Para(Text:(-SHG).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete8.toKetW(),
        Offset((JA-JK*3+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*2+(-SCB*s)*c));
//tangga HI
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-SHI*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SHI*cosa_2*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+SIH*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+SIH*s*cosa_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-SHI*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SHI*cosa_2*s)*c),
        Offset((JA+(PanjangT_2+SIH*s*sina_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+SIH*s*cosa_2)*c),
        Line9);

// keterangan SHI
    final Kete4 = Para(Text:(SHI).toStringAsFixed(1) + " kN",font:font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*2+(-SHI*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-SHI*cc*4)*c));
// keterangan SIH
    final Kete1 = Para(Text:(SIH).toStringAsFixed(1) + " kN",font:font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*6+(PanjangT_2+SIH*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(-TinggiT_2+SIH*4*cc)*c));

    //bordes IJ
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+SIJ*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+SIJ*s)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-SJI*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-SJI*s)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line9);
    // keterangan SIJ
    final Kete5 = Para(Text:(-SIJ).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_2+SIJ*s)*c));
// keterangan SJI
    final Kete6 = Para(Text:(SJI).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_2-SJI*s)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_13O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_m();
    final double s = 3;
    final double font = 16;
    final double JB = 40;
    final double JA = 50+PanjangB_1*c;
    final double cs=cosa_2*sina_2;
    final double cc=cosa_2*cosa_2;
    final double TinggiCanvasa= TinggiCanvasG_13;

    //bordes GH
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-MGH*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-MGH*s)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MHG*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MHG*s)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan MGH
    final Kete7 = Para(Text:(MGH).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete7.toKetW(),
        Offset((JA-JK*4+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-SBC*s)*c));
// keterangan MHG
    final Kete8 = Para(Text:(MHG).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete8.toKetW(),
        Offset((JA-JK*3+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SCB*s)*c));
//tangga HI
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-MHI*s*sina_2)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(-MHI*cosa_2*s)*c),//cc
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+MIH*s*sina_2)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(-TinggiT_2+MIH*cosa_2*s)*c),//cc
        Line9);

    var arc = Path();
    arc.moveTo(
      //kiri
        (JA+(-MHI*s*sina_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-MHI*cosa_2*s)*c);
    arc.quadraticBezierTo(
      //tengah
        (JA+(JHI*100*cosa_2-(MLHI-MHI)*s*sina_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-JHI*100*sina_2-(MLHI-MHI)*s*cosa_2)*c,
        //kanan
        (JA+(PanjangT_2+MIH*s*sina_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_2+MIH*s*cosa_2)*c);
    canvas.drawPath(arc, Line10);

// keterangan MHI
    final Kete4 = Para(Text:(-MHI).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-MHI*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(-MHI*cc*4)*c));
// keterangan MBA
    final Kete1 = Para(Text:(MIH).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*7+(PanjangT_2+MIH*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*3+(-TinggiT_2)*c));
// keterangan MLAB
    final Kete2 = Para(Text:(-MLHI).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset( (JA+(JHI*100*cosa_2-(MLHI-MHI)*2*sina_2)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-JHI*100*sina_2-(MLHI-MHI)*2*cosa_2)*c,));

    //bordes IJ
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-MIJ*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-MIJ*s)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+MJI*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+MJI*s)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line9);
    // keterangan MIJ
    final Kete5 = Para(Text:(MIJ).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-TinggiT_2-MIJ*s)*c));
// keterangan MJI
    final Kete6 = Para(Text:(-MJI).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_2+MJI*s)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//tangga bawah
class Gambar_Tangga_U_2B_14O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_n();
    final double TinggiCanvasa =TinggiCanvasG_14/2.9;
    final double JA = 5;
    final double JB = 20;
    canvas.scale(2.9);
    canvas.drawLine(
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(0.00)*c)),
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1)*c)),
        Line1);
    canvas.drawLine(
        Offset(((JA + (0.0)*c + JK).toMirror(M, MV)),
            (TinggiCanvasa - JB+(-Optrede_1)*c)),
        Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_1)*c)),
        Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_1*2)*c)),
        Offset((JA + (Antrede_1*2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2)*c)),
        Line1);
    canvas.drawLine(
        Offset((JA + (Antrede_1*2.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2+(0.00)*c)),
        Offset((JA + (Antrede_1*2.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2 +(-Optrede_1)*c)),
        Line1);
    canvas.drawLine(
        Offset(((JA + (Antrede_1*2.5)*c + JK).toMirror(M, MV)),
            (TinggiCanvasa - JB/2+(-Optrede_1)*c)),
        Offset((JA + (Antrede_1*3.5)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB/2 +(-Optrede_1)*c)),
        Line1);
    double miringy =TinggiMiringAnakTangga_1*cosa_1;
    double miringx =TinggiMiringAnakTangga_1*sina_1;
    double tebalsy =15*cosa_1;
    double tebalsx =15*sina_1;
    canvas.drawLine(
        Offset((JA + (Antrede_1*2+tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-Optrede_1*2+tebalsy)*c)),
        Offset((JA + (Antrede_1*2-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(tebalsy)*c)),
        Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-miringy)*c)),
        Offset((JA + (Antrede_1*2-miringx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2-miringy)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (-miringx/2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(-miringy/2)*c)),
        Offset((JA + (Antrede_1*2-miringx/2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2-miringy/2)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (0.0)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(0.0)*c)),
        Offset((JA + (Antrede_1*2)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2)*c)),
        Line8);
    canvas.drawLine(
        Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB+(tebalsy)*c)),
        Offset((JA + (Antrede_1*2+tebalsx)*c + JK).toMirror(M, MV),
            (TinggiCanvasa - JB +(-Optrede_1*2+tebalsy)*c)),
        Line8);



    //keterangan
    //keterangan Antrede
    final Kete = Para(Text:Antrede_1.toStringAsFixed(0) + " cm",Lebar: Antrede_1*c,Posisi: TextAlign.center,font: 7);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA-JK/2+(Antrede_1*3)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB/2-JK +(-Optrede_1)*c)));
    //keterangan1 Optrede
    final Kete1 = Para(Text:Optrede_1.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+JK/2+(Antrede_1*1.8)*c).toMirror(M, MV) ,
            (TinggiCanvasa -JB/2+(-Optrede_1*4/5)*c)));
//keterangan2 0.5 tebal plat tangga
    final Kete2 = Para(Text:TinggiMiring5AnakTangga_1.toStringAsFixed(1) + " cm",font: 7);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+JK+(Antrede_1*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_1*2)*c)));
//keterangan3 Tebal pelat tangga pilih
    final Kete3 = Para(Text:(TebalPelatTanggaPilih_1).toStringAsFixed(1)+" cm",font: 7);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+JK*1.5+(Antrede_1*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_1*1.3)*c)));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_15O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_o();

    final double JB = 50;
    final double JB2 = 50;
    final double JA = 60;
    double gaya =20;
    final double TinggiCanvasa = TinggiCanvasG_15;
    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);

    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(-TinggiT_1)*c),
        Line9);
    for (var i = 0; i <= (PanjangT_1/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
          Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB-gaya+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
          Offset((JA+5+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
          Offset((JA-5+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
          Line9);
    }

    //kurf atas tangga
    final arc1 = Path();
    // arc1.moveTo((JA+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_1*4/5)*c);
    // arc1.arcToPoint(
    //     Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
    //     radius: Radius.circular(2),
    //     clockwise: true
    // );
    // canvas.drawPath(arc1, Line10);
    // canvas.drawLine(
    //     Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
    //     Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1-5+(-TinggiT_1*4/5)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
    //     Offset((JA+20*sina_1+5+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
    //     Line9);

    //bawah
    arc1.moveTo((JA+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_1*3/10)*c);
    arc1.arcToPoint(
        Offset((JA+20*sina_1+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*3/10)*c),
        radius: Radius.circular(2),
        clockwise: false
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+20*sina_1+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*3/10)*c),
        Offset((JA+20*sina_1-4.5+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+4.5+(-TinggiT_1*3/10)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+20*sina_1+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*3/10)*c),
        Offset((JA+20*sina_1-4.5+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1-4.5+(-TinggiT_1*3/10)*c),
        Line9);

//garis gaya //AB //H
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Offset((JA-JK-20+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
        Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(0.0)*c),
        Line9);

    //V
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
        Offset((JA-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
        Offset((JA+5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(0.0)*c),
        Line9);

    //BA //H
    // canvas.drawLine(
    //   Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
    // Offset((JA+JK+20+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
    // Line9);
    // canvas.drawLine(
    //   Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
    // Offset((JA+JK+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(-TinggiT_1)*c),
    // Line9);
    // canvas.drawLine(
    //   Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
    // Offset((JA+JK+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(-TinggiT_1)*c),
    // Line9);

    //V
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(-TinggiT_1)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
    //     Offset((JA-5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_1)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
    //     Offset((JA+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_1)*c),
    //     Line9);

    //keterangan tangga A
    //  final Kete = Para(Text:"A",font: 20);
    // canvas.drawParagraph(Kete.toKetW(),
    //   Offset((JA-JK-10+(0.0)*c).toMirror(M, MV) , (TinggiCanvasa - JB +10+(0.0)*c)));
    //keterangan B
    // final Kete1 = Para(Text:"B",font: 20);
    // canvas.drawParagraph(Kete1.toKetW(),
    //   Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV) , (TinggiCanvasa - JB +10+(-TinggiT_1)*c)));
    //keterangan MaAB
    final Kete2 = Para(Text:MaAB.toStringAsFixed(1) + " kNm",font: 16);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA-20+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(-TinggiT_1*3/10)*c));
//keterangan MaBA
    //  final Kete3 = Para(Text:MaBA.toStringAsFixed(1) + " kNm",font: 20);
    // canvas.drawParagraph(Kete3.toKetW(),
    //   Offset((JA+20+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+5+(-TinggiT_1*4/5)*c));
//keterangan beban terfaktor
    final Kete4 = Para(Text:BebanTerfaktorTangga_1.toStringAsFixed(1) + " kN/m",font: 16);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-80+(PanjangT_1/2)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_1/2)*c));
//keterangan beban FHAB
    final Kete5 = Para(Text:FHbAB.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB*1.5-JK*2+(0.0)*c));
//keterangan beban FVAB
    final Kete6 = Para(Text:FVbAB.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*2+(0.0)*c));
//keterangan beban FHBA
    // final Kete7 = Para(Text:FHbBA.toStringAsFixed(1) + " kN",font: 20);
    // canvas.drawParagraph(Kete7.toKetW(),
    //   Offset((JA+JK*2+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB*1.5-JK*2+(-TinggiT_1)*c));
//keterangan beban FVBA
    // final Kete8 = Para(Text:FVbBA.toStringAsFixed(1) + " kN",font: 20);
    // canvas.drawParagraph(Kete8.toKetW(),
    //   Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*3+(-TinggiT_1)*c));

    //gambar bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(-TinggiT_1)*c),
        Line9);
    for (var i = 0; i <= (LebarB_1/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_1)*c),
          Offset((JA+(PanjangT_1+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-gaya+(-TinggiT_1)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_1+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_1)*c),
          Offset((JA+5+(PanjangT_1+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(-TinggiT_1)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_1+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_1)*c),
          Offset((JA-5+(PanjangT_1+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(-TinggiT_1)*c),
          Line9);
    }

    //kurf bordes kiri
    // arc1.moveTo((JA+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+20+(0.0)*c);
    // arc1.arcToPoint(
    //     Offset((JA+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+(0.0)*c),
    //     radius: Radius.circular(2),
    //     clockwise: false
    // );
    // canvas.drawPath(arc1, Line10);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+(0.0)*c),
    //     Offset((JA-4.5+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+4.5+(0.0)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+(0.0)*c),
    //     Offset((JA-4.5+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40-4.5+(0.0)*c),
    //     Line9);
    //kanan
    arc1.moveTo((JA+(PanjangT_1+LebarB_1*7/10)*c).toMirror(M, MV),
        TinggiCanvasa-JB2+20+(-TinggiT_1)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_1+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_1)*c),
        radius: Radius.circular(2),
        clockwise: true
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_1)*c),
        Offset((JA+4.5+(PanjangT_1+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40-4.5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_1)*c),
        Offset((JA+4.5+(PanjangT_1+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+4.5+(-TinggiT_1)*c),
        Line9);

    //garis bordes BC //H
    // canvas.drawLine(
    //     Offset((JA-JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+(0.0)*c),
    //     Offset((JA-JK-20+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+(0.0)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA-JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+(0.0)*c),
    //     Offset((JA-JK-5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+5+(0.0)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA-JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+(0.0)*c),
    //     Offset((JA-JK-5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2-5+(0.0)*c),
    //     Line9);

    //V
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK+(0.0)*c),
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK+20+(0.0)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK+(0.0)*c),
    //     Offset((JA-5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK+5+(0.0)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK+(0.0)*c),
    //     Offset((JA+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK+5+(0.0)*c),
    //     Line9);

    //CBH
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Offset((JA+JK+20+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Offset((JA+JK+5+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Offset((JA+JK+5+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-5+(-TinggiT_1)*c),
        Line9);
    //V
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+20+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_1)*c),
        Offset((JA-5+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_1)*c),
        Offset((JA+5+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(-TinggiT_1)*c),
        Line9);

    //keterangana bordes titik B
    // final Kete9 = Para(Text:"B",font: 20);
    //canvas.drawParagraph(Kete9.toKetW(),
    //  Offset((JA-JK-10+(PanjangT_1)*c).toMirror(M, MV) , (TinggiCanvasa - JB2 +10+(0.0)*c)));
    //titikC
    // final Kete10 = Para(Text:"C",font: 20);
    //canvas.drawParagraph(Kete10.toKetW(),
    //  Offset((JA+JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV) , (TinggiCanvasa - JB2 +10+(0.0)*c)));

    //keterangan MaBC
//    final Kete11 = Para(Text:MbBC.toStringAsFixed(1) + " kNm",font: 20);
    //   canvas.drawParagraph(Kete11.toKetW(),
    //     Offset((JA-70+(PanjangT_1+LebarB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+60+(0.0)*c));
//keterangan MaCB
    final Kete12 = Para(Text:(-MaCB).toStringAsFixed(1) + " kNm",font: 16);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset((JA-20+(PanjangT_1+LebarB_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB2+60+(-TinggiT_1)*c));
//keterangan beban terfaktor
    final Kete13 = Para(Text:BebanTerfaktorBordes_1.toStringAsFixed(1) + " kN/m",font: 16,);
    canvas.drawParagraph(Kete13.toKetW(),
        Offset((JA-80+(PanjangT_1+LebarB_1*9/10)*c).toMirror(M, MV),TinggiCanvasa-JB2-gaya-30+(-TinggiT_1)*c));
//keterangan beban FHBC
    // final Kete14 = Para(Text:FHbBC.toStringAsFixed(1) + " kN",font: 20);
    //canvas.drawParagraph(Kete14.toKetW(),
    //  Offset((JA-JK*9+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2*1.5-JK*2+(0.0)*c));
//keterangan beban FVBC
    // final Kete15 = Para(Text:FVbBC.toStringAsFixed(1) + " kN",font: 20);
    //canvas.drawParagraph(Kete15.toKetW(),
    //  Offset((JA-JK*7+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK*3+(0.0)*c));
//keterangan beban FHCBLebar
    final Kete16 = Para(Text:(-FHbCB).toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete16.toKetW(),
        Offset((JA+JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),TinggiCanvasa-JB2*1.5-JK*2+(-TinggiT_1)*c));
//keterangan beban FVCB
    final Kete17 = Para(Text:FVbCB.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete17.toKetW(),
        Offset((JA+JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK*3+(-TinggiT_1)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_17O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_q();
    final double s = 1;
    final double font = 16;
    final double JB = 30;
    final double JA = 70;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_17;
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-NAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-NAB*cosa_1*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+NBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NBA*s*cosa_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-NAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-NAB*cosa_1*s)*c),
        Offset((JA+(PanjangT_1+NBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NBA*s*cosa_1)*c),
        Line9);


// keterangan NAB
    final Kete4 = Para(Text:(NAB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-NAB*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-NAB*cc*s)*c));
// keterangan NBA
    final Kete1 = Para(Text:(-NBA).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa -JB+(-TinggiT_1+NBA*s*cc*2)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NBC*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NBC*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NCB*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan NBC
    final Kete5 = Para(Text:(NBC).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NBC*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(-NCB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NCB*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_18O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c =(1.0).toG_U_2B_r();
    final s = 4;
    final double font =16;
    final double JB = 40;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_18;
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-SAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SAB*cosa_1*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+SBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+SBA*s*cosa_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-SAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SAB*cosa_1*s)*c),
        Offset((JA+(PanjangT_1+SBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+SBA*s*cosa_1)*c),
        Line9);

// keterangan SAB
    final Kete4 = Para(Text:(SAB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*2+(-SAB*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-SAB*cc*4)*c));
// keterangan SBA
    final Kete1 = Para(Text:(SBA).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*6+(PanjangT_1+SBA*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(-TinggiT_1+SBA*4*cc)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-SBC*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-SBC*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+SCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+SCB*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan SBC
    final Kete5 = Para(Text:(SBC).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-SBC*s)*c));
// keterangan SCB
    final Kete6 = Para(Text:(SCB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-SCB*s)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_19O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_2B_s();
    final double s = 6;
    final double font = 18;
    final double JB = 20;
    final double JA = 60;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_19;
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-MAB*s*sina_1)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(-MAB*cosa_1*s)*c),//cc
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+MBA*s*sina_1)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(-TinggiT_1+MBA*cosa_1*s)*c),//cc
        Line9);

    var arc = Path();
    arc.moveTo(
      //kiri
        (JA+(-MAB*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-MAB*cosa_1*s)*c);
    arc.quadraticBezierTo(
      //tengah
        (JA+(JAB*100*cosa_1-(MLAB-MAB)*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-JAB*100*sina_1-(MLAB-MAB)*s*cosa_1)*c,
        //kanan
        (JA+(PanjangT_1+MBA*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+MBA*s*cosa_1)*c);
    canvas.drawPath(arc, Line10);

// keterangan MAB
    final Kete4 = Para(Text:(MAB).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-MAB*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-SAB*cc*4)*c));
// keterangan MBA
    final Kete1 = Para(Text:(-MBA).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*7+(PanjangT_1+MBA*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*3+(-TinggiT_1)*c));
// keterangan MLAB
    final Kete2 = Para(Text:(-MLAB).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset( (JA+(JAB*100*cosa_1-(MLAB-MAB)*2*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-JAB*100*sina_1-(MLAB-MAB)*2*cosa_1)*c,));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-MBC*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-MBC*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-MCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-MCB*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan MBC
    final Kete5 = Para(Text:(MBC).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-TinggiT_1-MBC*s)*c));
// keterangan MCB
    final Kete6 = Para(Text:(-MCB).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1+MCB*s)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

//diameter
//..atas
class Gambar_Tangga_U_2B_1D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_a();
    final double JA = 20+LebarT*c;
    final double JB = 110;
    final double TinggiCanvasa=TinggiCanvasD_1;

    //keterangan18 panjang bordes
    final Kete18 = Para(Text: PanjangB_2.toStringAsFixed(0) + " cm",Lebar: PanjangB_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete18.toKetW(),
        Offset((JA + (-PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8));

    //keterangan11 panjang tangga
    final Kete = Para(Text:PanjangT_3.toStringAsFixed(0) + " cm",Lebar: PanjangT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK*8));

    //keterangan13
    final Kete13 = Para(Text: Sudut_3.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_3 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_3 / 5)*c));

    //Gambar12
    var path = Path();
    path.moveTo((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB);

    for (var i = 0; i <= OptredeNT_3; i++) {
      path.lineTo((JA + (Antrede_3*(i - 1))*c).toMirror(M, MV) ,
          TinggiCanvasa - JB - Optrede_3*c* i);
      path.lineTo((JA + (Antrede_3 * (i))*c).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_3*c * i);
    }

    path.lineTo((JA + Antrede_3*c * (AntredeNT_3)).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_3*c * (OptredeNT_3 - 1));
    path.lineTo((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(Optrede_3)*c);
    canvas.drawPath(path, Line3);
    //bordes bawah
    path.moveTo((JA+(0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(Optrede_3)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(Optrede_3)*c);
    canvas.drawPath(path, Line3);

    //balok bawah
    path.moveTo((JA+ (-PanjangB_2-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_2+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_2+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0+hB)*c);
    path.lineTo((JA + (-PanjangB_2-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0+hB)*c);
    canvas.drawPath(path, Line3);

//..bawah
    canvas.drawLine(
        Offset((JA+(-PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Offset((JA+(-PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Line1);

    //tangga
    for (var i = 0; i <= OptredeNT_3-1; i++) {
      canvas.drawLine(
          Offset((JA+(Antrede_3*(i+0))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_3*(i+0))*c),
          Offset((JA+(Antrede_3*(i+0))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_3*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA+(Antrede_3*(i+0))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_3*(i+1))*c),
          Offset((JA+(Antrede_3*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_3*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_3)*c),
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_3+Optrede_3)*c),
        Line1);

    canvas.drawLine(
        Offset((JA+(PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_3+Optrede_3)*c),
        Offset((JA+(Antrede_3)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(Antrede_3)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(Optrede_3)*c),
        Line1);
    //bordes bawah
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    // canvas.drawLine(
    //     Offset((JA+(-PanjangB_2)*c).toMirror(M, MV),
    //         TinggiCanvasa - JB+(0.0)*c),
    //     Offset((JA+(-PanjangB_2)*c).toMirror(M, MV),
    //         TinggiCanvasa - JB+(Optrede_3)*c),
    //     Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(Optrede_3)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(Optrede_3)*c),
        Line1);

//garis bawah

    canvas.drawLine(
        Offset((JA-PanjangB_2*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8), Line1);
    canvas.drawLine(
        Offset((JA+ (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8-5),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8+5), Line1);
    canvas.drawLine(
        Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + JK*8),
        Offset((JA + PanjangT_3*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8), Line1);

    //garis kanan
    canvas.drawLine(
        Offset((JA + (PanjangT_3)*c + JK).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + (PanjangT_3)*c + JK).toMirror(M, MV),
            TinggiCanvasa - JB - TinggiT_3*c),
        Line1);


    //tulangan
    canvas.drawLine(
        Offset(JA + (-Selimut/10-Optrede_3*cosa_3-5*sina_3+TebalPelatBordesPilih_2/2*cosa_3)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_3*sina_3-5*cosa_3-TebalPelatBordesPilih_2/2*sina_3)*c),
        Offset(JA + (-Selimut/10-Optrede_3*cosa_3-5*sina_3)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_3*sina_3-5*cosa_3)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (-Selimut/10-Optrede_3*cosa_3-5*sina_3)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_3*sina_3-5*cosa_3)*c),
        Offset(JA + (-Selimut/10-Optrede_3*cosa_3)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_3*sina_3)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (-Selimut/10-Optrede_3*cosa_3)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_3*sina_3)*c),
        Offset(JA + (PanjangT_3-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_3+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10)*c,
            TinggiCanvasa - JB+(Optrede_3-Selimut/10)*c),
        Offset(JA + (PanjangT_3-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_3-Selimut/10+Optrede_3)*c),
        Line11);

    for (var i = 0; i <= PanjangTanggaMiring_3*100/SGT_3-1; i++) {
      canvas.drawCircle(
          Offset(JA + (4 * Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*i) * c,
              TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*i)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangTanggaMiring_3*100/SGT_3; i++) {
      canvas.drawCircle(
          Offset(JA + (2*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*i) * c,
              TinggiCanvasa - JB+(-3*Selimut/10+Optrede_3-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*i)*c),
          1.2, Line11);
    }
    //Diamater
    //TIJ
    canvas.drawLine(
        Offset(JA + (PanjangT_3*4/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_3*4/20+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_3*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_3*4/20+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_3*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_3*4/20+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_3*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_3*4/20+Selimut/10)*c),
        Line11);
    final KeteD1 = Para(Text:"D$Dtul_7-$Stul_7");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset(JA-JK*7 + (PanjangT_3*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_3*4/20+Selimut/10)*c));
    //TIH
    canvas.drawLine(
        Offset(JA + (PanjangT_3*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_3*16/20+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_3*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_3*16/20+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_3*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_3*16/20+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_3*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_3*16/20+Selimut/10)*c),
        Line11);
    final KeteD2 = Para(Text:"D$Dtul_8-$Stul_8");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset(JA-JK*7 + (PanjangT_3*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_3*16/20+Selimut/10)*c));
    //LHI
    canvas.drawLine(
        Offset(JA + (PanjangT_3*10/20-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_3*10/20-Selimut/10+Optrede_3)*c),
        Offset(JA+JK*2 + (PanjangT_3*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_3*10/20-Selimut/10+Optrede_3)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (PanjangT_3*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_3*10/20-Selimut/10+Optrede_3)*c),
        Offset(JA+JK*8 + (PanjangT_3*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_3*10/20-Selimut/10+Optrede_3)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_9-$Stul_9");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset(JA+JK*2 + (PanjangT_3*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_3*10/20-Selimut/10+Optrede_3)*c));
    // GIJ
    canvas.drawLine(
        Offset(JA+(4*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c),
        Offset(JA-JK*2+(4*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (-2*Selimut/10+Antrede_3+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c),
        Offset(JA-JK*1+(4*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB-JK*2+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c),
        Line11);

    canvas.drawLine(
        Offset(JA-JK*2+(4*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c),
        Offset(JA-JK*8+(4*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c),
        Line11);
    final KeteD4 = Para(Text:"D$Dtul_10-$Stul_10");
    canvas.drawParagraph(
        KeteD4.toKetW(),
        Offset(JA-JK*7+(4*Selimut/10+PanjangT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(-1*Selimut/10-TinggiT_3/(PanjangTanggaMiring_3*100/SGT_3)*(PanjangTanggaMiring_3*100/SGT_3/2).round())*c));

    //bordes HI
    canvas.drawLine(
        Offset(JA + (Selimut/10+Antrede_2*1/5)*c,
            TinggiCanvasa - JB +(Selimut/10-5)*c),
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10-5)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10)*c),
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10-5)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10)*c),
        Offset(JA + (-PanjangB_2-Selimut/10)*c,
            TinggiCanvasa - JB +(Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10)*c,
            TinggiCanvasa - JB + (-Selimut/10+Optrede_3)*c),
        Offset(JA + (-PanjangB_2-Selimut/10)*c,
            TinggiCanvasa - JB + (-Selimut/10+Optrede_3)*c),
        Line11);

    for (var i = 0; i <= PanjangB_2/SGBa_3; i++) {
      canvas.drawCircle(
          Offset(JA + (-PanjangB_2/(PanjangB_2/SGBa_3)*i) * c,
              TinggiCanvasa - JB+(Selimut/10*2)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangB_2/SGBa_3; i++) {
      canvas.drawCircle(
          Offset(JA + (-PanjangB_2/(PanjangB_2/SGBa_3)*i) * c,
              TinggiCanvasa - JB+(-2*Selimut/10+Optrede_3)*c),
          1.2, Line11);
    }
    //THI
    canvas.drawLine(
        Offset(JA + (-PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-Selimut/10+Optrede_3)*c),
        Offset(JA+JK*3 + (-PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*6 +(-Selimut/10+Optrede_3)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*3 + (-PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*6 +(-Selimut/10+Optrede_3)*c),
        Offset(JA+JK*8 + (-PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*6 +(-Selimut/10+Optrede_3)*c),
        Line11);
    final KeteD52 = Para(Text:"D$Dtul_4-$Stul_4");
    canvas.drawParagraph(
        KeteD52.toKetW(),
        Offset(JA+JK*3 + (-PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*4 +(-Selimut/10+Optrede_3)*c));
//TIH
    canvas.drawLine(
        Offset(JA + (-PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB + (Selimut/10)*c),
        Offset(JA-JK*1 + (-PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*2 + (Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*1 + (-PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*2 + (Selimut/10)*c),
        Offset(JA-JK*5 + (-PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*2 + (Selimut/10)*c),
        Line11);
    final KeteD62 = Para(Text:"D$Dtul_5-$Stul_5");
    canvas.drawParagraph(
        KeteD62.toKetW(),
        Offset(JA-JK*5 + (-PanjangB_2*4/20+Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 + (Selimut/10)*c));
//GHI
    canvas.drawLine(
        Offset(JA + (-PanjangB_2/(PanjangB_2/SGBa_3)*(PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+(-Selimut/10*2+Optrede_3)*c),
        Offset(JA +JK*2+ (-PanjangB_2/(PanjangB_2/SGBa_3)*(PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+JK*4+(-Selimut/10*2+Optrede_3)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (-PanjangB_2/(PanjangB_2/SGBa_3)*(PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+JK*4+(-Selimut/10*2+Optrede_3)*c),
        Offset(JA+JK*7 + (-PanjangB_2/(PanjangB_2/SGBa_3)*(PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+JK*4+(-Selimut/10*2+Optrede_3)*c),
        Line11);

    canvas.drawLine(
        Offset(JA + (-PanjangB_2/(PanjangB_2/SGBa_3)*(-1+PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+(2*Selimut/10)*c),
        Offset(JA+JK*1 + (-PanjangB_2/(PanjangB_2/SGBa_3)*(PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+JK*2+(-Selimut/10*2+Optrede_3)*c),
        Line11);
    final KeteD72 = Para(Text:"D$Dtul_6-$Stul_6");
    canvas.drawParagraph(
        KeteD72.toKetW(),
        Offset(JA+JK*3 + (-PanjangB_2/(PanjangB_2/SGBa_3)*(PanjangB_2/SGBa_3/2).round()) * c,
            TinggiCanvasa - JB+JK*2+(-Selimut/10*2+Optrede_3)*c));

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: TinggiT_3.toStringAsFixed(0) + " cm",Lebar: TinggiT_3*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(PanjangT_3)*c+JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_2D extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_b();
    final double JA = 70;
    final double JA2 = LebarCanvas/2+70;
    final double JB = 60;
    final double TinggiCanvasa=TinggiCanvasD_2;
    //judulgambar
    final Judul11 = Para(Text: "Balok Bordes ${bB.toText()}/${hB.toText()}",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //balok
    var path = Path();
    path.moveTo((JA+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path, Line3);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD1 = Para(Text:"$Stul_1 D-$Dtul_1");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD2 = Para(Text:"$Stul_2 D-$Dtul_2");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_3-$Stul_3");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset((JA-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul12 = Para(Text: "Tumpuan",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul12.toJudul(),
        Offset(((0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    //gambar 2
    //balok
    var path1 = Path();
    path1.moveTo((JA2+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path1.lineTo((JA2 + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path1, Line3);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA2+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD12 = Para(Text:"$Stul_1 D-$Dtul_1");
    canvas.drawParagraph(
        KeteD12.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD22 = Para(Text:"$Stul_2 D-$Dtul_2");
    canvas.drawParagraph(
        KeteD22.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA2-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD32 = Para(Text:"D$Dtul_3-${JBGmina_3.toText()}");
    canvas.drawParagraph(
        KeteD32.toKetW(),
        Offset((JA2-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete2 = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA2).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul122 = Para(Text: "Lapang",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul122.toJudul(),
        Offset((LebarCanvas/2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(bB)*c+JK));
    final Kete122 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete122.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA2+(bB)*c+JK));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//tengah
class Gambar_Tangga_U_2B_3D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_c();
    final double JA = 20+LebarT*c;
    final double JB = 110;
    final double TinggiCanvasa=TinggiCanvasD_3;

    //keterangan18 panjang bordes
    final Kete18 = Para(Text: PanjangB_1.toStringAsFixed(0) + " cm",Lebar: PanjangB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete18.toKetW(),
        Offset((JA + (-PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8));

    //keterangan11 panjang tangga
    final Kete = Para(Text:PanjangT_2.toStringAsFixed(0) + " cm",Lebar: PanjangT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK*8));

    //keterangan14 panjang bordes
    final Kete14 = Para(Text: PanjangB_2.toStringAsFixed(0) + " cm",Lebar: PanjangB_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset((JA + PanjangT_2*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8));

    //keterangan13
    final Kete13 = Para(Text: Sudut_2.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_2 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_2 / 5)*c));

    //Gambar12
    var path = Path();
    path.moveTo((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB);
    path.lineTo((JA + (-PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB - (0.0)*c);

    for (var i = 0; i <= OptredeNT_2; i++) {
      path.lineTo((JA + (Antrede_2*(i - 1))*c).toMirror(M, MV) ,
          TinggiCanvasa - JB - Optrede_2*c* i);
      path.lineTo((JA + (Antrede_2 * (i))*c).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_2*c * i);
    }
    path.lineTo((JA + (Antrede_2 * (AntredeNT_2)+PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_2*c * (OptredeNT_2));
    path.lineTo((JA + (Antrede_2 * (AntredeNT_2)+PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_2*c * (OptredeNT_2-1));
    path.lineTo((JA + Antrede_2*c * (AntredeNT_2)).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_2*c * (OptredeNT_2 - 1));
    path.lineTo((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(Optrede_2)*c);
    canvas.drawPath(path, Line3);
    //bordes bawah
    path.moveTo((JA+(0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(Optrede_2)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(Optrede_2)*c);
    canvas.drawPath(path, Line3);

    //balok atas
    path.moveTo((JA+ (PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_2)*c);
    path.lineTo((JA + (PanjangT_2+PanjangB_2+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_2)*c);
    path.lineTo((JA + (PanjangT_2+PanjangB_2+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_2+hB)*c);
    path.lineTo((JA + (PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_2+hB)*c);

    //balok bawah
    path.moveTo((JA+ (-PanjangB_1-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_1+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (-PanjangB_1+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0+hB)*c);
    path.lineTo((JA + (-PanjangB_1-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0+hB)*c);
    canvas.drawPath(path, Line3);
    //..atas
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+hB)*c),
        Offset((JA+(PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2+hB)*c),
        Line1);
//..bawah
    canvas.drawLine(
        Offset((JA+(-PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Offset((JA+(-PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+hB)*c),
        Line1);

    //tangga

    for (var i = 0; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA+(Antrede_2*(i+0))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_2*(i+0))*c),
          Offset((JA+(Antrede_2*(i+0))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_2*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA+(Antrede_2*(i+0))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_2*(i+1))*c),
          Offset((JA+(Antrede_2*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_2*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2)*c),
        Line1);

    canvas.drawLine(
        Offset((JA+(PanjangT_2+PanjangB_2-bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2+Optrede_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2+Optrede_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2+Optrede_2)*c),
        Offset((JA+(Antrede_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(Antrede_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(Optrede_2)*c),
        Line1);
    //bordes bawah
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    // canvas.drawLine(
    //     Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
    //         TinggiCanvasa - JB+(0.0)*c),
    //     Offset((JA+(-PanjangB_1)*c).toMirror(M, MV),
    //         TinggiCanvasa - JB+(Optrede_2)*c),
    //     Line1);
    canvas.drawLine(
        Offset((JA+(-PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(Optrede_2)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(Optrede_2)*c),
        Line1);

//garis bawah

    canvas.drawLine(
        Offset((JA-PanjangB_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8), Line1);
    canvas.drawLine(
        Offset((JA+ (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8-5),
        Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8+5), Line1);
    canvas.drawLine(
        Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + JK*8),
        Offset((JA + PanjangT_2*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8), Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_2*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8-5),
        Offset((JA + (PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8+5), Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_2*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8),
        Offset((JA + (PanjangT_2+PanjangB_2)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8), Line1);
    //garis kanan
    canvas.drawLine(
        Offset((JA + (PanjangT_2+PanjangB_2+bB/2)*c + JK).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + (PanjangT_2+PanjangB_2+bB/2)*c + JK).toMirror(M, MV),
            TinggiCanvasa - JB - TinggiT_2*c),
        Line1);


    //tulangan
    canvas.drawLine(
        Offset(JA - (Selimut/10+Optrede_2*cosa_2+5*sina_2-TebalPelatBordesPilih_1/2*cosa_2)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_2*sina_2-5*cosa_2-TebalPelatBordesPilih_1/2*sina_2)*c),
        Offset(JA - (Selimut/10+Optrede_2*cosa_2+5*sina_2)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_2*sina_2-5*cosa_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA - (Selimut/10+Optrede_2*cosa_2)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_2*sina_2)*c),
        Offset(JA - (Selimut/10+Optrede_2*cosa_2+5*sina_2)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_2*sina_2-5*cosa_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA - (Selimut/10+Optrede_2*cosa_2)*c,
            TinggiCanvasa - JB +(Selimut/10+Optrede_2*sina_2)*c),
        Offset(JA + (PanjangT_2-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10)*c,
            TinggiCanvasa - JB+(Optrede_2-Selimut/10)*c),
        Offset(JA + (PanjangT_2-Selimut/10+Optrede_2*cosa_2)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2-Optrede_2*sina_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_2-Selimut/10+Optrede_2*cosa_2)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2-Optrede_2*sina_2)*c),
        Offset(JA + (PanjangT_2-Selimut/10+Optrede_2*cosa_2+5*sina_2)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2-Optrede_2*sina_2+5*cosa_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_2-Selimut/10+Optrede_2*cosa_2+5*sina_2)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2-Optrede_2*sina_2+5*cosa_2)*c),
        Offset(JA + (PanjangT_2-Selimut/10+Optrede_2*cosa_2+5*sina_2-TebalPelatBordesPilih_2/2*cosa_2)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2-Optrede_2*sina_2+5*cosa_2+TebalPelatBordesPilih_2/2*sina_2)*c),
        Line11);

    for (var i = 0; i <= PanjangTanggaMiring_2*100/SGT_2-1; i++) {
      canvas.drawCircle(
          Offset(JA + (4 * Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*i) * c,
              TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*i)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangTanggaMiring_2*100/SGT_2; i++) {
      canvas.drawCircle(
          Offset(JA + (2*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*i) * c,
              TinggiCanvasa - JB+(-3*Selimut/10+Optrede_2-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*i)*c),
          1.2, Line11);
    }
    //Diamater
    //TEF
    canvas.drawLine(
        Offset(JA + (PanjangT_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2*4/20+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_2*4/20+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_2*4/20+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_2*4/20+Selimut/10)*c),
        Line11);
    final KeteD1 = Para(Text:"D$Dtul_17-$Stul_17");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset(JA-JK*7 + (PanjangT_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_2*4/20+Selimut/10)*c));
    //TFE
    canvas.drawLine(
        Offset(JA + (PanjangT_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2*16/20+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_2*16/20+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_2*16/20+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_2*16/20+Selimut/10)*c),
        Line11);
    final KeteD2 = Para(Text:"D$Dtul_18-$Stul_18");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset(JA-JK*7 + (PanjangT_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_2*16/20+Selimut/10)*c));
    //LEF
    canvas.drawLine(
        Offset(JA + (PanjangT_2*10/20-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_2*10/20-Selimut/10+Optrede_2)*c),
        Offset(JA+JK*2 + (PanjangT_2*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_2*10/20-Selimut/10+Optrede_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (PanjangT_2*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_2*10/20-Selimut/10+Optrede_2)*c),
        Offset(JA+JK*8 + (PanjangT_2*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_2*10/20-Selimut/10+Optrede_2)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_19-$Stul_19");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset(JA+JK*2 + (PanjangT_2*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_2*10/20-Selimut/10+Optrede_2)*c));
    // GEF
    canvas.drawLine(
        Offset(JA+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c),
        Offset(JA-JK*2+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (-2*Selimut/10+Antrede_2+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c),
        Offset(JA-JK*1+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB-JK*2+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c),
        Line11);

    canvas.drawLine(
        Offset(JA-JK*2+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c),
        Offset(JA-JK*8+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c),
        Line11);
    final KeteD4 = Para(Text:"D$Dtul_20-$Stul_20");
    canvas.drawParagraph(
        KeteD4.toKetW(),
        Offset(JA-JK*7+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c));


    //bordes FG
    canvas.drawLine(
        Offset(JA + (PanjangT_2-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2+Selimut/10)*c),
        Offset(JA + (PanjangT_2+PanjangB_2-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_2-Selimut/10-Antrede_2*3/5)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Offset(JA + (PanjangT_2+PanjangB_2-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_2-Selimut/10-Antrede_2*3/5)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Offset(JA + (PanjangT_2-Selimut/10-Antrede_2*3/5)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2+5)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_2-Selimut/10-Antrede_2*3/5)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2+5)*c),
        Offset(JA + (PanjangT_2-Selimut/10-Antrede_2*1/5)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2+5)*c),
        Line11);

    for (var i = 0; i <= PanjangB_2/SGBb_2; i++) {
      canvas.drawCircle(
          Offset(JA + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*i) * c,
              TinggiCanvasa - JB+(-TinggiT_2+Selimut/10*2)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangB_2/SGBb_2; i++) {
      canvas.drawCircle(
          Offset(JA + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*i) * c,
              TinggiCanvasa - JB+(-2*Selimut/10-TinggiT_2+Optrede_2)*c),
          1.2, Line11);
    }
    //TFG
    canvas.drawLine(
        Offset(JA + (PanjangT_2+PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_2+PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*4 +(-TinggiT_2+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_2+PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*4 +(-TinggiT_2+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_2+PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*4 +(-TinggiT_2+Selimut/10)*c),
        Line11);
    final KeteD5 = Para(Text:"D$Dtul_21-$Stul_21");
    canvas.drawParagraph(
        KeteD5.toKetW(),
        Offset(JA-JK*7 + (PanjangT_2+PanjangB_2*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*6 +(-TinggiT_2+Selimut/10)*c));
//TGF
    canvas.drawLine(
        Offset(JA + (PanjangT_2+PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Offset(JA-JK*2 + (PanjangT_2+PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_2+PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Offset(JA-JK*7 + (PanjangT_2+PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_2-Selimut/10+Optrede_2)*c),
        Line11);
    final KeteD6 = Para(Text:"D$Dtul_22-$Stul_22");
    canvas.drawParagraph(
        KeteD6.toKetW(),
        Offset(JA-JK*7 + (PanjangT_2+PanjangB_2*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_2-Selimut/10+Optrede_2)*c));
//GFG
    canvas.drawLine(
        Offset(JA + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB+(-TinggiT_2+Selimut/10*2)*c),
        Offset(JA +JK*2+ (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-TinggiT_2+Selimut/10*2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-TinggiT_2+Selimut/10*2)*c),
        Offset(JA+JK*7 + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-TinggiT_2+Selimut/10*2)*c),
        Line11);

    canvas.drawLine(
        Offset(JA + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(1+PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB+(-2*Selimut/10-TinggiT_2+Optrede_2)*c),
        Offset(JA+JK*1 + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB-JK*2+(-TinggiT_2+Selimut/10*2)*c),
        Line11);
    final KeteD7 = Para(Text:"D$Dtul_23-$Stul_23");
    canvas.drawParagraph(
        KeteD7.toKetW(),
        Offset(JA+JK*2 + (PanjangT_2+PanjangB_2/(PanjangB_2/SGBb_2)*(PanjangB_2/SGBb_2/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(-TinggiT_2+Selimut/10*2)*c));


    //bordes DE
    canvas.drawLine(
        Offset(JA + (Selimut/10+Antrede_2*1/5)*c,
            TinggiCanvasa - JB +(Selimut/10-5)*c),
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10-5)*c),
        Line11);

    canvas.drawLine(
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10)*c),
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10-5)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10+Antrede_2*3/5)*c,
            TinggiCanvasa - JB +(Selimut/10)*c),
        Offset(JA + (-PanjangB_1-Selimut/10)*c,
            TinggiCanvasa - JB +(Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (-Selimut/10)*c,
            TinggiCanvasa - JB + (-Selimut/10+Optrede_2)*c),
        Offset(JA + (-PanjangB_1-Selimut/10)*c,
            TinggiCanvasa - JB + (-Selimut/10+Optrede_2)*c),
        Line11);


    for (var i = 0; i <= PanjangB_1/SGBa_2; i++) {
      canvas.drawCircle(
          Offset(JA + (-PanjangB_1/(PanjangB_1/SGBa_2)*i) * c,
              TinggiCanvasa - JB+(Selimut/10*2)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangB_1/SGBa_2; i++) {
      canvas.drawCircle(
          Offset(JA + (-PanjangB_1/(PanjangB_1/SGBb_2)*i) * c,
              TinggiCanvasa - JB+(-2*Selimut/10+Optrede_2)*c),
          1.2, Line11);
    }
    //TDE
    canvas.drawLine(
        Offset(JA + (-PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-Selimut/10+Optrede_2)*c),
        Offset(JA+JK*3 + (-PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*6 +(-Selimut/10+Optrede_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*3 + (-PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*6 +(-Selimut/10+Optrede_2)*c),
        Offset(JA+JK*8 + (-PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*6 +(-Selimut/10+Optrede_2)*c),
        Line11);
    final KeteD52 = Para(Text:"D$Dtul_14-$Stul_14");
    canvas.drawParagraph(
        KeteD52.toKetW(),
        Offset(JA+JK*3 + (-PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +JK*4 +(-Selimut/10+Optrede_2)*c));
//TED
    canvas.drawLine(
        Offset(JA + (-PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB + (Selimut/10)*c),
        Offset(JA-JK*1 + (-PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*2 + (Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*1 + (-PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*2 + (Selimut/10)*c),
        Offset(JA-JK*5 + (-PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*2 + (Selimut/10)*c),
        Line11);
    final KeteD62 = Para(Text:"D$Dtul_15-$Stul_15");
    canvas.drawParagraph(
        KeteD62.toKetW(),
        Offset(JA-JK*5 + (-PanjangB_1*4/20+Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 + (Selimut/10)*c));
//GDE
    canvas.drawLine(
        Offset(JA + (-PanjangB_1/(PanjangB_1/SGBa_2)*(PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+(-Selimut/10*2+Optrede_2)*c),
        Offset(JA +JK*2+ (-PanjangB_1/(PanjangB_1/SGBa_2)*(PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+JK*4+(-Selimut/10*2+Optrede_2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (-PanjangB_1/(PanjangB_1/SGBa_2)*(PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+JK*4+(-Selimut/10*2+Optrede_2)*c),
        Offset(JA+JK*7 + (-PanjangB_1/(PanjangB_1/SGBa_2)*(PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+JK*4+(-Selimut/10*2+Optrede_2)*c),
        Line11);

    canvas.drawLine(
        Offset(JA + (-PanjangB_1/(PanjangB_1/SGBa_2)*(-1+PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+(2*Selimut/10)*c),
        Offset(JA+JK*1 + (-PanjangB_1/(PanjangB_1/SGBa_2)*(PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+JK*2+(-Selimut/10*2+Optrede_2)*c),
        Line11);
    final KeteD72 = Para(Text:"D$Dtul_16-$Stul_16");
    canvas.drawParagraph(
        KeteD72.toKetW(),
        Offset(JA+JK*3 + (-PanjangB_1/(PanjangB_1/SGBa_2)*(PanjangB_1/SGBa_2/2).round()) * c,
            TinggiCanvasa - JB+JK*2+(-Selimut/10*2+Optrede_2)*c));

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(PanjangT_2+PanjangB_2+bB/2)*c+JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_4D extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_d();
    final double JA = 70;
    final double JA2 = LebarCanvas/2+70;
    final double JB = 60;
    final double TinggiCanvasa=TinggiCanvasD_4;
    //judulgambar
    final Judul11 = Para(Text: "Balok Bordes ${bB.toText()}/${hB.toText()}",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //balok
    var path = Path();
    path.moveTo((JA+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path, Line3);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD1 = Para(Text:"$Stul_11 D-$Dtul_11");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD2 = Para(Text:"$Stul_12 D-$Dtul_12");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_13-$Stul_13");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset((JA-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul12 = Para(Text: "Tumpuan",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul12.toJudul(),
        Offset(((0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    //gambar 2
    //balok
    var path1 = Path();
    path1.moveTo((JA2+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path1.lineTo((JA2 + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path1, Line3);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA2+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD12 = Para(Text:"$Stul_11 D-$Dtul_11");
    canvas.drawParagraph(
        KeteD12.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD22 = Para(Text:"$Stul_12 D-$Dtul_12");
    canvas.drawParagraph(
        KeteD22.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA2-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD32 = Para(Text:"D$Dtul_13-${JBGmina_2.toText()}");
    canvas.drawParagraph(
        KeteD32.toKetW(),
        Offset((JA2-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete2 = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA2).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul122 = Para(Text: "Lapang",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul122.toJudul(),
        Offset((LebarCanvas/2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(bB)*c+JK));
    final Kete122 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete122.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA2+(bB)*c+JK));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_5D extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_e();
    final double JA = 70;
    final double JA2 = LebarCanvas/2+70;
    final double JB = 70;
    final double TinggiCanvasa=TinggiCanvasD_5;
    //judulgambar
    final Judul11 = Para(Text: "Balok Bordes ${bB.toText()}/${hB.toText()}",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //balok
    var path = Path();
    path.moveTo((JA+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path, Line3);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD1 = Para(Text:"$Stul_24 D-$Dtul_24");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD2 = Para(Text:"$Stul_25 D-$Dtul_25");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_26-$Stul_26");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset((JA-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul12 = Para(Text: "Tumpuan",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul12.toJudul(),
        Offset(((0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    //gambar 2
    //balok
    var path1 = Path();
    path1.moveTo((JA2+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path1.lineTo((JA2 + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path1, Line3);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA2+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD12 = Para(Text:"$Stul_24 D-$Dtul_24");
    canvas.drawParagraph(
        KeteD12.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD22 = Para(Text:"$Stul_25 D-$Dtul_25");
    canvas.drawParagraph(
        KeteD22.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA2-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD32 = Para(Text:"D$Dtul_26-${JBGminb_2.toText()}");
    canvas.drawParagraph(
        KeteD32.toKetW(),
        Offset((JA2-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete2 = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA2).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul122 = Para(Text: "Lapang",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul122.toJudul(),
        Offset((LebarCanvas/2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(bB)*c+JK));
    final Kete122 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete122.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA2+(bB)*c+JK));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//bawah
class Gambar_Tangga_U_2B_6D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_f();
    final double JA = 50;
    final double JB = 50;
    final double TinggiCanvasa=TinggiCanvasD_6;
    final double _teratas=teratas=="Antrede"?1:0;
    final double Antrede_1=AntredeR_1;
    final double Optrede_1=OptredeR_1;
    final double xT_1=TebalPelatTanggaPilih_1/sina_1;
    final double yT_1=TebalPelatTanggaPilih_1/sina_1+(Optrede_1-TebalPelatBordesPilih_1)*cosa_1*sina_1;
    final double yB_1=TebalPelatBordesPilih_1;
    final double STx = (Selimut/10)/sina_1;//jarak X tulangan tangga bawah
    final double SATx = Antrede_1+(Selimut/10)/sina_1-(Selimut/10)/sina_1*cosa_1;//jarak X tulangan tangga atas kiri
    final double SBTx=-(Selimut/10)/sina_1+(Selimut/10)/sina_1*cosa_1;//jarak X tulangan tangga atas kanan
    final double SBy=(Selimut/10);//jarak tulangan bordes
    final double SDB=2;//jarak bulat
    final double SDBx=2*sina_1;//jarak bulat x
    final double SDBy=2*cosa_1;//jarak bulat y

    //keterangan11 panjang tangga
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //keterangan14 panjang bordes
    final Kete14 = Para(Text: PanjangB_1.toStringAsFixed(0) + " cm",Lebar: PanjangB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK));

    //keterangan13
    final Kete13 = Para(Text: Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

    //Gambar12
    var path = Path();
    path.moveTo((JA).toMirror(M, MV), TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1; i++) {
      path.lineTo((JA + (Antrede_1*(i - 1))*c).toMirror(M, MV) ,
          TinggiCanvasa - JB - Optrede_1*c* i);
      path.lineTo((JA + (Antrede_1 * (i))*c).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * i);
    }
    path.lineTo((JA + (Antrede_1 * (AntredeNT_1)+PanjangB_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1));
    path.lineTo((JA + (Antrede_1 * (AntredeNT_1)+PanjangB_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB + ((-Optrede_1*(OptredeNT_1))+yB_1)*c);
    path.lineTo((JA + (Antrede_1* (AntredeNT_1-_teratas)+yT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB + ((-Optrede_1*OptredeNT_1)+yB_1)*c);
    path.lineTo((JA + (xT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    //balok
    path.moveTo((JA+ (PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c);
    path.lineTo((JA + (PanjangT_1+PanjangB_1+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1)*c);
    path.lineTo((JA + (PanjangT_1+PanjangB_1+bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+hB)*c);
    path.lineTo((JA + (PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+hB)*c);
    canvas.drawPath(path, Line3);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+hB)*c),
        Offset((JA+(PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1+bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+hB)*c),
        Line1);

    //tangga
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(
          Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i))*c),
          Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA+(Antrede_1*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Offset((JA+(Antrede_1*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);

    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1)*c),
        Offset((JA+(xT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(xT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line1);

//garis bawah
    canvas.drawLine(
        Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK), Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK-5),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK+5), Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Offset((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK), Line1);
    //garis kanan
    canvas.drawLine(
        Offset((JA + (PanjangT_1+PanjangB_1+bB/2)*c + JK).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + (PanjangT_1+PanjangB_1+bB/2)*c + JK).toMirror(M, MV),
            TinggiCanvasa - JB - TinggiT_1*c),
        Line1);

    //tulangan
    canvas.drawLine(
        Offset(JA + (STx)*c, TinggiCanvasa - JB+(0.0)*c),
        Offset(JA + (PanjangT_1+SATx+(-Antrede_1*_teratas))*c, TinggiCanvasa - JB +(-TinggiT_1+SBy)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(xT_1-STx)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy)*c),
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx+yB_1/2/sina_1*cosa_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy-yB_1/2)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx+yB_1/2/sina_1*cosa_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy-yB_1/2)*c),
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx+yB_1/2/sina_1*cosa_1+4*SDBx*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy-yB_1/2+4*SDBx*cosa_1)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx+yB_1/2/sina_1*cosa_1+4*SDBx*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy-yB_1/2+4*SDBx*cosa_1)*c),
        Offset((JA+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx+yB_1/4/sina_1*cosa_1+4*SDBx*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+yB_1-SBy-yB_1/4+4*SDBx*cosa_1)*c),
        Line11);


    for (var i = 0; i <= (PanjangTanggaMiring_1*100/SGT_1); i++) {
      canvas.drawCircle(
          Offset(JA + (STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*i) * c,
              TinggiCanvasa - JB+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*i)*c),
          1.2, Line11);
    }
    for (var i = 0; i <= PanjangTanggaMiring_1*100/SGT_1; i++) {
      canvas.drawCircle(
          Offset(JA + (xT_1-STx-SDBx+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))/(PanjangTanggaMiring_1*100/SGT_1)*i) * c,
              TinggiCanvasa - JB+(-SDBy+(-TinggiT_1+yB_1-SBy)/(PanjangTanggaMiring_1*100/SGT_1)*i)*c),
          1.2, Line11);
    }
    //Diamater
    // GAB
    canvas.drawLine(
        Offset(JA+ (STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Offset(JA-JK*2+(STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Line11);
    canvas.drawLine(
        Offset(JA +(xT_1-STx-SDBx+(PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB+(-SDBy+(-TinggiT_1+yB_1-SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Offset(JA-JK*1+(STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*2+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2+(STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Offset(JA-JK*8+(STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Line11);
    final KeteD4 = Para(Text:"D$Dtul_30-$Stul_30");
    canvas.drawParagraph(
        KeteD4.toKetW(),
        Offset(JA-JK*7+(STx+SDBx+(PanjangT_1-STx+SATx+(-Antrede_1*_teratas))/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(SDBy+(-TinggiT_1+SBy)/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c));

    //TAB
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SATx+(-Antrede_1*_teratas))*4/20*c,
            TinggiCanvasa - JB +(-TinggiT_1+SBy)*4/20*c),
        Offset(JA-JK*2 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*4/20*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*4/20*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*4/20*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*4/20*c),
        Offset(JA-JK*7 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*4/20*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*4/20*c),
        Line11);
    final KeteD1 = Para(Text:"D$Dtul_27-$Stul_27");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset(JA-JK*7 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*4/20*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_1+SBy)*4/20*c));
    //TBA
    canvas.drawLine(
        Offset(JA-JK*0 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*16/20*c,
            TinggiCanvasa - JB-JK*0 +(-TinggiT_1+SBy)*16/20*c),
        Offset(JA-JK*2 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*16/20*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*16/20*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*16/20*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*16/20*c),
        Offset(JA-JK*7 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*16/20*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*16/20*c),
        Line11);
    final KeteD2 = Para(Text:"D$Dtul_28-$Stul_28");
    canvas.drawParagraph(
        KeteD2.toKetW(),
      Offset(JA-JK*7 + (PanjangT_1+SATx+(-Antrede_1*_teratas))*16/20*c,
          TinggiCanvasa - JB-JK*6 +(-TinggiT_1+SBy)*16/20*c),
    );
    //LAB
    canvas.drawLine(
        Offset((JA+JK*0+((xT_1-STx)*2+PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))*10/20*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*0+(-TinggiT_1+yB_1-SBy)*10/20*c),
        Offset((JA+JK*2+((xT_1-STx)*2+PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))*10/20*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*4+(-TinggiT_1+yB_1-SBy)*10/20*c),
        Line11);
    canvas.drawLine(
        Offset((JA+JK*2+((xT_1-STx)*2+PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))*10/20*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*4+(-TinggiT_1+yB_1-SBy)*10/20*c),
        Offset((JA+JK*8+((xT_1-STx)*2+PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))*10/20*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*4+(-TinggiT_1+yB_1-SBy)*10/20*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_29-$Stul_29");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset((JA+JK*2+((xT_1-STx)*2+PanjangT_1-Antrede_1*_teratas+yT_1+SBTx-(xT_1-STx))*10/20*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*2+(-TinggiT_1+yB_1-SBy)*10/20*c),
    );

    //bordes BC
    // atas
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy*(1-_teratas))*c,
            TinggiCanvasa - JB +(-TinggiT_1+SBy)*c),
        Offset(JA + (PanjangT_1+PanjangB_1-SBy)*c,
            TinggiCanvasa - JB +(-TinggiT_1+SBy)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy)*c*(1-_teratas),
            TinggiCanvasa - JB +(-TinggiT_1+SBy)*c*(1-_teratas)),
        Offset(JA + (PanjangT_1+SBy)*c*(1-_teratas),
            TinggiCanvasa - JB +(-TinggiT_1+SBy+yB_1+Optrede_1*2/4)*c*(1-_teratas)),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy)*c*(1-_teratas),
            TinggiCanvasa - JB +(-TinggiT_1+SBy+yB_1+Optrede_1*2/4)*c*(1-_teratas)),
        Offset(JA + (PanjangT_1+SBy+SDBx*4)*c*(1-_teratas),
            TinggiCanvasa - JB +(-TinggiT_1+SBy+yB_1+Optrede_1*2/4)*c*(1-_teratas)),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy+SDBx*4)*c*(1-_teratas),
            TinggiCanvasa - JB +(-TinggiT_1+SBy+yB_1+Optrede_1*2/4)*c*(1-_teratas)),
        Offset(JA + (PanjangT_1+SBy+SDBx*4)*c*(1-_teratas),
            TinggiCanvasa - JB +(-TinggiT_1+SBy+yB_1+Optrede_1*0)*c*(1-_teratas)),
        Line11);

    //bawah
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy-Antrede_1*3/5+Antrede_1*(1-_teratas))*c,
            TinggiCanvasa - JB + (-TinggiT_1-SBy+yB_1)*c),
        Offset(JA + (PanjangT_1+PanjangB_1-SBy)*c,
            TinggiCanvasa - JB + (-TinggiT_1-SBy+yB_1)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy-Antrede_1*3/5+Antrede_1*(1-_teratas))*c,
            TinggiCanvasa - JB + (-TinggiT_1-SBy+yB_1)*c),
        Offset(JA + (PanjangT_1+SBy-Antrede_1*3/5+Antrede_1*(1-_teratas))*c,
            TinggiCanvasa - JB + (-TinggiT_1-SBy+yB_1+SDBx*4)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy-Antrede_1*3/5+Antrede_1*(1-_teratas))*c,
            TinggiCanvasa - JB + (-TinggiT_1-SBy+yB_1+SDBx*4)*c),
        Offset(JA + (PanjangT_1+SBy-Antrede_1*1/5+Antrede_1*(1-_teratas))*c,
            TinggiCanvasa - JB + (-TinggiT_1-SBy+yB_1+SDBx*4)*c),
        Line11);


    for (var i = 0; i <= PanjangB_1/SGBb_1-1; i++) {
      canvas.drawCircle(
          Offset(JA+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1).round()*i)*c,
              TinggiCanvasa - JB +(SDB-TinggiT_1+SBy)*c),
          1.2, Line11);
    }

    for (var i = 3*(1-_teratas); i <= PanjangB_1/SGBb_1-1; i++) {
      canvas.drawCircle(
          Offset(JA+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1).round()*i)*c,
              TinggiCanvasa - JB +(-SDB-TinggiT_1-SBy+yB_1)*c),
          1.2, Line11);
    }
    //TBC
    canvas.drawLine(
        Offset(JA-JK*0 + (PanjangT_1+PanjangB_1*4/20-SBy)*c,
            TinggiCanvasa - JB-JK*0 +(-TinggiT_1+SBy)*c),
        Offset(JA-JK*2 + (PanjangT_1+PanjangB_1*4/20-SBy)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1+PanjangB_1*4/20-SBy)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*c),
        Offset(JA-JK*7 + (PanjangT_1+PanjangB_1*4/20-SBy)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1+SBy)*c),
        Line11);
    final KeteD5 = Para(Text:"D$Dtul_31-$Stul_31");
    canvas.drawParagraph(
        KeteD5.toKetW(),
      Offset(JA-JK*7 + (PanjangT_1+PanjangB_1*4/20-SBy)*c,
          TinggiCanvasa - JB-JK*6 +(-TinggiT_1+SBy)*c),
    );
//TCB
    canvas.drawLine(
        Offset(JA -JK*0+ (PanjangT_1+PanjangB_1*16/20-SBy)*c,
            TinggiCanvasa - JB+JK*0 + (-TinggiT_1-SBy+yB_1)*c),
        Offset(JA -JK*2+ (PanjangT_1+PanjangB_1*16/20-SBy)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1-SBy+yB_1)*c),
        Line11);
    canvas.drawLine(
        Offset(JA -JK*2+ (PanjangT_1+PanjangB_1*16/20-SBy)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1-SBy+yB_1)*c),
        Offset(JA -JK*7+ (PanjangT_1+PanjangB_1*16/20-SBy)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1-SBy+yB_1)*c),
        Line11);
    final KeteD6 = Para(Text:"D$Dtul_32-$Stul_32");
    canvas.drawParagraph(
        KeteD6.toKetW(),
      Offset(JA -JK*7+ (PanjangT_1+PanjangB_1*16/20-SBy)*c,
          TinggiCanvasa - JB+JK*2 + (-TinggiT_1-SBy+yB_1)*c),
    );
//GBC
    canvas.drawLine(
        Offset(JA + (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round())* c,
            TinggiCanvasa - JB+(SDB-TinggiT_1+SBy)*c),
        Offset(JA +JK*2+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round())* c,
            TinggiCanvasa - JB-JK*4+(SDB-TinggiT_1+SBy)*c),
        Line11);
    canvas.drawLine(
        Offset(JA +JK*2+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round())* c,
            TinggiCanvasa - JB-JK*4+(SDB-TinggiT_1+SBy)*c),
        Offset(JA +JK*7+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round())* c,
            TinggiCanvasa - JB-JK*4+(SDB-TinggiT_1+SBy)*c),
        Line11);

    canvas.drawLine(
        Offset(JA+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2-2).round())*c,
            TinggiCanvasa - JB +(-SDB-TinggiT_1-SBy+yB_1)*c),
        Offset(JA +JK*1+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round())* c,
            TinggiCanvasa - JB-JK*2+(SDB-TinggiT_1+SBy)*c),
        Line11);
    final KeteD7 = Para(Text:"D$Dtul_33-$Stul_33");
    canvas.drawParagraph(
        KeteD7.toKetW(),
        Offset(JA +JK*2+ (PanjangT_1+SBy+SDB+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round())* c,
            TinggiCanvasa - JB-JK*6+(SDB-TinggiT_1+SBy)*c)
    );

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(PanjangT_1+PanjangB_1+bB/2)*c+JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_2B_7D extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_2B_g();
    final double JA = 70;
    final double JA2 = LebarCanvas/2+70;
    final double JB = 70;
    final double TinggiCanvasa=TinggiCanvasD_7;
    //judulgambar
    final Judul11 = Para(Text: "Balok Bordes ${bB.toText()}/${hB.toText()}",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //balok
    var path = Path();
    path.moveTo((JA+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path.lineTo((JA + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path.lineTo((JA + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path, Line3);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD1 = Para(Text:"$Stul_34 D-$Dtul_34");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD2 = Para(Text:"$Stul_35 D-$Dtul_35");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset((JA-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_36-$Stul_36");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset((JA-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul12 = Para(Text: "Tumpuan",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul12.toJudul(),
        Offset(((0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    //gambar 2
    //balok
    var path1 = Path();
    path1.moveTo((JA2+ (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(0.0)*c);
    path1.lineTo((JA2 + (bB)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    path1.lineTo((JA2 + (0.0)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-hB)*c);
    canvas.drawPath(path1, Line3);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
//garis selimut
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Offset((JA2+(0.0+selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    canvas.drawLine(
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-selimutB/10)*c),
        Offset((JA2+(bB-selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB+selimutB/10)*c),
        Line11);
    //tulangan dalam
    //atas
    for (var i = 0; i <= NBTa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-hB+selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBTa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2-JB+(-hB+selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-hB+selimutB/10*1.2)*c),
        Line11);
    final KeteD12 = Para(Text:"$Stul_34 D-$Dtul_34");
    canvas.drawParagraph(
        KeteD12.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3-JB+(-hB+selimutB/10*1.2)*c));
    //bawah
    for (var i = 0; i <= NBLa_1-1; i++) {
      canvas.drawCircle(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          1.2*c, Line11);
      canvas.drawLine(
          Offset((JA2+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-selimutB/10*1.2)*c),
          Offset((JA2-JK*1+(selimutB/10*1.2+(bB-2*selimutB/10*1.2)/(NBLa_1-1)*i)*c).toMirror(M, MV),
              TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
          Line11);
    }
    canvas.drawLine(
        Offset((JA2-JK*2+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Offset((JA2-JK*1+(bB-selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*2- JB+(-selimutB/10*1.2)*c),
        Line11);
    final KeteD22 = Para(Text:"$Stul_35 D-$Dtul_35");
    canvas.drawParagraph(
        KeteD22.toKetW(),
        Offset((JA2-JK*7+(selimutB/10*1.2)*c).toMirror(M, MV),
            TinggiCanvasa -JK*3- JB+(-selimutB/10*1.2)*c));
//geser
    canvas.drawLine(
        Offset((JA2+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Offset((JA2-JK*1+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB*8/10+selimutB/10)*c),
        Line11);
    final KeteD32 = Para(Text:"D$Dtul_36-${JBGmina_1.toText()}");
    canvas.drawParagraph(
        KeteD32.toKetW(),
        Offset((JA2-JK*7+(selimutB/10)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-hB*8/10+selimutB/10)*c));

    //garis keterangan
    canvas.drawLine(
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA2+JK+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-hB)*c),
        Line1);
    canvas.drawLine(
        Offset((JA2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Offset((JA2+(bB)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(0.0)*c),
        Line1);
    //keterangan11 panjang tangga
    final Kete2 = Para(Text:bB.toStringAsFixed(0) + " cm",Lebar: bB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA2).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //sub judul
    final Judul122 = Para(Text: "Lapang",Lebar: LebarCanvas/2);
    canvas.drawParagraph(Judul122.toJudul(),
        Offset((LebarCanvas/2+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK*3+(0.0)*c));

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA+(bB)*c+JK));
    final Kete122 = Para(Text: hB.toStringAsFixed(0) + " cm",Lebar: hB*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete122.toKetW(),
        Offset(-TinggiCanvasa+JB,
            JA2+(bB)*c+JK));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

Future PdfGambar1_U_2B() async {
  final double c = (1.0).toT_U_2B_a();
  final int r=4;
  final int x=340*r;
  final int y= ((TinggiCanvasP)*r).toInt();
  final int TinggiCanvasa = (y/r).toInt();
  final recorder = ui.PictureRecorder();
  final double JB=50;
  final double JA=20<PanjangT_3-PanjangT_1?PanjangT_3-PanjangT_1:20;
  final double JK = 10;
  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(x.toDouble(), y.toDouble())));
  canvas.scale(r.toDouble());
  final Line1 = Line5;
  final Line3 = Line12;

  //keterangan ABCDEFGHIJ
  final KeteALP_A = Para(Text:"A");
  canvas.drawParagraph(KeteALP_A.toKetB(),
      Offset(
          (JA+(0.0)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK +(-Optrede_1*2)*c));
  final KeteALP_B = Para(Text:"B");
  canvas.drawParagraph(KeteALP_B.toKetB(),
      Offset(
          (JA+(PanjangT_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB+JK+(-TinggiT_1)*c));
  final KeteALP_C = Para(Text:"C");
  canvas.drawParagraph(KeteALP_C.toKetB(),
      Offset(
          (JA-JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB+JK+(-TinggiT_1)*c));
  final KeteALP_D = Para(Text:"D");
  canvas.drawParagraph(KeteALP_D.toKetB(),
      Offset(
          (JA+JK/2+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK/2+(-TinggiT_1)*c));
  final KeteALP_E = Para(Text:"E");
  canvas.drawParagraph(KeteALP_E.toKetB(),
      Offset(
          (JA+JK*2+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK/2+(-TinggiT_1)*c));
  final KeteALP_F = Para(Text:"F");
  canvas.drawParagraph(KeteALP_F.toKetB(),
      Offset(
          (JA+JK/2+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK/2+(-TinggiT_1-TinggiT_2)*c));
  final KeteALP_G = Para(Text:"G");
  canvas.drawParagraph(KeteALP_G.toKetB(),
      Offset(
          (JA+JK*2+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK/2+(-TinggiT_1-TinggiT_2)*c));
  final KeteALP_H = Para(Text:"H");
  canvas.drawParagraph(KeteALP_H.toKetB(),
      Offset(
          (JA-JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK*5/3+(-TinggiT_1-TinggiT_2)*c));
  final KeteALP_I = Para(Text:"I");
  canvas.drawParagraph(KeteALP_I.toKetB(),
  Offset(
      (JA+(PanjangT_1)*c).toMirror(M, MV) ,
      TinggiCanvasa - JB-JK*5/3+(-TinggiT_1-TinggiT_2)*c));
  final KeteALP_J = Para(Text:"J");
  canvas.drawParagraph(KeteALP_J.toKetB(),
      Offset(
          (JA+(PanjangT_1-PanjangT_3)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB+JK*4/3+(-TinggiT_1-TinggiT_2-TinggiT_3)*c));
  //Gambar12
  var path = Path();
  path.moveTo(JA.toMirror(M, MV), TinggiCanvasa - JB);
  for (var i = 0; i <= OptredeNT_1-1; i++) {
    path.lineTo((JA + Antrede_1*c * (i)).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_1*c * (i+1));
    path.lineTo((JA + Antrede_1*c * (i+1)).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_1*c * (i+1));
  }
  path.lineTo((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c);
  path.lineTo((JA + (PanjangT_1)*c).toMirror(M, MV),
      TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2+Optrede_3)*c);
  path.lineTo((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV),
      TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3)*c);
  path.lineTo((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV),
      TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3)*c);

  for (var i = 0; i <= OptredeNT_3-1; i++) {
    path.lineTo((JA + (PanjangT_1-PanjangT_3+Antrede_3*(i+1))*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c);
    path.lineTo((JA + (PanjangT_1-PanjangT_3+Antrede_3*(i+1))*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i+1))*c);
  }
  path.lineTo((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
      TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c);
  path.lineTo((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
      TinggiCanvasa - JB + (-TinggiT_1+Optrede_1)*c);
  path.lineTo((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
      TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1));

  path.lineTo((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB);
  canvas.drawPath(path, Line3);

  for (var i = 0; i <= OptredeNT_1-1; i++) {
    canvas.drawLine(
        Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i))*c),
        Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(Antrede_1*(i))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
        Offset(JA+(Antrede_1*(i+1))*c, TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
        Line1);
  }
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line1);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Line1);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+Optrede_3)*c),
      Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3)*c),
      Line1);
  canvas.drawLine(
      Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3)*c),
      Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
      Line1);

  for (var i = 1; i <= OptredeNT_2-1; i++) {
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
        Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
        Line1);
  }

  for (var i = 0; i <= OptredeNT_3-1; i++) {
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i))*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c),
        Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i+1))*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i+1))*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i))*c),
        Offset((JA+(PanjangT_1-PanjangT_2+Antrede_3*(i+1))*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3+Optrede_3*(i+1))*c),
        Line1);
  }
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Offset((JA+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Line1);

  canvas.drawLine(Offset((JA).toMirror(M, MV), TinggiCanvasa - JB),
      Offset(JA +(Antrede_1)*c, TinggiCanvasa - JB), Line1);
  canvas.drawLine(
      Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-TinggiT_2)*c),
      Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1+Optrede_1)*c),
      Line1);
  canvas.drawLine(
      Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1+Optrede_1)*c),
      Offset((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1)),
      Line1);
  canvas.drawLine(
      Offset((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1)),
      Offset((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB),
      Line1);

//keterangan garis bawah
  canvas.drawLine(
      Offset((JA + (0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB +JK),
      Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+JK),
      Line1);
  canvas.drawLine(
      Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+JK-5),
      Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+JK+5),
      Line1);
  canvas.drawLine(
      Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB +JK),
      Offset((JA + (PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+JK),
      Line1);
  // atas
  canvas.drawLine(
      Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB -JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
      Offset((JA + (PanjangT_1-PanjangT_2)*c).toMirror(M, MV),
          TinggiCanvasa - JB-JK+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
      Line1);
  // kanan
  canvas.drawLine(
      Offset((JA + JK*4+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB),
      Offset((JA + JK*4+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line1);
  canvas.drawLine(
      Offset((JA + JK*4-5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA + JK*4+5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line1);
  canvas.drawLine(
      Offset((JA + JK*4+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA + JK*4+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Line1);
  canvas.drawLine(
      Offset((JA + JK*4-5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Offset((JA + JK*4+5+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Line1);
  canvas.drawLine(
      Offset((JA + JK*4+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
      Offset((JA + JK*4+(PanjangT_1+LebarT)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2-TinggiT_3)*c),
      Line1);
  //keterangan
  //keterangan11
  final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
  canvas.drawParagraph(Kete.toKetB(),
      Offset((JA + (0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
  //keterangan14
  final Kete14 = Para(Text:LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
  canvas.drawParagraph(Kete14.toKetB(),
      Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
  //keterangan15
  final Kete15 = Para(Text:PanjangT_3.toStringAsFixed(0) + " cm",Lebar: PanjangT_3*c,Posisi: TextAlign.center);
  canvas.drawParagraph(Kete15.toKetB(),
      Offset((JA + (PanjangT_1-PanjangT_3)*c).toMirror(M, MV), TinggiCanvasa - JB -JK*3+(-TinggiT_1-TinggiT_2-TinggiT_3).toT_U_2B_a()));
  //keterangan13
  final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
  canvas.drawParagraph(
      Kete13.toKetB(),
      Offset(JA + (PanjangT_1 / 3)*c,
          TinggiCanvasa - JB - (TinggiT_1 / 5)*c));
  //keterangan23
  final Kete23 = Para(Text:Sudut_2.toStringAsFixed(0) + " °");
  canvas.drawParagraph(
      Kete23.toKetB(),
      Offset(JA-JK*3 + (PanjangT_1)*c,
          TinggiCanvasa - JB-JK*2 +(-TinggiT_1)*c));
  //keterangan24
  final Kete24 = Para(Text:Sudut_3.toStringAsFixed(0) + " °");
  canvas.drawParagraph(
      Kete24.toKetB(),
      Offset(JA-JK+ (PanjangT_1-PanjangT_3*1/3)*c,
          TinggiCanvasa - JB +(-TinggiT_1-TinggiT_2-TinggiT_3/5)*c));
  //vertikal
  canvas.rotate(270/180*pi);
  //keterangan12
  final Kete12 =Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
  canvas.drawParagraph(
      Kete12.toKetB(),
      Offset(-TinggiCanvasa + JB,
          JA +JK*3+ (PanjangT_1+LebarT)*c + JK));
//keterangan16
  final Kete16 =Para(Text:TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
  canvas.drawParagraph(
      Kete16.toKetB(),
      Offset(-TinggiCanvasa + JB+(TinggiT_1)*c,
          JA +JK*3 + (PanjangT_1+LebarT)*c + JK));
//keterangan17
  final Kete17 =Para(Text:TinggiT_3.toStringAsFixed(0) + " cm",Lebar: TinggiT_3*c,Posisi: TextAlign.center);
  canvas.drawParagraph(
      Kete17.toKetB(),
      Offset(-TinggiCanvasa + JB+(TinggiT_1+TinggiT_2)*c,
          JA +JK*3 + (PanjangT_1+LebarT)*c + JK));

  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  return
    PdfGambar1 = await pngBytes;
}
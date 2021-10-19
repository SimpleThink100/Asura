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
import 'package:perancangan_tangga_app/Tangga_U_1B/Hitung_Tangga_U_1B.dart';

class Gambar_Tangga_U_1B_1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double JA=20<PanjangT_2-PanjangT_1?PanjangT_2-PanjangT_1:20;
    double c = (1.0).toT_U_1B_a();
    //judulgambar
    final Judul11 = Para(Text:"Tampak Samping",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));
    //keterangan11
    final Kete = Para(Text: PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    final Kete2 = Para(Text: PanjangT_2.toStringAsFixed(0) + " cm",Lebar: PanjangT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB - JK*3+(-TinggiT_1-TinggiT_2)*c));

    final Kete1 = Para(Text: LebarB_1.toStringAsFixed(0) + " cm",Lebar: LebarB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));

    //keterangan13
    final Kete13 = Para(Text: Sudut_1.toStringAsFixed(1) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c, TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

    //keterangan15
    final Kete15 = Para(Text: Sudut_2.toStringAsFixed(1) + " °");
    canvas.drawParagraph(
        Kete15.toKetW(),
        Offset(JA + (PanjangT_1-PanjangT_2*2/3)*c, TinggiCanvasa - JB  +(-TinggiT_1-TinggiT_2 / 5)*c));


    //Gambar12
    //tangga gambar bawah
    var path = Path();
    path.moveTo(JA, TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      path.lineTo((JA + Antrede_1*c * (i)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
      path.lineTo((JA + Antrede_1*c * (i+1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
    }
    path.lineTo((JA +(PanjangT_1-Antrede_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1)*c);
    path.lineTo((JA +(PanjangT_1+LebarB_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1)*c);
    path.lineTo((JA +(PanjangT_1+LebarB_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1+Optrede_1)*c);
    path.lineTo(JA + ((PanjangT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB +(-TinggiT_1+Optrede_1)*c);
    path.lineTo((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    canvas.drawLine(Offset((JA).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB), Line1);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*i)*c),
          Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*(i+1))*c),
          Line1);
      canvas.drawLine(Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*(i+1))*c),
          Offset((JA+(Antrede_1*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*(i+1))*c),
          Line1);
    }
    canvas.drawLine(Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-(TinggiT_1-Optrede_1)*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Offset((JA+Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB), Line1);
    //tangga atas
    var path1 = Path();
    path1.moveTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-(TinggiT_1)*c);
    for (var i = 0; i <= OptredeNT_2-1; i++) {
      path1.lineTo((JA +(PanjangT_1-Antrede_2*i)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-Optrede_1 * (i+1))*c);
      path1.lineTo((JA +(PanjangT_1-Antrede_2*(i+1))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-Optrede_1 * (i+1))*c);
    }
    path1.lineTo((JA +(PanjangT_1-PanjangT_2)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1-TinggiT_2+Optrede_2)*c);
    path1.lineTo((JA +(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1+Optrede_1)*c);
    canvas.drawPath(path1, Line3);

    for (var i = 0; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1-Antrede_2*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Offset((JA+(PanjangT_1-Antrede_2*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA+(PanjangT_1-Antrede_2*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i+1))*c),
          Offset((JA+(PanjangT_1-Antrede_2*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+Optrede_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+Optrede_2)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Line1);

    //garis keterangan atas
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB - JK+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB - JK+(-TinggiT_1-TinggiT_2)*c),
        Line1);

    //gars keterangan bawah
    canvas.drawLine(
        Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK-5),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK+5),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Offset((JA + (PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Line1);
    //garis keterangan kanan
    canvas.drawLine(
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB),
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB - TinggiT_1*c),
        Line1);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK+5, TinggiCanvasa - JB - TinggiT_1*c),
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK-5, TinggiCanvasa - JB - TinggiT_1*c),
        Line1);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB - TinggiT_1*c),
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB - (TinggiT_1+TinggiT_2)*c),
        Line1);
    //vertikal
    canvas.rotate(270/180*pi);
    //keterangan12
    final Kete12 = Para(Text: TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset( -TinggiCanvasa + JB + (0.0)*c,JA + (PanjangT_1+LebarB_1)*c+JK,));
    //keterangan 14
    final Kete14 = Para(Text: TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset(-TinggiCanvasa + JB + (TinggiT_1)*c,JA + (PanjangT_1+LebarB_1)*c+JK));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_2 extends CustomPainter {
  double JA=20<PanjangT_1-PanjangT_2?PanjangT_1-PanjangT_2:20;
  final double c = (1.0).toT_U_1B_b();
  @override
  void paint(Canvas canvas, Size size) {
    //judulgambar
    final Judul21 = Para(Text:"Tampak Atas",Lebar:LebarCanvas);
    canvas.drawParagraph(Judul21.toJudul(), Offset(0, 20));

    //Gambar
    var path = Path();
    path.moveTo(JA,TinggiCanvasb - JB );
    path.lineTo(JA,TinggiCanvasb - JB+(-LebarT)*c);
    path.lineTo(JA+(PanjangT_2)*c,TinggiCanvasb - JB+(-LebarT)*c);
    path.lineTo(JA+(PanjangT_2)*c,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c);
    path.lineTo(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c);
    path.lineTo(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB+(-PanjangB_1)*c);
    path.lineTo(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB+(-PanjangB_1)*c);
    path.lineTo(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB);
    path.lineTo(JA,TinggiCanvasb - JB);
    canvas.drawPath(path, Line3);

    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB ),
        Offset(JA,TinggiCanvasb - JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB+(-LebarT)*c),
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+(-LebarT)*c),
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Offset(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Offset(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB+(-PanjangB_1)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB+(-PanjangB_1)*c),
        Offset(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB+(-PanjangB_1)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB+(-PanjangB_1)*c),
        Offset(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB),
        Offset(JA,TinggiCanvasb - JB),
        Line1);
    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB ),
        Offset(JA,TinggiCanvasb - JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB ),
        Offset(JA,TinggiCanvasb - JB+(-LebarT)*c),
        Line1);


    for (var i = 0; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset(JA+(Antrede_2*(i+1))*c,TinggiCanvasb - JB ),
          Offset(JA+(Antrede_2*(i+1))*c,TinggiCanvasb - JB+(-LebarT)*c),
          Line1);
    }
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(
          Offset(JA+(PanjangT_2-PanjangT_1+Antrede_1*(i+1))*c,
              TinggiCanvasb - JB+(-PanjangB_1)*c),
          Offset(JA+(PanjangT_2-PanjangT_1+Antrede_1*(i+1))*c,
              TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
          Line1);
    }
    //garis keterangan bawah
    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB+JK),
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+JK),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+JK-5),
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB+JK+5),
        Line1);
    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB+JK),
        Offset(JA+(PanjangT_2+LebarB_1)*c,TinggiCanvasb - JB+JK),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2-PanjangT_1)*c,TinggiCanvasb - JB-JK+(-PanjangB_1)*c),
        Offset(JA+(PanjangT_2)*c,TinggiCanvasb - JB-JK+(-PanjangB_1)*c),
        Line1);


    //kanan
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK,TinggiCanvasb - JB),
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK,TinggiCanvasb - JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK-5,TinggiCanvasb - JB+(-LebarT)*c),
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK+5,TinggiCanvasb - JB+(-LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK,TinggiCanvasb - JB+(-LebarT)*c),
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK-5,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK+5,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK,TinggiCanvasb - JB+(-PanjangB_1+LebarT)*c),
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK,TinggiCanvasb - JB+(-PanjangB_1)*c),
        Line1);
    canvas.drawLine(
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK*4,TinggiCanvasb - JB),
        Offset(JA+(PanjangT_2+LebarB_1)*c+JK*4,TinggiCanvasb - JB+(-PanjangB_1)*c),
        Line1);

    //keterangan1
    final Kete21 = Para(Text:PanjangT_2.toStringAsFixed(0) + " cm",Lebar:PanjangT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete21.toKetW(),
        Offset(JA, TinggiCanvasb-JB +JK ));
    final Kete26 = Para(Text:LebarB_1.toStringAsFixed(0) + " cm",Lebar:LebarB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete26.toKetW(),
        Offset(JA+PanjangT_2*c, TinggiCanvasb-JB +JK ));
    final Kete27 = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar:PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete27.toKetW(),
        Offset(JA+(PanjangT_2-PanjangT_1)*c, TinggiCanvasb-JB -JK*3 +(-PanjangB_1)*c));


    //keterangan2 rotate
    canvas.rotate(270/180*pi);
    final Kete22 = Para(Text:LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete22.toKetW(),
        Offset(-TinggiCanvasb+JB+(0.0)*c,JA+(PanjangT_2+LebarB_1)*c+JK));
    final Kete23 = Para(Text:LebarT.toStringAsFixed(0) + " cm" ,Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete23.toKetW(),
        Offset(-TinggiCanvasb+JB+(PanjangB_1-LebarT)*c,JA+(PanjangT_2+LebarB_1)*c+JK));
    final Kete24 = Para(Text:(PanjangB_1-LebarT*2).toStringAsFixed(0) + " cm" ,Lebar: (PanjangB_1-LebarT*2)*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete24.toKetW(),
        Offset(-TinggiCanvasb+JB+(LebarT)*c,JA+(PanjangT_2+LebarB_1)*c+JK));
    final Kete25 = Para(Text:(PanjangB_1).toStringAsFixed(0) + " cm" ,Lebar: (PanjangB_1)*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete25.toKetW(),
        Offset(-TinggiCanvasb+JB+(0.0)*c,JA+(PanjangT_2+LebarB_1)*c+JK*4));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {{
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

    // gambar atas
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
    final Kete3101 = Para(Text: "Tangga Atas", Lebar: LebarCanvas);
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
  }}

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_U_1B_1m extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)  {
    final double c = (1.0).toG_U_1B_c();
    final double JB =50;
    final double JB2 = JB;
    final double JA = 60;
    final double TinggiCanvasa = TinggiCanvasG_2;
    double gaya =20;
   //judul
    final Judul11 = Para(Text:"Posisi Tangga Atas",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));
    //keterangan
    final Kete = Para(Text:"D");
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA + (PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + JK+(0.0)*c));
    final Kete1 = Para(Text:"E");
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA + (PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + JK+(0.0)*c));
    final Kete2 = Para(Text:"F");
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA + (0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB + JK+(-TinggiT_2)*c));
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
    path.moveTo((JA-k + (PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-k + (0.0)*c );
    path.lineTo((JA+k + (PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-k + (0.0)*c );
    path.lineTo((JA+k + (PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+k + (0.0)*c );
    path.lineTo((JA-k + (PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+k + (0.0)*c );
    canvas.drawPath(path, Line3);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_2m extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_i();

    final double JB = 50;
    final double JB2 = 50;
    final double JA = 60;
    double gaya =20;
    final double TinggiCanvasa = TinggiCanvasG_1;
    //judul
    final Judul11 = Para(Text:"Posisi Tangga Bawah",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));
    //keterangan
    final Kete = Para(Text:"A");
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA + (0)*c).toMirror(M, MV),
            TinggiCanvasa - JB + JK+(0.0)*c));
    final Kete1 = Para(Text:"B");
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + JK+(-TinggiT_1)*c));
    final Kete2 = Para(Text:"C");
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA + (PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + JK+(-TinggiT_1)*c));

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
    path.moveTo((JA-k + (PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-k + (-TinggiT_1)*c );
    path.lineTo((JA+k + (PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-k + (-TinggiT_1)*c );
    path.lineTo((JA+k + (PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+k + (-TinggiT_1)*c );
    path.lineTo((JA-k + (PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+k + (-TinggiT_1)*c );
    canvas.drawPath(path, Line3);

  }


  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_U_1B_1O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    double JA=20<PanjangT_2-PanjangT_1?PanjangT_2-PanjangT_1:20;
    double c = (1.0).toT_U_1B_a();
    //judulgambar
    final Judul11 = Para(Text:"Tampak Samping",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));
    //keterangan11
    final Kete = Para(Text: PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));
    final Kete2 = Para(Text: PanjangT_2.toStringAsFixed(0) + " cm",Lebar: PanjangT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB - JK*3+(-TinggiT_1-TinggiT_2)*c));

    final Kete1 = Para(Text: LebarB_1.toStringAsFixed(0) + " cm",Lebar: LebarB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK));

    //keterangan13
    final Kete13 = Para(Text: Sudut_1.toStringAsFixed(1) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c, TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

    //keterangan15
    final Kete15 = Para(Text: Sudut_2.toStringAsFixed(1) + " °");
    canvas.drawParagraph(
        Kete15.toKetW(),
        Offset(JA + (PanjangT_1-PanjangT_2*2/3)*c, TinggiCanvasa - JB  +(-TinggiT_1-TinggiT_2 / 5)*c));


    //Gambar12
    //tangga gambar bawah
    var path = Path();
    path.moveTo(JA, TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      path.lineTo((JA + Antrede_1*c * (i)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
      path.lineTo((JA + Antrede_1*c * (i+1)).toMirror(M, MV),
          TinggiCanvasa - JB - Optrede_1*c * (i+1));
    }
    path.lineTo((JA +(PanjangT_1-Antrede_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1)*c);
    path.lineTo((JA +(PanjangT_1+LebarB_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1)*c);
    path.lineTo((JA +(PanjangT_1+LebarB_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1+Optrede_1)*c);
    path.lineTo(JA + ((PanjangT_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB +(-TinggiT_1+Optrede_1)*c);
    path.lineTo((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    canvas.drawLine(Offset((JA).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB), Line1);
    for (var i = 0; i <= OptredeNT_1-1; i++) {
      canvas.drawLine(Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*i)*c),
          Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*(i+1))*c),
          Line1);
      canvas.drawLine(Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*(i+1))*c),
          Offset((JA+(Antrede_1*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB-(Optrede_1*(i+1))*c),
          Line1);
    }
    canvas.drawLine(Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-TinggiT_1*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB-(TinggiT_1-Optrede_1)*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c), Line1);
    canvas.drawLine(Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Offset((JA+Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB), Line1);
    //tangga atas
    var path1 = Path();
    path1.moveTo((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-(TinggiT_1)*c);
    for (var i = 0; i <= OptredeNT_2-1; i++) {
      path1.lineTo((JA +(PanjangT_1-Antrede_2*i)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-Optrede_1 * (i+1))*c);
      path1.lineTo((JA +(PanjangT_1-Antrede_2*(i+1))*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1-Optrede_1 * (i+1))*c);
    }
    path1.lineTo((JA +(PanjangT_1-PanjangT_2)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1-TinggiT_2+Optrede_2)*c);
    path1.lineTo((JA +(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa - JB +(-TinggiT_1+Optrede_1)*c);
    canvas.drawPath(path1, Line3);

    for (var i = 0; i <= OptredeNT_2-1; i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1-Antrede_2*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i))*c),
          Offset((JA+(PanjangT_1-Antrede_2*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i+1))*c),
          Line1);
      canvas.drawLine(
          Offset((JA+(PanjangT_1-Antrede_2*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i+1))*c),
          Offset((JA+(PanjangT_1-Antrede_2*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-Optrede_2*(i+1))*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+Optrede_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1-TinggiT_2+Optrede_2)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Line1);

    //garis keterangan atas
    canvas.drawLine(
        Offset((JA+(PanjangT_1-PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB - JK+(-TinggiT_1-TinggiT_2)*c),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB - JK+(-TinggiT_1-TinggiT_2)*c),
        Line1);

    //gars keterangan bawah
    canvas.drawLine(
        Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK-5),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK+5),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Offset((JA + (PanjangT_1+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
        Line1);
    //garis keterangan kanan
    canvas.drawLine(
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB),
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB - TinggiT_1*c),
        Line1);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK+5, TinggiCanvasa - JB - TinggiT_1*c),
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK-5, TinggiCanvasa - JB - TinggiT_1*c),
        Line1);
    canvas.drawLine(
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB - TinggiT_1*c),
        Offset(JA + (PanjangT_1+LebarB_1)*c + JK, TinggiCanvasa - JB - (TinggiT_1+TinggiT_2)*c),
        Line1);
    //vertikal
    canvas.rotate(270/180*pi);
    //keterangan12
    final Kete12 = Para(Text: TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset( -TinggiCanvasa + JB + (0.0)*c,JA + (PanjangT_1+LebarB_1)*c+JK,));
    //keterangan 14
    final Kete14 = Para(Text: TinggiT_2.toStringAsFixed(0) + " cm",Lebar: TinggiT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetW(),
        Offset(-TinggiCanvasa + JB + (TinggiT_1)*c,JA + (PanjangT_1+LebarB_1)*c+JK));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//tangga atas
class Gambar_Tangga_U_1B_2O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_L_b();
    final double TinggiCanvasa = 90;
    final double JA = 2;
    canvas.scale(2.8);
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
    final Kete = Para(Text:Antrede_2.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+JK+(Antrede_2*2.5)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB/2-JK/2 +(-Optrede_2).toG_I_b())));
    //keterangan1 Optrede
    final Kete1 = Para(Text:Optrede_2.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+JK/2+(Antrede_2*1.7)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB/2+(-Optrede_2/2).toG_I_b())));
//keterangan2 0.5 tebal plat tangga
    final Kete2 = Para(Text:TinggiMiring5AnakTangga_2.toStringAsFixed(1) + " cm",font: 7);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+JK+(Antrede_2*2)*c).toMirror(M, MV) , (TinggiCanvasa - JB+(-Optrede_2*2).toG_I_b())));
//keterangan3 Tebal pelat tangga pilih
    final Kete3 = Para(Text:(TebalPelatTanggaPilih_2/10).toStringAsFixed(1)+" cm",font: 7);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+JK*1.5+(Antrede_2*2)*c).toMirror(M, MV) , (TinggiCanvasa - JB+(-Optrede_2*1.5).toG_I_b())));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_3O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)  {
    final double c = (1.0).toG_U_1B_c();
    final double JB = 80;
    final double JB2 = JB;
    final double JA = 60;
    final double TinggiCanvasa = TinggiCanvasG_2;
    double gaya =20;

    final arc1 = Path();
    //bawah
    arc1.moveTo((JA+(PanjangT_2*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_2*7/10)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_2*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20+(-TinggiT_2*7/10)*c),
        radius: Radius.circular(2),
        clockwise: false
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_2*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2+(-TinggiT_2*7/10)*c),
        Offset((JA-4.5+(PanjangT_2*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2+4.5+(-TinggiT_2*7/10)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2+(-TinggiT_2*7/10)*c),
        Offset((JA-4.5+(PanjangT_2*3/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB+20+20*cosa_2-4.5+(-TinggiT_2*7/10)*c),
        Line9);
    //DEF
    //keterangan MaFE
    final Kete2 = Para(Text:(-MaFE).toStringAsFixed(1) + " kNm",font: 16);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA-20+(PanjangT_2*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(-TinggiT_2*7/10)*c));
//keterangan beban FHFE
    final Kete5 = Para(Text:FHbFE.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-JK*2+(-TinggiT_2)*c));
//keterangan beban FVFE
    final Kete6 = Para(Text:FVbFE.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*2+(-TinggiT_2)*c));

    //gambar tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(-TinggiT_2)*c),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(0.0)*c),
        Line9);
    for (var i = 0; i <= (PanjangT_2/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_2-(PanjangT_2/(PanjangT_2/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Offset((JA+(PanjangT_2-(PanjangT_2/(PanjangT_2/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB-gaya+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2-(PanjangT_2/(PanjangT_2/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Offset((JA+5+(PanjangT_2-(PanjangT_2/(PanjangT_2/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2-(PanjangT_2/(PanjangT_2/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Offset((JA-5+(PanjangT_2-(PanjangT_2/(PanjangT_2/20).toRound(0)*i))*c).toMirror(M, MV),
              TinggiCanvasa - JB-5+(-TinggiT_2/(PanjangT_2/20).toRound(0)*i)*c),
          Line9);
    }



//garis gaya //FE //H
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_2)*c),
        Offset((JA-JK-20+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_2)*c),
        Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_2)*c),
        Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(-TinggiT_2)*c),
        Line9);

    //V
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_2)*c),
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_2)*c),
        Offset((JA-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_2)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_2)*c),
        Offset((JA+5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_2)*c),
        Line9);

//keterangan beban terfaktor
    final Kete4 = Para(Text:BebanTerfaktorTangga_2.toStringAsFixed(1) + " kN/m",font: 16);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-80+(PanjangT_2)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_2/2)*c));

    //gambar bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(0.0)*c),
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(0.0)*c),
        Line9);
    for (var i = 0; i <= (LebarB_1/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_2+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA+(PanjangT_2+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-gaya+(0.0)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA+5+(PanjangT_2+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(0.0)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_2+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(0.0)*c),
          Offset((JA-5+(PanjangT_2+LebarB_1/(LebarB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(0.0)*c),
          Line9);
    }

    //kanan
    arc1.moveTo((JA+(PanjangT_2+LebarB_1*7/10)*c).toMirror(M, MV),
        TinggiCanvasa-JB2+20+(0.0)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_2+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(0.0)*c),
        radius: Radius.circular(2),
        clockwise: true
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(0.0)*c),
        Offset((JA+4.5+(PanjangT_2+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40-4.5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(0.0)*c),
        Offset((JA+4.5+(PanjangT_2+LebarB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+4.5+(0.0)*c),
        Line9);

    //JIH
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Offset((JA+JK+20+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Offset((JA+JK+5+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(0.0)*c),
        Offset((JA+JK+5+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-5+(0.0)*c),
        Line9);
    //V
    canvas.drawLine(
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(0.0)*c),
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+20+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(0.0)*c),
        Offset((JA-5+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(0.0)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(0.0)*c),
        Offset((JA+5+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(0.0)*c),
        Line9);


//keterangan MaDE
    final Kete12 = Para(Text:MaDE.toStringAsFixed(1) + " kNm",font: 16);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset((JA-20+(PanjangT_2+LebarB_1*4/5)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+60+(0.0)*c));
//keterangan beban terfaktor
    final Kete13 = Para(Text:BebanTerfaktorBordes_1.toStringAsFixed(1) + " kN/m",font: 16,);
    canvas.drawParagraph(Kete13.toKetW(),
        Offset((JA+(PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-gaya-30+(0.0)*c));
//keterangan beban FHDE
    final Kete16 = Para(Text:(-FHbDE).toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete16.toKetW(),
        Offset((JA+JK+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-JK*2+(0.0)*c));
//keterangan beban FVDE
    final Kete17 = Para(Text:FVbDE.toStringAsFixed(1) + " kN",font: 16);
    canvas.drawParagraph(Kete17.toKetW(),
        Offset((JA+JK+(PanjangT_2+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK*3+(0.0)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_5O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_e();
    final double s = 1;
    final double font = 16;
    final double JB = 60;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_2;
   //DEF
//tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(NFE*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NFE*cosa_1*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1-NEF*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NEF*s*cosa_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(NFE*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NFE*cosa_1*s)*c),
        Offset((JA+(PanjangT_1-NEF*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NEF*s*cosa_1)*c),
        Line9);


// keterangan NFE
    final Kete4 = Para(Text:(NFE).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-NFE*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-NFE*cc*s)*c));
// keterangan NEF
    final Kete1 = Para(Text:(-NEF).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa -JB+(NEF*s*cc*2)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+NED*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+NED*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-NDE*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-NDE*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan NED
    final Kete5 = Para(Text:(NED).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*8+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(NED*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(-NDE).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-NDE*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_6O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_f();
    final double s = 3;
    final double font = 16;
    final double JB = 60;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_2;
    //DEF
//tangga
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(SFE*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-SFE*cosa_1*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1-SEF*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(SEF*s*cosa_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(SFE*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-SFE*cosa_1*s)*c),
        Offset((JA+(PanjangT_1-SEF*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(SEF*s*cosa_1)*c),
        Line9);


// keterangan NFE
    final Kete4 = Para(Text:(SFE).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-SFE*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_2-SFE*cc*s)*c));
// keterangan NEF
    final Kete1 = Para(Text:(SEF).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa -JB+(SEF*s*cc*2)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-SED*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0-SED*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+SDE*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+SDE*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan NED
    final Kete5 = Para(Text:(SED).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*4+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SED*s*2)*c));
// keterangan NDE
    final Kete6 = Para(Text:(SDE).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-SDE*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_7O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_g();
    final double s = 6;
    final double font = 16;
    final double JB = 60;
    final double JA = 60;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_2;
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(MAB*s*sina_1)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(-TinggiT_1-MAB*cosa_1*s)*c),//cc
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1-MBA*s*sina_1)*c).toMirror(M, MV),//cs
            TinggiCanvasa - JB+(0.0+MBA*cosa_1*s)*c),//cc
        Line9);

    var arc = Path();
    arc.moveTo(
      //kiri
        (JA+(MAB*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1-MAB*cosa_1*s)*c);
    arc.quadraticBezierTo(
      //tengah
        (JA+(JAB*100*cosa_1+(MLAB-MAB)*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+JAB*100*sina_1-(MLAB-MAB)*s*cosa_1)*c,
        //kanan
        (JA+(PanjangT_1-MBA*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(MBA*s*cosa_1)*c);
    canvas.drawPath(arc, Line10);

// keterangan MFE
    final Kete4 = Para(Text:(-MFE).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-MFE*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-TinggiT_1)*c));
// keterangan MEF
    final Kete1 = Para(Text:(MEF).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+(PanjangT_1+MEF*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*3+(0.0)*c));
// keterangan MLEF
    final Kete2 = Para(Text:(-MLEF).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset( (JA+(-JFE*cosa_1-(MLEF-MFE)*2*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(JFE*sina_1-(MLEF-MFE)*2*cosa_1)*c,));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MED*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MED*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MDE*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0+MDE*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(0.0)*c),
        Line9);
    // keterangan MED
    final Kete5 = Para(Text:(-MED).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-MED*s)*c));
// keterangan MDE
    final Kete6 = Para(Text:(MDE).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-MDE*s)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//tangga bawah
class Gambar_Tangga_U_1B_8O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_h();
    final double TinggiCanvasa = 90;
    final double JA = 2;
    canvas.scale(2.8);
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
    final Kete = Para(Text:Antrede_1.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+JK+(Antrede_1*2.5)*c).toMirror(M, MV) , (TinggiCanvasa - JB/2-JK/2 +(-Optrede_1).toG_I_b())));
    //keterangan1 Optrede
    final Kete1 = Para(Text:Optrede_1.toStringAsFixed(0) + " cm",font: 7);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+JK/2+(Antrede_1*1.7)*c).toMirror(M, MV) , (TinggiCanvasa - JB/2+(-Optrede_1/2).toG_I_b())));
//keterangan2 0.5 tebal plat tangga
    final Kete2 = Para(Text:TinggiMiring5AnakTangga_1.toStringAsFixed(1) + " cm",font: 7);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+JK+(Antrede_1*2)*c).toMirror(M, MV) , (TinggiCanvasa - JB+(-Optrede_1*2).toG_I_b())));
//keterangan3 Tebal pelat tangga pilih
    final Kete3 = Para(Text:(TebalPelatTanggaPilih_1/10).toStringAsFixed(1)+" cm",font: 7);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+JK*1.5+(Antrede_1*2)*c).toMirror(M, MV) , (TinggiCanvasa - JB+(-Optrede_1*1.5).toG_I_b())));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_9O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_i();

    final double JB = 50;
    final double JB2 = 50;
    final double JA = 60;
    double gaya =20;
    final double TinggiCanvasa = TinggiCanvasG_1;
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
    final Kete12 = Para(Text:MaCB.toStringAsFixed(1) + " kNm",font: 16);
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
class Gambar_Tangga_U_1B_11O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_k();
    final double s = 1;
    final double font = 16;
    final double JB = 30;
    final double JA = 70;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_1;
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
    final Kete4 = Para(Text:(NAB).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-NAB*s*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-NAB*cc*s)*c));
// keterangan NBA
    final Kete1 = Para(Text:(-NBA).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*4+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa -JB+(-TinggiT_1+NBA*s*cc)*c));

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
    final Kete5 = Para(Text:(NBC).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*4+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NBC*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(-NCB).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NCB*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_12O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c =(1.0).toG_U_1B_l();
    final s = 4;
    final double font =16;
    final double JB = 40;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_1;
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

// keterangan NAB
    final Kete4 = Para(Text:(SAB).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*2+(-SAB*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-SAB*cc*4)*c));
// keterangan NBA
    final Kete1 = Para(Text:(SBA).toStringAsFixed(1) + " kN/m",font: font);
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
            TinggiCanvasa - JB+(-TinggiT_1-SCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-SCB*s)*c),
        Offset((JA+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan NBC
    final Kete5 = Para(Text:(SBC).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*7+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-SBC*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(SCB).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-SCB*s)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_U_1B_13O extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_U_1B_m();
    final double s = 6;
    final double font = 18;
    final double JB = 20;
    final double JA = 60;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa = TinggiCanvasG_1;
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
    final Kete2 = Para(Text:(-MLAB).toStringAsFixed(1) + " kN/m",font: font);
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
    final Kete5 = Para(Text:(MBC).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-TinggiT_1-MBC*s)*c));
// keterangan MCB
    final Kete6 = Para(Text:(MCB).toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+LebarB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-MCB*s)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

//diameter..atas
class Gambar_Tangga_U_1B_1D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_1B_a();
    final double JB = 110;
    final double TinggiCanvasa=TinggiCanvasD_1;
    final double PanjangB_1=LebarB_1;
    final double JA = LebarB_1*c+30;
    //judulgambar
    final Judul11 = Para(Text: "Tangga Atas",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));
    //keterangan18 panjang bordes
    final Kete18 = Para(Text: PanjangB_1.toStringAsFixed(0) + " cm",Lebar: PanjangB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete18.toKetW(),
        Offset((JA + (-PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB + JK*8));

    //keterangan11 panjang tangga
    final Kete = Para(Text:PanjangT_2.toStringAsFixed(0) + " cm",Lebar: PanjangT_2*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK*8));

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

    //garis kanan
    canvas.drawLine(
        Offset((JA + (PanjangT_2)*c + JK).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + (PanjangT_2)*c + JK).toMirror(M, MV),
            TinggiCanvasa - JB - TinggiT_2*c),
        Line1);


    //tulangan
    canvas.drawLine(
        Offset(JA + (Selimut/10)*c, TinggiCanvasa - JB +(Selimut/10)*c),
        Offset(JA + (PanjangT_2-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_2+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Selimut/10)*c, TinggiCanvasa - JB+(Optrede_2-Selimut/10)*c),
        Offset(JA + (PanjangT_2-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_2-Selimut/10+Optrede_2)*c),
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
    //Diamater GEF
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
    final KeteD4 = Para(Text:"D$Dtul_10-$Stul_10");
    canvas.drawParagraph(
        KeteD4.toKetW(),
        Offset(JA-JK*7+(4*Selimut/10+PanjangT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(-1*Selimut/10-TinggiT_2/(PanjangTanggaMiring_2*100/SGT_2)*(PanjangTanggaMiring_2*100/SGT_2/2).round())*c));
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
    final KeteD1 = Para(Text:"D$Dtul_7-$Stul_7");
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
    final KeteD2 = Para(Text:"D$Dtul_8-$Stul_8");
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
    final KeteD3 = Para(Text:"D$Dtul_9-$Stul_9");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset(JA+JK*2 + (PanjangT_2*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_2*10/20-Selimut/10+Optrede_2)*c));

    //bordes DE
    canvas.drawLine(
        Offset(JA + (Selimut/10)*c,
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
          Offset(JA + (-PanjangB_1/(PanjangB_1/SGBa_2)*i) * c,
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
    final KeteD52 = Para(Text:"D$Dtul_4-$Stul_4");
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
    final KeteD62 = Para(Text:"D$Dtul_5-$Stul_5");
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
    final KeteD72 = Para(Text:"D$Dtul_6-$Stul_6");
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
            JA+(PanjangT_2)*c+JK));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
//..bawah
class Gambar_Tangga_U_1B_2D extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_U_1B_b();
    final double JA = 50;
    final double JB = 40;
    final double TinggiCanvasa=TinggiCanvasD_2;
    final double PanjangB_1=LebarB_1;
    //judulgambar
    final Judul11 = Para(Text: "Tangga Bawah",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan11 panjang tangga
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //keterangan14 panjang bordes
    final Kete14 = Para(Text: PanjangB_1.toStringAsFixed(0) + " cm");
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
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1-1));
    path.lineTo((JA + Antrede_1*c * (AntredeNT_1)).toMirror(M, MV),
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1));
    path.lineTo((JA + Antrede_1*c).toMirror(M, MV), TinggiCanvasa - JB);
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
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);

    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1-bB/2)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Offset((JA+(Antrede_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(Antrede_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
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
        Offset(JA + (Selimut/10)*c, TinggiCanvasa - JB),
        Offset(JA + (PanjangT_1-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_1+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (Antrede_1-Selimut/10)*c, TinggiCanvasa - JB+(-Selimut/10)*c),
        Offset(JA + (PanjangT_1-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Line11);

    for (var i = 0; i <= PanjangTanggaMiring_1*100/SGT_1-1; i++) {
      canvas.drawCircle(
          Offset(JA + (4 * Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*i) * c,
              TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*i)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangTanggaMiring_1*100/SGT_1-2; i++) {
      canvas.drawCircle(
          Offset(JA + (-2*Selimut/10+Antrede_1+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*i) * c,
              TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*i)*c),
          1.2, Line11);
    }
    //Diamater GAB
    canvas.drawLine(
        Offset(JA+(4*Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Offset(JA-JK*2+(4*Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (-2*Selimut/10+Antrede_1+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Offset(JA-JK*1+(4*Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*2+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Line11);

    canvas.drawLine(
        Offset(JA-JK*2+(4*Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Offset(JA-JK*8+(4*Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c),
        Line11);
    final KeteD4 = Para(Text:"D$Dtul_14-$Stul_14");
    canvas.drawParagraph(
        KeteD4.toKetW(),
        Offset(JA-JK*7+(4*Selimut/10+PanjangT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(-1*Selimut/10-TinggiT_1/(PanjangTanggaMiring_1*100/SGT_1)*(PanjangTanggaMiring_1*100/SGT_1/2).round())*c));
    //TAB
    canvas.drawLine(
        Offset(JA + (PanjangT_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_1*4/20+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1*4/20+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1*4/20+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1*4/20+Selimut/10)*c),
        Line11);
    final KeteD1 = Para(Text:"D$Dtul_11-$Stul_11");
    canvas.drawParagraph(
        KeteD1.toKetW(),
        Offset(JA-JK*7 + (PanjangT_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_1*4/20+Selimut/10)*c));
    //TBA
    canvas.drawLine(
        Offset(JA + (PanjangT_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_1*16/20+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1*16/20+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1*16/20+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*4 +(-TinggiT_1*16/20+Selimut/10)*c),
        Line11);
    final KeteD2 = Para(Text:"D$Dtul_12-$Stul_12");
    canvas.drawParagraph(
        KeteD2.toKetW(),
        Offset(JA-JK*7 + (PanjangT_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB-JK*6 +(-TinggiT_1*16/20+Selimut/10)*c));
    //LAB
    canvas.drawLine(
        Offset(JA + (PanjangT_1*10/20-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_1*10/20-Selimut/10+Optrede_1)*c),
        Offset(JA+JK*2 + (PanjangT_1*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1*10/20-Selimut/10+Optrede_1)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (PanjangT_1*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1*10/20-Selimut/10+Optrede_1)*c),
        Offset(JA+JK*8 + (PanjangT_1*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1*10/20-Selimut/10+Optrede_1)*c),
        Line11);
    final KeteD3 = Para(Text:"D$Dtul_13-$Stul_13");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset(JA+JK*2 + (PanjangT_1*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_1*10/20-Selimut/10+Optrede_1)*c));
    //bordes BC
    canvas.drawLine(
        Offset(JA + (PanjangT_1-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_1+Selimut/10)*c),
        Offset(JA + (PanjangT_1+PanjangB_1-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_1+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA + (PanjangT_1-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Offset(JA + (PanjangT_1+PanjangB_1-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Line11);


    for (var i = 0; i <= PanjangB_1/SGBb_1; i++) {
      canvas.drawCircle(
          Offset(JA + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*i) * c,
              TinggiCanvasa - JB+(-TinggiT_1+Selimut/10*2)*c),
          1.2, Line11);
    }

    for (var i = 0; i <= PanjangB_1/SGBb_1; i++) {
      canvas.drawCircle(
          Offset(JA + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*i) * c,
              TinggiCanvasa - JB+(-2*Selimut/10-TinggiT_1+Optrede_1)*c),
          1.2, Line11);
    }
    //TBC
    canvas.drawLine(
        Offset(JA + (PanjangT_1+PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB +(-TinggiT_1+Selimut/10)*c),
        Offset(JA-JK*2 + (PanjangT_1+PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*4 +(-TinggiT_1+Selimut/10)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1+PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*4 +(-TinggiT_1+Selimut/10)*c),
        Offset(JA-JK*7 + (PanjangT_1+PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*4 +(-TinggiT_1+Selimut/10)*c),
        Line11);
    final KeteD5 = Para(Text:"D$Dtul_15-$Stul_15");
    canvas.drawParagraph(
        KeteD5.toKetW(),
        Offset(JA-JK*7 + (PanjangT_1+PanjangB_1*4/20-Selimut/10)*c,
            TinggiCanvasa - JB -JK*6 +(-TinggiT_1+Selimut/10)*c));
//TCB
    canvas.drawLine(
        Offset(JA + (PanjangT_1+PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Offset(JA-JK*2 + (PanjangT_1+PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Line11);
    canvas.drawLine(
        Offset(JA-JK*2 + (PanjangT_1+PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Offset(JA-JK*7 + (PanjangT_1+PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*4 + (-TinggiT_1-Selimut/10+Optrede_1)*c),
        Line11);
    final KeteD6 = Para(Text:"D$Dtul_16-$Stul_16");
    canvas.drawParagraph(
        KeteD6.toKetW(),
        Offset(JA-JK*7 + (PanjangT_1+PanjangB_1*16/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_1-Selimut/10+Optrede_1)*c));
//GBC
    canvas.drawLine(
        Offset(JA + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB+(-TinggiT_1+Selimut/10*2)*c),
        Offset(JA +JK*2+ (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-TinggiT_1+Selimut/10*2)*c),
        Line11);
    canvas.drawLine(
        Offset(JA+JK*2 + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-TinggiT_1+Selimut/10*2)*c),
        Offset(JA+JK*7 + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB-JK*4+(-TinggiT_1+Selimut/10*2)*c),
        Line11);

    canvas.drawLine(
        Offset(JA + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(1+PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB+(-2*Selimut/10-TinggiT_1+Optrede_1)*c),
        Offset(JA+JK*1 + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB-JK*2+(-TinggiT_1+Selimut/10*2)*c),
        Line11);
    final KeteD7 = Para(Text:"D$Dtul_17-$Stul_17");
    canvas.drawParagraph(
        KeteD7.toKetW(),
        Offset(JA+JK*2 + (PanjangT_1+PanjangB_1/(PanjangB_1/SGBb_1)*(PanjangB_1/SGBb_1/2).round()) * c,
            TinggiCanvasa - JB-JK*6+(-TinggiT_1+Selimut/10*2)*c));

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
//..balok
class Gambar_Tangga_U_1B_3D extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_L_e();
    final double JA = 70;
    final double JA2 = LebarCanvas/2+70;
    final double JB = 70;
    final double TinggiCanvasa=TinggiCanvasD_3;
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
    final KeteD32 = Para(Text:"D$Dtul_3-${JBGmina_1.toText()}");
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

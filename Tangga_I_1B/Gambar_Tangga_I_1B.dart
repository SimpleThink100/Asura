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


class Gambar_Tangga_I_1B_1 extends CustomPainter {
  final double c = (1.0).toT_I_1B_a();

  @override
  void paint(Canvas canvas, Size size) {
    final double _teratas=teratas=="Antrede"?1:0;
    final double Antrede_1=AntredeR_1;
    final double Optrede_1=OptredeR_1;
    final double xT_1=TebalPelatTanggaPilih_1/sina_1;
    final double yT_1=TebalPelatTanggaPilih_1/sina_1+(Optrede_1-TebalPelatBordesPilih_1)*cosa_1*sina_1;//
    final double yB_1=TebalPelatBordesPilih_1;

    //judulgambar
    final Judul11 = Para(Text: "Tampak Samping",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

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
class Gambar_Tangga_I_1B_2 extends CustomPainter {
  final double c = (1.0).toT_I_1B_b();
  @override
  void paint(Canvas canvas, Size size) {
    //judulgambar
    final Judul21 = Para(Text: "Tampak Atas",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul21.toJudul(), Offset(0, 20));

    //Gambar
    var path = Path();
    path.moveTo((JA).toMirror(M, MV),TinggiCanvasb- JB);
    path.lineTo((JA).toMirror(M, MV),TinggiCanvasb- JB + (-LebarT)*c);
    path.lineTo((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
        TinggiCanvasb- JB + (-LebarT)*c);
    path.lineTo((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV)
        , TinggiCanvasb- JB );
    canvas.drawPath(path, Line3);

    canvas.drawLine(
        Offset((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasb- JB +(-LebarT)*c),
        Offset((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasb- JB),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasb- JB),
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb- JB),
        Line1);
    canvas.drawLine(
        Offset((JA + (PanjangT_1)*c).toMirror(M, MV), TinggiCanvasb- JB +(-LebarT)*c),
        Offset((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV),TinggiCanvasb- JB + (-LebarT)*c),
        Line1);

    for (var i = 0; i <= OptredeNT_1-2; i++) {
      canvas.drawLine(
          Offset((JA + i * Antrede_1*c).toMirror(M, MV),TinggiCanvasb- JB ),
          Offset((JA + i * Antrede_1*c).toMirror(M, MV),TinggiCanvasb- JB +  (-LebarT)*c),
          Line1);

      canvas.drawLine(
          Offset((JA + Antrede_1*c + i * Antrede_1*c).toMirror(M, MV),
              TinggiCanvasb- JB + (-LebarT)*c),
          Offset((JA + Antrede_1*c + i * Antrede_1*c).toMirror(M, MV),TinggiCanvasb- JB),
          Line1);
    }
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV),TinggiCanvasb- JB),
        Offset((JA).toMirror(M, MV)  ,TinggiCanvasb- JB ),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV),TinggiCanvasb- JB +(-LebarT)*c),
        Offset((JA).toMirror(M, MV) ,TinggiCanvasb- JB + (-LebarT)*c),
        Line1);

    canvas.drawLine(
        Offset((JA +(PanjangT_1+PanjangB_1)*c + JK).toMirror(M, MV),
            TinggiCanvasb- JB ),
        Offset(
            (JA + (PanjangT_1+PanjangB_1)*c + JK).toMirror(M, MV),
            TinggiCanvasb- JB + (-LebarT)*c),
        Line1);

    canvas.drawLine(
        Offset((JA).toMirror(M, MV),TinggiCanvasb- JB + (0.0)*c + JK),
        Offset((JA + PanjangT_1*c).toMirror(M, MV),
            TinggiCanvasb- JB +  (0.0)*c + JK),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV),TinggiCanvasb- JB +5+ (0.0)*c + JK),
        Offset((JA + PanjangT_1*c).toMirror(M, MV),TinggiCanvasb- JB -5+ (0.0)*c + JK),
        Line1);
    canvas.drawLine(
        Offset((JA + PanjangT_1*c).toMirror(M, MV),TinggiCanvasb- JB +(0.0)*c + JK),
        Offset((JA + (PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasb- JB +  (0.0)*c + JK),
        Line1);

    //keterangan2 panjang
    final Kete22 = Para(Text: PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete22.toKetW(),
        Offset((JA).toMirror(M, MV), TinggiCanvasb-JB + JK));

    //keterangan 23 bordes
    final Kete23 = Para(Text: PanjangB_1.toStringAsFixed(0) + " cm",Lebar: PanjangB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete23.toKetW(),
        Offset((JA).toMirror(M, MV) + PanjangT_1*c,
            TinggiCanvasb-JB + JK ));
    //Keterangan vertikal
    //keterangan1 lebar
    canvas.rotate(270/180*pi);
    final Kete21 = Para(Text: LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete21.toKetW(),
        Offset(-TinggiCanvasb+JB,JA+JK+(PanjangT_1+PanjangB_1)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_1B_3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) { //Judul31
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
    }
    ;

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
    }
    ;
    final Kete35 = Para(Text: Ket35);
    canvas.drawParagraph(Kete35.toKetW(),
        Offset(JA + 10 + 95 * 2, TinggiCanvasc - JB - 40 - GH3));

    //keterangan314 antrede 3 angka
    final Kete314 = Para(Text: AntredeNA_1.toText());
    canvas.drawParagraph(Kete314.toKetG(),
        Offset(JA + 15 + 5 + 190, TinggiCanvasc - JB + 15 - GH3));

    //keterangan315 optrede angka
    final Kete315 = Para(Text: OptredeNA_1.toText());
    canvas.drawParagraph(Kete315.toKetG(),
        Offset(JA + 5 + 50 + 190, TinggiCanvasc - JB + 35 - GH3));

    //keterangan310 satuan
    final Kete310 = Para(Text: "($settingSatuan)", Lebar: LebarCanvas);
    canvas.drawParagraph(Kete310.toSub(), Offset(0, TinggiCanvasc - JB - 180));

    //keterangan_pembagi1
    canvas.drawLine(Offset(JA + 30, TinggiCanvasc - JB + 50 - GH3),
        Offset(JA + 60, TinggiCanvasc - JB + 20 - GH3), Line4);

    //keterangan_pembagi2
    canvas.drawLine(Offset(JA + 30 + 95, TinggiCanvasc - JB + 50 - GH3),
        Offset(JA + 60 + 95, TinggiCanvasc - JB + 20 - GH3), Line4);

    //keterangan_pembagi3
    canvas.drawLine(Offset(JA + 30 + 190, TinggiCanvasc - JB + 50 - GH3),
        Offset(JA + 60 + 190, TinggiCanvasc - JB + 20 - GH3), Line4);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_I_1B_1m extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toM_I_1B_a();
    final double TinggiCanvasa=TinggiCanvasm_1;
    final double JA=30;
    final double font=20;
    //judulgambar
    final Judul11 = Para(Text: "Posisi",Lebar: LebarCanvas,font:font);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan A
    final Kete = Para(Text:"A",font:font);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(0.0)*c));
    //keterangan B
    final Kete2 = Para(Text:"B",font:font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_1)*c));

    //keterangan c
    final Kete1 = Para(Text:"C",font:font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) , TinggiCanvasa - JB + JK+(-TinggiT_1)*c));
    //gambar
    canvas.drawLine(
        Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line1);

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

class Gambar_Tangga_I_1B_1O extends CustomPainter {
  final double c = (1.0).toG_I_1B_a();
  final double TinggiCanvasa=TinggiCanvasG_1;
  @override
  void paint(Canvas canvas, Size size)  {
    final double _teratas=teratas=="Antrede"?1:0;
    final double Antrede_1=AntredeR_1;
    final double Optrede_1=OptredeR_1;
    final double xT_1=TebalPelatTanggaPilih_1/sina_1;
    final double yT_1=TebalPelatTanggaPilih_1/sina_1+(Optrede_1-TebalPelatBordesPilih_1)*cosa_1/sina_1;
    final double yB_1=TebalPelatBordesPilih_1;

    //judulgambar
    final Judul11 = Para(Text: "Tampak Samping",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

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
class Gambar_Tangga_I_1B_2O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_1B_b();
    final double TinggiCanvasa=TinggiCanvasG_2/2.9;
    final double JA = 2;
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
class Gambar_Tangga_I_1B_3O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_1B_c();
    final double TinggiCanvasa=TinggiCanvasG_3;
    final double JB = 70;
    final double JB2 = JB;
    final double JA = 60;
    double gaya =20;
    final double font = 16;
    canvas.scale(1);
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
    final Kete2 = Para(Text:MaAB.toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA-20+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(-TinggiT_1*3/10)*c));
//keterangan MaBA
  //  final Kete3 = Para(Text:MaBA.toStringAsFixed(1) + " kNm",font: 20);
   // canvas.drawParagraph(Kete3.toKetW(),
     //   Offset((JA+20+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+5+(-TinggiT_1*4/5)*c));
//keterangan beban terfaktor
    final Kete4 = Para(Text:BebanTerfaktorTangga_1.toStringAsFixed(1) + " kN/m",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-80+(PanjangT_1/2)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_1/2)*c));
//keterangan beban FHAB
    final Kete5 = Para(Text:FHbAB.toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB*1.5-JK*2+(0.0)*c));
//keterangan beban FVAB
    final Kete6 = Para(Text:FVbAB.toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*4+(0.0)*c));
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
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB2-gaya+(-TinggiT_1)*c),
        Line9);
    for (var i = 0; i <= (PanjangB_1/20).toRound(0); i++) {
      canvas.drawLine(
          Offset((JA+(PanjangT_1+PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_1)*c),
          Offset((JA+(PanjangT_1+PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-gaya+(-TinggiT_1)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_1+PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_1)*c),
          Offset((JA+5+(PanjangT_1+PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(-TinggiT_1)*c),
          Line9);
      canvas.drawLine(
          Offset((JA+(PanjangT_1+PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2+(-TinggiT_1)*c),
          Offset((JA-5+(PanjangT_1+PanjangB_1/(PanjangB_1/20).toRound(0)*i)*c).toMirror(M, MV),
              TinggiCanvasa - JB2-5+(-TinggiT_1)*c),
          Line9);
    }

    //kurf bordes kiri
    // arc1.moveTo((JA+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+20+(0.0)*c);
    // arc1.arcToPoint(
    //     Offset((JA+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+(0.0)*c),
    //     radius: Radius.circular(2),
    //     clockwise: false
    // );
    // canvas.drawPath(arc1, Line10);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+(0.0)*c),
    //     Offset((JA-4.5+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+4.5+(0.0)*c),
    //     Line9);
    // canvas.drawLine(
    //     Offset((JA+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40+(0.0)*c),
    //     Offset((JA-4.5+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+40-4.5+(0.0)*c),
    //     Line9);
    //kanan
    arc1.moveTo((JA+(PanjangT_1+PanjangB_1*7/10)*c).toMirror(M, MV),
        TinggiCanvasa-JB2+20+(-TinggiT_1)*c);
    arc1.arcToPoint(
        Offset((JA+(PanjangT_1+PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_1)*c),
        radius: Radius.circular(2),
        clockwise: true
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_1)*c),
        Offset((JA+4.5+(PanjangT_1+PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40-4.5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1*7/10)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+40+(-TinggiT_1)*c),
        Offset((JA+4.5+(PanjangT_1+PanjangB_1*7/10)*c).toMirror(M, MV),
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
        Offset((JA+JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Offset((JA+JK+20+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Offset((JA+JK+5+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+(-TinggiT_1)*c),
        Offset((JA+JK+5+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2-5+(-TinggiT_1)*c),
        Line9);
    //V
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+20+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_1)*c),
        Offset((JA-5+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+(-TinggiT_1)*c),
        Offset((JA+5+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa-JB2+JK+5+(-TinggiT_1)*c),
        Line9);

    //keterangana bordes titik B
   // final Kete9 = Para(Text:"B",font: 20);
    //canvas.drawParagraph(Kete9.toKetW(),
      //  Offset((JA-JK-10+(PanjangT_1)*c).toMirror(M, MV) , (TinggiCanvasa - JB2 +10+(0.0)*c)));
    //titikC
   // final Kete10 = Para(Text:"C",font: 20);
    //canvas.drawParagraph(Kete10.toKetW(),
      //  Offset((JA+JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) , (TinggiCanvasa - JB2 +10+(0.0)*c)));

    //keterangan MaBC
//    final Kete11 = Para(Text:MbBC.toStringAsFixed(1) + " kNm",font: 20);
 //   canvas.drawParagraph(Kete11.toKetW(),
   //     Offset((JA-70+(PanjangT_1+PanjangB_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB2+60+(0.0)*c));
//keterangan MaCB
    final Kete12 = Para(Text:(-MaCB).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete12.toKetW(),
        Offset((JA-20+(PanjangT_1+PanjangB_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB2+60+(-TinggiT_1)*c));
//keterangan beban terfaktor
    final Kete13 = Para(Text:BebanTerfaktorBordes_1.toStringAsFixed(1) + " kN/m",font: font,);
    canvas.drawParagraph(Kete13.toKetW(),
        Offset((JA-80+(PanjangT_1+PanjangB_1*9/10)*c).toMirror(M, MV),TinggiCanvasa-JB2-gaya-30+(-TinggiT_1)*c));
//keterangan beban FHBC
   // final Kete14 = Para(Text:FHbBC.toStringAsFixed(1) + " kN",font: 20);
    //canvas.drawParagraph(Kete14.toKetW(),
      //  Offset((JA-JK*9+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2*1.5-JK*2+(0.0)*c));
//keterangan beban FVBC
   // final Kete15 = Para(Text:FVbBC.toStringAsFixed(1) + " kN",font: 20);
    //canvas.drawParagraph(Kete15.toKetW(),
      //  Offset((JA-JK*7+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK*3+(0.0)*c));
//keterangan beban FHCB
    final Kete16 = Para(Text:(-FHbCB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete16.toKetW(),
        Offset((JA+JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB2*1.5-JK*2+(-TinggiT_1)*c));
//keterangan beban FVCB
    final Kete17 = Para(Text:FVbCB.toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete17.toKetW(),
        Offset((JA+JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),TinggiCanvasa-JB2+JK*3+(-TinggiT_1)*c));
  }
  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_1B_5O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_1B_e();
    final double s = 1;
    final double font = 16;
    final double JB = 30;
    final double JA = 70;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa=TinggiCanvasG_5;

    canvas.scale(1);
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
        Offset((JA-JK*8+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa -JK*4+(-TinggiT_1+NBA*s*cc)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line2);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NBC*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NBC*s)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+NCB*s)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan NBC
    final Kete5 = Para(Text:(NBC).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*2+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1+NCB*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(-NCB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-NCB*s)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_1B_6O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c =(1.0).toG_I_1B_f();
    final s = 4;
    final double font =16;
    final double JB = 40;
    final double JA = 60;
    final double gaya =20;
    final double panah = 20;
    final double anak= 5;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa=TinggiCanvasG_6;
    canvas.scale(1);
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
    final Kete4 = Para(Text:(SAB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*2+(-SAB*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-SAB*cc*4)*c));
// keterangan NBA
    final Kete1 = Para(Text:(SBA).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*6+(PanjangT_1+SBA*4*cs)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(-TinggiT_1+SBA*4*cc)*c));

    //bordes
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
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
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+SCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+SCB*s)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan NBC
    final Kete5 = Para(Text:(SBC).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*7+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-SBC*s)*c));
// keterangan NCB
    final Kete6 = Para(Text:(SCB).toStringAsFixed(1) + " kN",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1+SCB*s)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_1B_7O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_1B_g();
    final double s = 6;
    final double font = 16;
    final double JB = 40;
    final double JA = 60;
    final double cs=cosa_1*sina_1;
    final double cc=cosa_1*cosa_1;
    final double TinggiCanvasa=TinggiCanvasG_7;
    canvas.scale(1);
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
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
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
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-MCB*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-MCB*s)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Line9);
    // keterangan MBC
    final Kete5 = Para(Text:(MBC).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*3+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-TinggiT_1-MBC*s)*c));
// keterangan MCB
    final Kete6 = Para(Text:(MCB).toStringAsFixed(1) + " kNm",font: font);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA-JK*3+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-TinggiT_1-MCB*s)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_I_1B_1G extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_I_1B_a();
    final double JA = 45;
    final double JB = 40;
    final double TinggiCanvasa=TinggiCanvasD_1;
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

    //tulangan tangga
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
    final KeteD4 = Para(Text:"D$Dtul_4-$Stul_4");
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
    final KeteD1 = Para(Text:"D$Dtul_1-$Stul_1");
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
    final KeteD2 = Para(Text:"D$Dtul_2-$Stul_2");
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
    final KeteD3 = Para(Text:"D$Dtul_3-$Stul_3");
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
    final KeteD5 = Para(Text:"D$Dtul_5-$Stul_5");
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
    final KeteD6 = Para(Text:"D$Dtul_6-$Stul_6");
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
    final KeteD7 = Para(Text:"D$Dtul_7-$Stul_7");
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
class Gambar_Tangga_I_1B_2G extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_I_1B_b();
    final double JA = 70;
    final double JA2 = LebarCanvas/2+70;
    final double JB = 70;
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
    final KeteD1 = Para(Text:"$Stul_8 D-$Dtul_8");
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
    final KeteD2 = Para(Text:"$Stul_9 D-$Dtul_9");
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
    final KeteD3 = Para(Text:"D$Dtul_10-$Stul_10");
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
    final KeteD12 = Para(Text:"$Stul_8 D-$Dtul_8");
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
    final KeteD22 = Para(Text:"$Stul_9 D-$Dtul_9");
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
    final KeteD32 = Para(Text:"D$Dtul_10-${JBGmina_1.toText()}");
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

Future PdfGambar1_I_1B_1() async {
  final double c = (1.0).toT_I_1B_a();
  final int r=4;
  final int x=340*r;
  final int y=220*r;
  final int TinggiCanvasa = (y/r).toInt();
  final recorder = ui.PictureRecorder();
  final double JB = 40;
  final double JA = 20;
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
          TinggiCanvasa - JB-JK*2+(-TinggiT_1)*c));
  final KeteALP_C = Para(Text:"C");
  canvas.drawParagraph(KeteALP_C.toKetB(),
      Offset(
          (JA-JK+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV) ,
          TinggiCanvasa - JB-JK*2+(-TinggiT_1)*c));

    //keterangan11 panjang tangga
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetB(),
        Offset((JA).toMirror(M, MV) , TinggiCanvasa - JB + JK));

    //keterangan14 panjang bordes
    final Kete14 = Para(Text: PanjangB_1.toStringAsFixed(0) + " cm",Lebar: PanjangB_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete14.toKetB(),
        Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK));

    //keterangan13
    final Kete13 = Para(Text: Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetB(),
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

    // keterangan vertikal
    //keterangan12 tinggi
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text: TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetB(),
        Offset(-TinggiCanvasa+JB,
            JA+(PanjangT_1+PanjangB_1+bB/2)*c+JK));

  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  return
  PdfGambar1 = await pngBytes;
}

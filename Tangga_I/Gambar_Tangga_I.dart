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
import 'package:perancangan_tangga_app/Tangga_I/Hitungan_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Gambar_Tangga_I.dart';


class Gambar_Tangga_I_1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
final double c = (1.0).toT_I_a();
    //judulgambar
    final Judul11 = Para(Text: "Tampak Samping",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan11
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+10).toMirror(M, MV), TinggiCanvasa - JB + 10));
    //keterangan13
    final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

    //Gambar12
    var path = Path();
    path.moveTo(JA, TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1; i++) {
      path.lineTo(JA + Antrede_1*c * (i - 1),
          TinggiCanvasa - JB - Optrede_1*c * i);
      path.lineTo(JA + Antrede_1*c * (i),
          TinggiCanvasa - JB - Optrede_1*c * i);
    }
    path.lineTo(JA + Antrede_1*c * (AntredeNT_1),
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1));
    path.lineTo(JA + Antrede_1*c, TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    for (var i = 0; i <= OptredeNT_1-1; i++){
      canvas.drawLine(Offset(JA+(i*Antrede_1)*c, TinggiCanvasa - JB-(i*Optrede_1)*c),
          Offset(JA+((i)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c), Line1);
      canvas.drawLine(Offset(JA+((i)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c),
          Offset(JA+((i+1)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c), Line1);
    }
    canvas.drawLine(Offset(JA,TinggiCanvasa-JB),
        Offset(JA+Antrede_1*c,TinggiCanvasa-JB),Line1);
    canvas.drawLine(Offset(JA+PanjangT_1*c,TinggiCanvasa-JB-TinggiT_1*c),
        Offset(JA+PanjangT_1*c,TinggiCanvasa-JB+(-TinggiT_1+Optrede_1)*c),Line1);
    canvas.drawLine(Offset(JA+Antrede_1*c,TinggiCanvasa-JB),
        Offset(JA+PanjangT_1*c,TinggiCanvasa-JB+(-TinggiT_1+Optrede_1)*c),Line1);

    canvas.drawLine(Offset(JA, TinggiCanvasa - JB + JK),
        Offset(JA + PanjangT_1*c, TinggiCanvasa - JB + JK), Line1);

    canvas.drawLine(
        Offset(JA + PanjangT_1*c + JK, TinggiCanvasa - JB),
        Offset(JA + PanjangT_1*c + JK,
            TinggiCanvasa - JB - TinggiT_1*c),
        Line1);

    // vertikal keterangan12
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB+(0.0)*c,
            JA+JK+(PanjangT_1)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final c = (1.0).toT_I_b();
    //judulgambar
    final Judul21 = Para(Text:"Tampak Atas",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul21.toJudul(), Offset(0, 20));

    //Gambar
    var path = Path();
    path.moveTo(JA,TinggiCanvasb- JB );
    path.lineTo(JA,TinggiCanvasb- JB - LebarT*c);
    path.lineTo(JA +PanjangT_1*c,
        TinggiCanvasb- JB - LebarT*c);
    path.lineTo(
        JA + PanjangT_1*c, TinggiCanvasb- JB );
    canvas.drawPath(path, Line3);

    for (var i = 0; i <= AntredeNT_1; i++) {
      canvas.drawLine(
          Offset(JA + i * Antrede_1*c,TinggiCanvasb- JB ),
          Offset(JA + i * Antrede_1*c,TinggiCanvasb- JB - (LebarT)*c),
          Line1);
    }
    canvas.drawLine(
        Offset(JA + (0.0)*c, TinggiCanvasb- JB ),
        Offset(JA + PanjangT_1*c, TinggiCanvasb- JB+(0.0)*c),
        Line1);
    canvas.drawLine(
        Offset(JA + (0.0)*c, TinggiCanvasb- JB +(-LebarT)*c),
        Offset(JA + PanjangT_1*c, TinggiCanvasb- JB+(-LebarT)*c),
        Line1);



    canvas.drawLine(
        Offset(JA + PanjangT_1*c + JK, TinggiCanvasb- JB ),
        Offset(JA + PanjangT_1*c+ JK, TinggiCanvasb- JB - LebarT*c),
        Line1);

    canvas.drawLine(
        Offset(JA,TinggiCanvasb - JB + JK),
        Offset(JA + PanjangT_1*c,
            TinggiCanvasb - JB + JK),
        Line1);

    //keterangan1
    final Kete22 = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete22.toKetW(),
        Offset((JA) +10,
            TinggiCanvasb -JB+ JK + (0.0)*c));
    //keterangan2
    canvas.rotate(270/180*pi);
    final Kete21 = Para(Text:LebarT.toStringAsFixed(0) + " cm",Lebar: LebarT*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete21.toKetW(),
        Offset(-TinggiCanvasb+JB+(0.0)*c,
            JA+JK+(PanjangT_1)*c));
  }
  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Judul31
    final judul31 = Para(Text: "Detail Jumlah Anak Tangga", Lebar: LebarCanvas);
    canvas.drawParagraph(judul31.toJudul(), Offset(0, 20));
    final satuan31 = Para(Text:"($settingSatuan)", Lebar: LebarCanvas,Posisi:TextAlign.center);
canvas.drawParagraph(satuan31.toSub(), Offset(0, 45));
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
    };
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
    };

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

class Gambar_Tangga_I_1m extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toM_I_a();
    final double TinggiCanvasa=TinggiCanvasm_1;
    final double JA= 30;
    final double font=20;
    //judulgambar
    final Judul11 = Para(Text: "Posisi ",Lebar: LebarCanvas,font:font);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));
    //garis
    canvas.drawLine(Offset(JA,TinggiCanvasa-JB),
        Offset(JA+(PanjangT_1)*c,TinggiCanvasa-JB+(-TinggiT_1)*c),Line1);
    //keteranganA
    final Kete = Para(Text:"A",font: font);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+(0.0)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (0.0)*c));
    //keteranganB
    final Kete13 = Para(Text:"B",font: font);
    canvas.drawParagraph(Kete13.toKetW(),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c));


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_I_1O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_a();
    //judulgambar
    final Judul11 = Para(Text: "Tampak Samping",Lebar: LebarCanvas);
    canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan11
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+10).toMirror(M, MV), TinggiCanvasa - JB + 10));
    //keterangan13
    final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

    //Gambar12
    var path = Path();
    path.moveTo(JA, TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1; i++) {
      path.lineTo(JA + Antrede_1*c * (i - 1),
          TinggiCanvasa - JB - Optrede_1*c * i);
      path.lineTo(JA + Antrede_1*c * (i),
          TinggiCanvasa - JB - Optrede_1*c * i);
    }
    path.lineTo(JA + Antrede_1*c * (AntredeNT_1),
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1));
    path.lineTo(JA + Antrede_1*c, TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    for (var i = 0; i <= OptredeNT_1-1; i++){
      canvas.drawLine(Offset(JA+(i*Antrede_1)*c, TinggiCanvasa - JB-(i*Optrede_1)*c),
          Offset(JA+((i)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c), Line1);
      canvas.drawLine(Offset(JA+((i)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c),
          Offset(JA+((i+1)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c), Line1);
    }
    canvas.drawLine(Offset(JA,TinggiCanvasa-JB),
        Offset(JA+Antrede_1*c,TinggiCanvasa-JB),Line1);
    canvas.drawLine(Offset(JA+PanjangT_1*c,TinggiCanvasa-JB-TinggiT_1*c),
        Offset(JA+PanjangT_1*c,TinggiCanvasa-JB+(-TinggiT_1+Optrede_1)*c),Line1);
    canvas.drawLine(Offset(JA+Antrede_1*c,TinggiCanvasa-JB),
        Offset(JA+PanjangT_1*c,TinggiCanvasa-JB+(-TinggiT_1+Optrede_1)*c),Line1);

    canvas.drawLine(Offset(JA, TinggiCanvasa - JB + JK),
        Offset(JA + PanjangT_1*c, TinggiCanvasa - JB + JK), Line1);

    canvas.drawLine(
        Offset(JA + PanjangT_1*c + JK, TinggiCanvasa - JB),
        Offset(JA + PanjangT_1*c + JK,
            TinggiCanvasa - JB - TinggiT_1*c),
        Line1);

    // vertikal keterangan12
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB+(0.0)*c,
            JA+JK+(PanjangT_1)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_2O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_b();
    final double TinggiCanvasa = TinggiCanvasG_2/2.9;
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
    final Kete3 = Para(Text:(TebalPelatTanggaPilih_1/10).toStringAsFixed(1)+" cm",font: 7);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+JK*1.5+(Antrede_1*2)*c).toMirror(M, MV) ,
            (TinggiCanvasa - JB-JK+(-Optrede_1*1.3)*c)));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_3O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_c();
    final double JB = 60;
    final double JA = 60;
    double gaya =20;
    final double TinggiCanvasa=TinggiCanvasG_3;
    canvas.scale(1);
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
    //kurf atas
    // canvas.drawArc(Offset((JA+(PanjangT_1/5).toG_I_c()).toMirror(M, MV),
    //     TinggiCanvasa - JB+(-TinggiT_1/5).toG_I_c())& Size(50,50), pi, 1*pi,false , Line7);

    final arc1 = Path();
    arc1.moveTo((JA+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_1*4/5)*c);
    arc1.arcToPoint(
        Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
        radius: Radius.circular(2),
        clockwise: true
    );
    canvas.drawPath(arc1, Line10);
    canvas.drawLine(
        Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
        Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1-5+(-TinggiT_1*4/5)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
        Offset((JA+20*sina_1+5+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
        Line9);

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
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
        Offset((JA+JK+20+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
        Offset((JA+JK+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
        Offset((JA+JK+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(-TinggiT_1)*c),
        Line9);

    //V
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
        Offset((JA-5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
        Offset((JA+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_1)*c),
        Line9);

   //keterangan MaAB
    final Kete2 = Para(Text:MaAB.toStringAsFixed(1) + " kNm",font: 20);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset((JA-20+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(-TinggiT_1*3/10)*c));
//keterangan MaBA
    final Kete3 = Para(Text:(-MaBA).toStringAsFixed(1) + " kNm",font: 20);
    canvas.drawParagraph(Kete3.toKetW(),
        Offset((JA+20+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+5+(-TinggiT_1*4/5)*c));
//keterangan beban terfaktor
    final Kete4 = Para(Text:BebanTerfaktorTangga_1.toStringAsFixed(1) + " kN/m",font: 20);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-80+(PanjangT_1/2)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_1/2)*c));
//keterangan beban FHAB
    final Kete5 = Para(Text:FHbAB.toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete5.toKetW(),
        Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB*1.5-JK*2+(0.0)*c));
//keterangan beban FVAB
    final Kete6 = Para(Text:FVbAB.toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete6.toKetW(),
        Offset((JA+JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*2+(0.0)*c));
//keterangan beban FHBA
    final Kete7 = Para(Text:FHbAB.toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete7.toKetW(),
        Offset((JA+JK*2+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB*1.5-JK*2+(-TinggiT_1)*c));
//keterangan beban FVBA
    final Kete8 = Para(Text:FVbAB.toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete8.toKetW(),
        Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*3+(-TinggiT_1)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_5O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_e();
    final double s = 2;
    final double JB = 20;
    final double JA = 60;
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
        Offset((JA+(PanjangT_1-NBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NBA*s*cosa_1)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(-NAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-NAB*cosa_1*s)*c),
        Offset((JA+(PanjangT_1-NBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NBA*s*cosa_1)*c),
        Line9);


// keterangan NAB
    final Kete4 = Para(Text:(NAB).toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-NAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*2+(-NAB*cosa_1*s)*c));
// keterangan NBA
    final Kete1 = Para(Text:(NBA).toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*8+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1-NBA*s*cosa_1)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_6O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c =(1.0).toG_I_f();
    final double s = 2;
    final double JB = 40;
    final double JA = 50;
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
    final Kete4 = Para(Text:(SAB).toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*2+(-SAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*4+(-SAB*cosa_1*s)*c));
// keterangan NBA
    final Kete1 = Para(Text:(SBA).toStringAsFixed(1) + " kN",font: 20);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*6+(PanjangT_1+SBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+JK+(-TinggiT_1+SBA*s*cosa_1)*c));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Gambar_Tangga_I_7O extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toG_I_g();
    final double s = 4;
    final double JB = 20;
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
        Offset((JA+(-MAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-MAB*cosa_1*s)*c),
        Line9);
    canvas.drawLine(
        Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+MBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1+MBA*s*cosa_1)*c),
        Line9);

    var arc = Path();
    arc.moveTo(
      //kiri
        (JA+(-MAB*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-MAB*cosa_1*s)*c);
    arc.quadraticBezierTo(
      //tengah
        (JA+(JAB*100*cosa_1-(-MLAB)*s*4*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-JAB*100*sina_1-(-MLAB)*s*4*cosa_1)*c,
        //kanan
        (JA+(PanjangT_1+MBA*s*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-TinggiT_1+MBA*s*cosa_1)*c);
    canvas.drawPath(arc, Line10);

// keterangan MAB
    final Kete4 = Para(Text:(MAB).toStringAsFixed(1) + " kNm",font: 20);
    canvas.drawParagraph(Kete4.toKetW(),
        Offset((JA-JK*3+(-MAB*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK+(-SAB*cosa_1*s)*c));
// keterangan MBA
    final Kete1 = Para(Text:(-MBA).toStringAsFixed(1) + " kNm",font: 20);
    canvas.drawParagraph(Kete1.toKetW(),
        Offset((JA-JK*5+(PanjangT_1+MBA*s*sina_1)*c).toMirror(M, MV),
            TinggiCanvasa - JB-JK*7+(-TinggiT_1)*c));
// keterangan MLAB
    final Kete2 = Para(Text:(MLAB).toStringAsFixed(1) + " kNm",font: 20);
    canvas.drawParagraph(Kete2.toKetW(),
        Offset( (JA+(JAB*100*cosa_1-(MLAB-MAB)*2*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-JAB*100*sina_1-(MLAB-MAB)*2*cosa_1)*c,));
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class Gambar_Tangga_I_1G extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double c = (1.0).toD_I_a();
    final double JA = 30;
    final double JB = 30;
   final double TinggiCanvasa=TinggiCanvasD_1;
    //judulgambar
    // final Judul11 = Para(Text: "Tampak Samping",Lebar: LebarCanvas);
    // canvas.drawParagraph(Judul11.toJudul(), Offset(0, 20));

    //keterangan11
    final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(Kete.toKetW(),
        Offset((JA+10).toMirror(M, MV), TinggiCanvasa - JB + 10));
    //keterangan13
    final Kete13 = Para(Text:Sudut_1.toStringAsFixed(0) + " °");
    canvas.drawParagraph(
        Kete13.toKetW(),
        Offset(JA + (PanjangT_1 / 3)*c,
            TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

    //Gambar12
    var path = Path();
    path.moveTo(JA, TinggiCanvasa - JB);
    for (var i = 0; i <= OptredeNT_1; i++) {
      path.lineTo(JA + Antrede_1*c * (i - 1),
          TinggiCanvasa - JB - Optrede_1*c * i);
      path.lineTo(JA + Antrede_1*c * (i),
          TinggiCanvasa - JB - Optrede_1*c * i);
    }
    path.lineTo(JA + Antrede_1*c * (AntredeNT_1),
        TinggiCanvasa - JB - Optrede_1*c * (OptredeNT_1 - 1));
    path.lineTo(JA + Antrede_1*c, TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    for (var i = 0; i <= OptredeNT_1-1; i++){
      canvas.drawLine(Offset(JA+(i*Antrede_1)*c, TinggiCanvasa - JB-(i*Optrede_1)*c),
          Offset(JA+((i)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c), Line1);
      canvas.drawLine(Offset(JA+((i)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c),
          Offset(JA+((i+1)*Antrede_1)*c, TinggiCanvasa - JB-((i+1)*Optrede_1)*c), Line1);
    }
    canvas.drawLine(Offset(JA,TinggiCanvasa-JB),
        Offset(JA+Antrede_1*c,TinggiCanvasa-JB),Line1);
    canvas.drawLine(Offset(JA+PanjangT_1*c,TinggiCanvasa-JB-TinggiT_1*c),
        Offset(JA+PanjangT_1*c,TinggiCanvasa-JB+(-TinggiT_1+Optrede_1)*c),Line1);
    canvas.drawLine(Offset(JA+Antrede_1*c,TinggiCanvasa-JB),
        Offset(JA+PanjangT_1*c,TinggiCanvasa-JB+(-TinggiT_1+Optrede_1)*c),Line1);

    canvas.drawLine(Offset(JA, TinggiCanvasa - JB + JK),
        Offset(JA + PanjangT_1*c, TinggiCanvasa - JB + JK), Line1);

    canvas.drawLine(
        Offset(JA + PanjangT_1*c + JK, TinggiCanvasa - JB),
        Offset(JA + PanjangT_1*c + JK,
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
    final KeteD4 = Para(Text:"D$Dtul_4-$Stul_4");
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
    final KeteD1 = Para(Text:"D$Dtul_1-$Stul_1");
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
    final KeteD2 = Para(Text:"D$Dtul_2-$Stul_2");
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
    final KeteD3 = Para(Text:"D$Dtul_3-$Stul_3");
    canvas.drawParagraph(
        KeteD3.toKetW(),
        Offset(JA+JK*2 + (PanjangT_1*10/20-Selimut/10)*c,
            TinggiCanvasa - JB+JK*2 + (-TinggiT_1*10/20-Selimut/10+Optrede_1)*c));



    // vertikal keterangan12
    canvas.rotate(270/180*pi);
    final Kete12 = Para(Text:TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
    canvas.drawParagraph(
        Kete12.toKetW(),
        Offset(-TinggiCanvasa+JB+(0.0)*c,
            JA+JK+(PanjangT_1)*c));

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

void generatePdfGambar1_I() async {
  final double c = (1.0).toT_I_a();
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


//keterangan11 panjang tangga
  final Kete = Para(Text:PanjangT_1.toStringAsFixed(0) + " cm",Lebar: PanjangT_1*c,Posisi: TextAlign.center);
  canvas.drawParagraph(Kete.toKetB(),
      Offset((JA).toMirror(M, MV) , (TinggiCanvasa - JB + JK)));

  //keterangan13
  final Kete13 = Para(Text: Sudut_1.toStringAsFixed(0) + " °");
  canvas.drawParagraph(
      Kete13.toKetB(),
      Offset((JA + (PanjangT_1 / 3)*c),
          TinggiCanvasa - JB - (TinggiT_1 / 5)*c));

  //Gambar12
  for (var i = 0; i <= OptredeNT_1-1; i++) {
    canvas.drawLine(
        Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i))*c),
        Offset((JA+(Antrede_1*i)*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
        Line5);
    canvas.drawLine(
        Offset((JA+(Antrede_1*(i))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
        Offset((JA+(Antrede_1*(i+1))*c).toMirror(M, MV), TinggiCanvasa - JB+(-Optrede_1*(i+1))*c),
        Line5);
  }
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
      Offset((JA+(Antrede_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(Antrede_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
      Line5);
//garis bawah
  canvas.drawLine(
      Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + JK),
      Offset((JA + PanjangT_1*c).toMirror(M, MV), TinggiCanvasa - JB + JK),
      Line5);

  //garis kanan
  canvas.drawLine(
      Offset((JA + (PanjangT_1+PanjangB_1)*c + JK).toMirror(M, MV), TinggiCanvasa - JB),
      Offset((JA + (PanjangT_1+PanjangB_1)*c + JK).toMirror(M, MV),
          TinggiCanvasa - JB - TinggiT_1*c),
      Line5);

  // keterangan vertikal
  //keterangan12 tinggi
  canvas.rotate(270/180*pi);
  final Kete12 = Para(Text: TinggiT_1.toStringAsFixed(0) + " cm",Lebar: TinggiT_1*c,Posisi: TextAlign.center);
  canvas.drawParagraph(
      Kete12.toKetB(),
      Offset(-TinggiCanvasa+JB,
          JA+(PanjangT_1+PanjangB_1)*c+JK));

  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar1 = pngBytes;
}
void generatePdfGambar2_I() async {
  final double c = (1.0).toG_I_b();
  final int r =4;
  final int x=170*r;
  final int y=80*r;
  final recorder = ui.PictureRecorder();
  final double JB = 20;
  final double JA = 20;
  final TinggiCanvasa = y/r;
  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(x.toDouble(), y.toDouble())));
  canvas.scale(r.toDouble());

  canvas.drawLine(
      Offset((JA + (0.0)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(0.00)*c)),
      Offset((JA + (0.0)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1)*c)),
      Line5);
  canvas.drawLine(
      Offset(((JA + (0.0)*c + JK).toMirror(M, MV)),
          (TinggiCanvasa - JB+(-Optrede_1)*c)),
      Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1)*c)),
      Line5);
  canvas.drawLine(
      Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(-Optrede_1)*c)),
      Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2)*c)),
      Line5);
  canvas.drawLine(
      Offset((JA + (Antrede_1)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(-Optrede_1*2)*c)),
      Offset((JA + (Antrede_1*2)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2)*c)),
      Line5);
  canvas.drawLine(
      Offset((JA + (Antrede_1*2.5)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB/2+(0.00)*c)),
      Offset((JA + (Antrede_1*2.5)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB/2 +(-Optrede_1)*c)),
      Line5);
  canvas.drawLine(
      Offset(((JA + (Antrede_1*2.5)*c + JK).toMirror(M, MV)),
          (TinggiCanvasa - JB/2+(-Optrede_1)*c)),
      Offset((JA + (Antrede_1*3.5)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB/2 +(-Optrede_1)*c)),
      Line5);
  double miringy =TinggiMiringAnakTangga_1*cosa_1;
  double miringx =TinggiMiringAnakTangga_1*sina_1;
  double tebalsy =15*cosa_1;
  double tebalsx =15*sina_1;
  canvas.drawLine(
      Offset((JA + (Antrede_1*2+tebalsx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(-Optrede_1*2+tebalsy)*c)),
      Offset((JA + (Antrede_1*2-miringx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2-miringy)*c)),
      Line6);
  canvas.drawLine(
      Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(tebalsy)*c)),
      Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-miringy)*c)),
      Line6);
  canvas.drawLine(
      Offset((JA + (-miringx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(-miringy)*c)),
      Offset((JA + (Antrede_1*2-miringx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2-miringy)*c)),
      Line6);
  canvas.drawLine(
      Offset((JA + (-miringx/2)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(-miringy/2)*c)),
      Offset((JA + (Antrede_1*2-miringx/2)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2-miringy/2)*c)),
      Line6);
  canvas.drawLine(
      Offset((JA + (0.0)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(0.0)*c)),
      Offset((JA + (Antrede_1*2)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2)*c)),
      Line6);
  canvas.drawLine(
      Offset((JA + (tebalsx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB+(tebalsy)*c)),
      Offset((JA + (Antrede_1*2+tebalsx)*c + JK).toMirror(M, MV),
          (TinggiCanvasa - JB +(-Optrede_1*2+tebalsy)*c)),
      Line6);


  //keterangan
  //keterangan Antrede
  final Kete = Para(Text:Antrede_1.toStringAsFixed(0) + " cm",Lebar: Antrede_1*c,Posisi: TextAlign.center,font: 7);
  canvas.drawParagraph(Kete.toKetB(),
      Offset((JA+JK+(Antrede_1*2.5)*c).toMirror(M, MV) , (TinggiCanvasa - JB/2-JK +(-Optrede_1).toG_I_b())));
  //keterangan1 Optrede
  final Kete1 = Para(Text:Optrede_1.toStringAsFixed(0) + " cm",Lebar: Optrede_1*c,font: 7);
  canvas.drawParagraph(Kete1.toKetB(),
      Offset((JA+JK+(Antrede_1*1.7)*c).toMirror(M, MV) , (TinggiCanvasa - JB/2+(-Optrede_1/2).toG_I_b())));
//keterangan2 0.5 tebal plat tangga
  final Kete2 = Para(Text:TinggiMiring5AnakTangga_1.toStringAsFixed(1) + " cm",font: 7);
  canvas.drawParagraph(Kete2.toKetB(),
      Offset((JA+JK/2+(Antrede_1*2)*c).toMirror(M, MV) , (TinggiCanvasa - JB-JK*1.5+(-Optrede_1*2).toG_I_b())));
//keterangan3 Tebal pelat tangga pilih
  final Kete3 = Para(Text:(TebalPelatTanggaPilih_1/10).toStringAsFixed(1)+" cm",font: 7);
  canvas.drawParagraph(Kete3.toKetB(),
      Offset((JA+JK*1.5+(Antrede_1*2)*c).toMirror(M, MV) , (TinggiCanvasa - JB-JK+(-Optrede_1*1.5).toG_I_b())));


  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar2 = pngBytes;
}
void generatePdfGambar3_I() async {
  final double c = (1.0).toG_I_c();
  final int r =4;
  final int x=400*r;
  final int y=250*r;
  final recorder = ui.PictureRecorder();
  final double JB = 40;
  final double JA = 70;
  final TinggiCanvasa = y/r;
  double gaya =20;
  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(x.toDouble(), y.toDouble())));
  canvas.scale(r.toDouble());

  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line5);

  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(0.0)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV), TinggiCanvasa - JB-gaya+(-TinggiT_1)*c),
      Line5);
  for (var i = 0; i <= (PanjangT_1/20).toRound(0); i++) {
    canvas.drawLine(
        Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
        Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
            TinggiCanvasa - JB-gaya+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
        Line5);
    canvas.drawLine(
        Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
        Offset((JA+5+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
            TinggiCanvasa - JB-5+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
        Line5);
    canvas.drawLine(
        Offset((JA+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
            TinggiCanvasa - JB+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
        Offset((JA-5+(PanjangT_1/(PanjangT_1/20).toRound(0)*i)*c).toMirror(M, MV),
            TinggiCanvasa - JB-5+(-TinggiT_1/(PanjangT_1/20).toRound(0)*i)*c),
        Line5);
  }
  //kurf atas
  // canvas.drawArc(Offset((JA+(PanjangT_1/5).toG_I_c()).toMirror(M, MV),
  //     TinggiCanvasa - JB+(-TinggiT_1/5).toG_I_c())& Size(50,50), pi, 1*pi,false , Line7);

  final arc1 = Path();
  arc1.moveTo((JA+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_1*4/5)*c);
  arc1.arcToPoint(
    Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
    radius: Radius.circular(2),
    clockwise: true
  );
  canvas.drawPath(arc1, Line7);
  canvas.drawLine(
      Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
      Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1-5+(-TinggiT_1*4/5)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+20*sina_1+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
      Offset((JA+20*sina_1+5+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*4/5)*c),
      Line5);

  //bawah
  arc1.moveTo((JA+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+(-TinggiT_1*3/10)*c);
  arc1.arcToPoint(
      Offset((JA+20*sina_1+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*3/10)*c),
      radius: Radius.circular(2),
      clockwise: false
  );
  canvas.drawPath(arc1, Line7);
  canvas.drawLine(
      Offset((JA+20*sina_1+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*3/10)*c),
      Offset((JA+20*sina_1-4.5+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+4.5+(-TinggiT_1*3/10)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+20*sina_1+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1+(-TinggiT_1*3/10)*c),
      Offset((JA+20*sina_1-4.5+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20*cosa_1-4.5+(-TinggiT_1*3/10)*c),
      Line5);
//garis gaya //AB //H
  canvas.drawLine(
      Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
      Offset((JA-JK-20+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
      Line5);
  canvas.drawLine(
      Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
      Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(0.0)*c),
      Line5);
  canvas.drawLine(
      Offset((JA-JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+(0.0)*c),
      Offset((JA-JK-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(0.0)*c),
      Line5);

  //V
  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
      Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(0.0)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
      Offset((JA-5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(0.0)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(0.0)*c),
      Offset((JA+5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(0.0)*c),
      Line5);

  //BA //H
  canvas.drawLine(
      Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
      Offset((JA+JK+20+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
      Offset((JA+JK+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+5+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+(-TinggiT_1)*c),
      Offset((JA+JK+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB-5+(-TinggiT_1)*c),
      Line5);

  //V
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+20+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
      Offset((JA-5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+(-TinggiT_1)*c),
      Offset((JA+5+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK+5+(-TinggiT_1)*c),
      Line5);

  //keterangan A
  final Kete = Para(Text:"A",font: 12);
  canvas.drawParagraph(Kete.toKetB(),
      Offset((JA-JK-10+(0.0)*c).toMirror(M, MV) , (TinggiCanvasa - JB +10+(0.0)*c)));
  //keterangan B
  final Kete1 = Para(Text:"B",font: 12);
  canvas.drawParagraph(Kete1.toKetB(),
      Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV) , (TinggiCanvasa - JB +10+(-TinggiT_1)*c)));
  //keterangan MaAB
  final Kete2 = Para(Text:MaAB.toStringAsFixed(1) + " kNm",font: 10);
  canvas.drawParagraph(Kete2.toKetB(),
      Offset((JA-20+(PanjangT_1*3/10)*c).toMirror(M, MV),TinggiCanvasa-JB+20+20+(-TinggiT_1*3/10)*c));
//keterangan MaBA
  final Kete3 = Para(Text:MaBA.toStringAsFixed(1) + " kNm",font: 10);
  canvas.drawParagraph(Kete3.toKetB(),
      Offset((JA+20+(PanjangT_1*4/5)*c).toMirror(M, MV),TinggiCanvasa-JB+20+5+(-TinggiT_1*4/5)*c));
//keterangan beban terfaktor
  final Kete4 = Para(Text:BebanTerfaktorTangga_1.toStringAsFixed(1) + " kN/m",font: 10);
  canvas.drawParagraph(Kete4.toKetB(),
      Offset((JA-40+(PanjangT_1/2)*c).toMirror(M, MV),TinggiCanvasa-JB-gaya-30+(-TinggiT_1/2)*c));
//keterangan beban FHAB
  final Kete5 = Para(Text:FHbAB.toStringAsFixed(1) + " kN",font: 10);
  canvas.drawParagraph(Kete5.toKetB(),
      Offset((JA-JK*5+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB-JK*2+(0.0)*c));
//keterangan beban FVAB
  final Kete6 = Para(Text:FVbAB.toStringAsFixed(1) + " kN",font: 10);
  canvas.drawParagraph(Kete6.toKetB(),
      Offset((JA+JK+(0.0)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*2+(0.0)*c));
//keterangan beban FHBA
  final Kete7 = Para(Text:FHbAB.toStringAsFixed(1) + " kN",font: 10);
  canvas.drawParagraph(Kete7.toKetB(),
      Offset((JA+JK*2+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB-JK*2+(-TinggiT_1)*c));
//keterangan beban FVBA
  final Kete8 = Para(Text:FVbAB.toStringAsFixed(1) + " kN",font: 10);
  canvas.drawParagraph(Kete8.toKetB(),
      Offset((JA+JK+(PanjangT_1)*c).toMirror(M, MV),TinggiCanvasa-JB+JK*3+(-TinggiT_1)*c));


  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar3 = pngBytes;
}

void generatePdfGambar5_I() async {
  final double c = (1.0).toG_I_c();
  final int r =4;
  final int x=400*r;
  final int y=250*r;
  final recorder = ui.PictureRecorder();
  final double JB = 40;
  final double JA = 70;
  final TinggiCanvasa = y/r;
  final double gaya =20;
  final double panah = 20;
  final double anak= 5;
  final double cs=cosa_1*sina_1;
  final double cc=cosa_1*cosa_1;

  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(x.toDouble(), y.toDouble())));
  canvas.scale(r.toDouble());

  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(-NAB*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-NAB*cc*4)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1-NBA*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-NBA*4*cc)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(-NAB*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-NAB*cc*4)*c),
      Offset((JA+(PanjangT_1-NBA*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-NBA*4*cc)*c),
      Line5);


// keterangan NAB
  final Kete4 = Para(Text:(NAB).toStringAsFixed(1) + " kN/m",font: 10);
  canvas.drawParagraph(Kete4.toKetB(),
      Offset((JA-JK*3+(-NAB*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB-JK*2+(-NAB*cc*4)*c));
// keterangan NBA
  final Kete1 = Para(Text:(NBA).toStringAsFixed(1) + " kN/m",font: 10);
  canvas.drawParagraph(Kete1.toKetB(),
      Offset((JA-JK*5+(PanjangT_1-NBA*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1-NBA*4*cc)*c));

  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar5 = pngBytes;
}
void generatePdfGambar6_I() async {
  final double c =(1.0).toG_I_c();
  final int r =4;
  final int x=400*r;
  final int y=250*r;
  final recorder = ui.PictureRecorder();
  final double JB = 40;
  final double JA = 70;
  final TinggiCanvasa = y/r;
  final double gaya =20;
  final double panah = 20;
  final double anak= 5;
  final double cs=cosa_1*sina_1;
  final double cc=cosa_1*cosa_1;

  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(x.toDouble(), y.toDouble())));
  canvas.scale(r.toDouble());

  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(-SAB*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-SAB*cc*4)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1+SBA*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1+SBA*4*cc)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(-SAB*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-SAB*cc*4)*c),
      Offset((JA+(PanjangT_1+SBA*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1+SBA*4*cc)*c),
      Line5);


// keterangan NAB
  final Kete4 = Para(Text:(SAB).toStringAsFixed(1) + " kN/m",font: 10);
  canvas.drawParagraph(Kete4.toKetB(),
      Offset((JA-JK*3+(-SAB*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB-JK*2+(-SAB*cc*4)*c));
// keterangan NBA
  final Kete1 = Para(Text:(SBA).toStringAsFixed(1) + " kN/m",font: 10);
  canvas.drawParagraph(Kete1.toKetB(),
      Offset((JA-JK*5+(PanjangT_1+SBA*4*cs)*c).toMirror(M, MV),
          TinggiCanvasa - JB+JK+(-TinggiT_1+SBA*4*cc)*c));

  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar6 = pngBytes;
}
void generatePdfGambar7_I() async {
  final double c = (0.0).toG_I_c();
  final int r =4;
  final int x=400*r;
  final int y=250*r;
  final recorder = ui.PictureRecorder();
  final double JB = 40;
  final double JA = 70;
  final TinggiCanvasa = y/r;
  final double gaya =20;
  final double panah = 20;
  final double anak= 5;
  final double cs=cosa_1*sina_1;
  final double cc=cosa_1*cosa_1;

  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(x.toDouble(), y.toDouble())));
  canvas.scale(r.toDouble());

  canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Line5);
   canvas.drawLine(
      Offset((JA+(0.0)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(0.0)*c),
      Offset((JA+(-MAB*4*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-MAB*cosa_1*4)*c),
      Line5);
  canvas.drawLine(
      Offset((JA+(PanjangT_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1)*c),
      Offset((JA+(PanjangT_1+MBA*4*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB+(-TinggiT_1+MBA*4*cosa_1)*c),
      Line5);

  var arc = Path();
  arc.moveTo(
    //kiri
      (JA+(-MAB*4*sina_1)*c).toMirror(M, MV),
      TinggiCanvasa - JB+(-MAB*cosa_1*4)*c);
  arc.quadraticBezierTo(
    //tengah
      (JA+(JAB*100*cosa_1-(MLAB-MAB)*4*sina_1)*c).toMirror(M, MV),
      TinggiCanvasa - JB+(-JAB*100*sina_1-(MLAB-MAB)*4*cosa_1)*c,
      //kanan
      (JA+(PanjangT_1+MBA*4*sina_1)*c).toMirror(M, MV),
      TinggiCanvasa - JB+(-TinggiT_1+MBA*4*cosa_1)*c);
  canvas.drawPath(arc, Line7);

// keterangan MAB
  final Kete4 = Para(Text:(MAB).toStringAsFixed(1) + " kNm",font: 10);
  canvas.drawParagraph(Kete4.toKetB(),
      Offset((JA-JK*3+(-MAB*4*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB-JK+(-SAB*cc*4)*cosa_1));
// keterangan MBA
  final Kete1 = Para(Text:(MBA).toStringAsFixed(1) + " kNm",font: 10);
  canvas.drawParagraph(Kete1.toKetB(),
      Offset((JA-JK*5+(PanjangT_1+MBA*4*sina_1)*c).toMirror(M, MV),
          TinggiCanvasa - JB-JK+(-TinggiT_1)*c));
// keterangan MLAB
  final Kete2 = Para(Text:(MLAB).toStringAsFixed(1) + " kN/m",font: 10);
  canvas.drawParagraph(Kete2.toKetB(),
      Offset( (JA+(JAB*100*cosa_1-(MLAB-MAB)*2*sina_1)*c).toMirror(M, MV),
        TinggiCanvasa - JB+(-JAB*100*sina_1-(MLAB-MAB)*2*cosa_1)*c,));


  final picture = recorder.endRecording();
  final img = await picture.toImage(x, y);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar7 = pngBytes;
}

void generatePdfGambar_I() async{
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder, Rect.fromPoints(Offset(0.0, 0.0), Offset(0, 0)));
  final picture = recorder.endRecording();
  final img = await picture.toImage(1,1);
  final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
  PdfGambar1 = pngBytes;
  PdfGambar2 = pngBytes;
  PdfGambar3 = pngBytes;
  PdfGambar4 = pngBytes;
  PdfGambar5 = pngBytes;
  PdfGambar6 = pngBytes;
  PdfGambar7 = pngBytes;

  generatePdfGambar1_I();
  generatePdfGambar2_I();
  generatePdfGambar3_I();

  generatePdfGambar5_I();
  generatePdfGambar6_I();
  generatePdfGambar7_I();
}

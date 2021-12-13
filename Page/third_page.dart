import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tangga_I/Desain_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/database.dart';
//import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'dart:math';

class ThirdPage extends StatefulWidget {
  final Projek projek;

  ThirdPage({this.projek});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController controlerNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _ScaffoldKey,
        appBar: AppBar(
          title: Text('Bentuk Tangga'),
          backgroundColor: Colors.green[500],

          //automaticallyImplyLeading: true,
        ),
        body: Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card_bentuk_tangga('Tangga I', widget.projek,Tangga_I()),
              Card_bentuk_tangga('Tangga I 1 Bordes', widget.projek,Tangga_I_1B()),
              Card_bentuk_tangga('Tangga L', widget.projek,Tangga_L()),
              Card_bentuk_tangga('Tangga U 1 Bordes', widget.projek,Tangga_U_1B()),
              Card_bentuk_tangga('Tangga U 2 Bordes', widget.projek,Tangga_U_2B()),
              // Card_bentuk_tangga('Tangga U 2 Bordes', widget.projek),
            ],
          ),
        ));
  }

  Widget Card_bentuk_tangga(String bentuk_tangga, Projek projek,CustomPainter painter) {
    submit() {
      Task task = Task(
        jenis: bentuk_tangga,
        nama: controlerNama.text,
        keterangan: '',
        panjangT1: 0,
        tinggiT1: 0,
        optredeR1: 0,
        panjangT2: 0,
        tinggiT2: 0,
        optredeR2: 0,
        panjangT3: 0,
        tinggiT3: 0,
        optredeR3: 0,
        tebalT1: 0,
        tebalT2: 0,
        tebalT3: 0,
        tebalB: 0,
        lebarT: 0,
        lebarB: 0,
        panjangB: 0,
        Beton: 0,
        Keramik: 0,
        Spesi: 0,
        Hand: 0,
        hidup: 0,
        tebalKeramik: 0,
        tebalSpesi: 0,
        tebalDinding: 0,
        fc: 0,
        fy: 0,
        D: 0,
        S: 0,

        Ds:0,
        fcB:0,
        fyB:0,
        DB:0,
        sB:0,
        DsB:0,

        bB:0,
        hB:0,
        Dinding:0,

        satuan:'cm' ,
        pembagiA: '1 cm',
        pembagiO: '1 cm',
        ukuranTangga: 'Sama',
        visible: '0',
        mirror: '0',
        teratas: 'Antrede',

        kD: 0,
        kL: 0,
        kM: 0,
        kO: 0,
      );
      TaskH.instance.insertTask(task, widget.projek);
      Get.offAll(MainPage(projek: widget.projek,
      ));
    }
    return Container(
      // height: 200,
      // width: 150,
      //  color: Colors.black,
      child: InkWell(
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          color: Colors.green[100],
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    child: CustomPaint(
                      size: Size(80, 120),
                      painter: painter,
                    )),
                Text(bentuk_tangga),
                Spacer(),
              ],
            ),
          ),
        ),
        onTap: () {
          showDialog(context: context, builder: (context) {
            return
          AlertDialog(
            scrollable: true,
            actionsPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.only(bottom: 0),
            buttonPadding: EdgeInsets.zero,
           // titlePadding: EdgeInsets.only(bottom: 10),
            contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 0),
            // backgroundColor: Colors.transparent,
            title: Text('Tambah Tangga'),
            content: Container(
              //color: Colors.red,
              height: 150,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jenis: '+bentuk_tangga),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: Colors.green,
                      controller: controlerNama,
                      decoration: InputDecoration(
                        labelText: 'Nama',

                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        ),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        ),

                      )),
                ],
              ),
            ),
            actions: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  height: 45,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () {
                      submit();
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: Container(
                      child: Text('Tambah'),
                    ),
                  ),
                ),
              )
            ],
          );});
        },
      ),
    );
  }
}
class Tangga_Iicon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double  JA=10;
    final double JB=10;
    final double LebarCanvas = 120;
    final double TinggiCanvasa = 100;
    final double c = (1.0);
    final double Antrede_1=15;
    final double Optrede_1=15;
    final double OptredeNT_1=4;
    final double AntredeNT_1=4;
    final double TinggiT_1=Optrede_1*OptredeNT_1;
    final double PanjangT_1=Antrede_1*AntredeNT_1;
    final double PanjangB_1=30;

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

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Tangga_I extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double  JA=5;
    final double JB=15;
    final double LebarCanvas = 120;
    final double TinggiCanvasa = 100;
    final double c = (1.0);
    final double Antrede_1=10;
    final double Optrede_1=10;
    final double OptredeNT_1=7;
    final double AntredeNT_1=7;
    final double TinggiT_1=Optrede_1*OptredeNT_1;
    final double PanjangT_1=Antrede_1*AntredeNT_1;
    final double PanjangB_1=30;

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

    // canvas.drawLine(Offset(JA, TinggiCanvasa - JB + JK),
    //     Offset(JA + PanjangT_1*c, TinggiCanvasa - JB + JK), Line1);
    //
    // canvas.drawLine(
    //     Offset(JA + PanjangT_1*c + JK, TinggiCanvasa - JB),
    //     Offset(JA + PanjangT_1*c + JK,
    //         TinggiCanvasa - JB - TinggiT_1*c),
    //     Line1);



  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Tangga_I_1B extends CustomPainter {
  final double  JA=0;
  final double JB=25;
  final double LebarCanvas = 120;
  final double TinggiCanvasa = 100;
  final double c = (1.0);
  final double TinggiT_1=50;
  final double PanjangT_1=50;
  final double Antrede_1=10;
  final double Optrede_1=10;
  final double OptredeNT_1=5;
  final double AntredeNT_1=5;
  final double PanjangB_1=30;
  @override
  void paint(Canvas canvas, Size size) {

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
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1)*c),
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
        Line1);
    canvas.drawLine(
        Offset((JA+(PanjangT_1+PanjangB_1)*c).toMirror(M, MV), TinggiCanvasa - JB+(-TinggiT_1+Optrede_1)*c),
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
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Tangga_L extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double  JA=0;
    final double JB=10;
    final double LebarCanvas = 120;
    final double TinggiCanvasa = 100;
    final double c = (1.0);
    final double TinggiT_1=50;
    final double PanjangT_1=50;
    final double Antrede_1=10;
    final double Optrede_1=10;
    final double OptredeNT_1=5;
    final double AntredeNT_1=5;
    final double PanjangB_1=30;

    final double TinggiT_2=30;
    final double PanjangT_2=30;
    final double Antrede_2=10;
    final double Optrede_2=10;
    final double OptredeNT_2=3;
    final double AntredeNT_2=3;
    final double PanjangB_2=30;
    final double LebarT=20;
    final double JB2 = JB;



    //gambar 12 gambar bawah
    var path = Path();
    path.moveTo((JA).toMirror(M, MV), TinggiCanvasa - JB);
    path.lineTo((JA).toMirror(M, MV), TinggiCanvasa - JB - TinggiT_1*c);
    path.lineTo(
        (JA + LebarT*c).toMirror(M, MV), TinggiCanvasa - JB - TinggiT_1*c);
    for (var i = 0; i <= OptredeNT_2 - 1; i++) {
      path.lineTo((JA + (LebarT + i * Antrede_2)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1 - (i + 1) * Optrede_2)*c);
      path.lineTo((JA + (LebarT + (i + 1) * Antrede_2)*c).toMirror(M, MV),
          TinggiCanvasa - JB + (-TinggiT_1 - (i + 1) * Optrede_2)*c);
    }
    path.lineTo((JA + (LebarT + PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2)*c);
    path.lineTo((JA + (LebarT + PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2 + Optrede_2)*c);
    path.lineTo((JA + (LebarT + PanjangT_2)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2 + Optrede_2)*c);
    path.lineTo((JA + (LebarT)*c).toMirror(M, MV),
        TinggiCanvasa - JB + (-TinggiT_1 + Optrede_1)*c);
    path.lineTo((JA + (LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB);
    canvas.drawPath(path, Line3);

    canvas.drawLine(Offset((JA).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA + LebarT*c).toMirror(M, MV), TinggiCanvasa - JB), Line1);
    canvas.drawLine(Offset((JA).toMirror(M, MV), TinggiCanvasa - JB),
        Offset((JA).toMirror(M, MV), TinggiCanvasa - JB - TinggiT_1*c), Line1);

    for (var i = 0; i <= OptredeNT_2 - 1; i++) {
      canvas.drawLine(
          Offset((JA + (LebarT + i * Antrede_2)*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-TinggiT_1 - i * Optrede_2)*c),
          Offset(
              (JA + (LebarT + i * Antrede_2)*c).toMirror(M, MV),
              TinggiCanvasa - JB +
                  (-TinggiT_1 - (i + 1) * Optrede_2)*c), Line1);
      canvas.drawLine(Offset(
          (JA + (LebarT + (i) * Antrede_2)*c).toMirror(M, MV),
          TinggiCanvasa - JB +
              (-TinggiT_1 - (i + 1) * Optrede_2)*c),
          Offset(
              (JA + (LebarT + (i + 1) * Antrede_2)*c).toMirror(M, MV),
              TinggiCanvasa - JB +
                  (-TinggiT_1 - (i + 1) * Optrede_2)*c), Line1);
    }
    for (var i = 0; i <= OptredeNT_1 - 1; i++) {
      canvas.drawLine(
          Offset((JA).toMirror(M, MV), TinggiCanvasa - JB + (-(i + 1) * Optrede_1)*c),
          Offset((JA + (LebarT)*c).toMirror(M, MV),
              TinggiCanvasa - JB + (-(i + 1) * Optrede_1)*c),
          Line1);
    }
    canvas.drawLine(
        Offset((JA + (LebarT + PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2)*c),
        Offset((JA + (LebarT + PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2)*c),
        Line1);

    canvas.drawLine(
        Offset((JA + (LebarT + PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2)*c),
        Offset((JA + (LebarT + PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB +
                (-TinggiT_1 - TinggiT_2 + Optrede_2)*c), Line1);
    canvas.drawLine(
        Offset((JA + (LebarT + PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2+Optrede_2)*c),
        Offset((JA + (LebarT + PanjangT_2+PanjangB_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1 - TinggiT_2+Optrede_2)*c),
        Line1);

    canvas.drawLine(
        Offset((JA + (LebarT + PanjangT_2)*c).toMirror(M, MV),
            TinggiCanvasa - JB +
                (-TinggiT_1 - TinggiT_2 + Optrede_2)*c),
        Offset((JA + (LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1 + Optrede_2)*c),
        Line1);
    canvas.drawLine(
        Offset((JA + (LebarT)*c).toMirror(M, MV),
            TinggiCanvasa - JB + (-TinggiT_1)*c),
        Offset((JA + (LebarT)*c).toMirror(M, MV), TinggiCanvasa - JB),
        Line1);


  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Tangga_U_1B extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double  JA=0;
    final double JB=10;
    final double LebarCanvas = 120;
    final double TinggiCanvasa = 100;
    final double c = (1.0);

    final double Antrede_1=10;
    final double Optrede_1=10;
    final double OptredeNT_1=4;
    final double AntredeNT_1=4;
    final double TinggiT_1=Optrede_1*OptredeNT_1;
    final double PanjangT_1=Antrede_1*AntredeNT_1;
    final double PanjangB_1=30;

    final double Antrede_2=10;
    final double Optrede_2=10;
    final double OptredeNT_2=4;
    final double AntredeNT_2=4;
    final double TinggiT_2=Optrede_2*OptredeNT_2;
    final double PanjangT_2=Antrede_2*AntredeNT_2;
    final double PanjangB_2=30;

    final double LebarB_1=30;
    final double LebarT=20;
    final double JB2 = JB;

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
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class Tangga_U_2B extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double  JA=15;
    final double JB=5;
    final double LebarCanvas = 120;
    final double TinggiCanvasa = 100;
    final double c = (1.0);

    final double Antrede_1=10;
    final double Optrede_1=10;
    final double OptredeNT_1=3;
    final double AntredeNT_1=3;
    final double TinggiT_1=Optrede_1*OptredeNT_1;
    final double PanjangT_1=Antrede_1*AntredeNT_1;
    final double PanjangB_1=30;

    final double Antrede_2=10;
    final double Optrede_2=10;
    final double OptredeNT_2=3;
    final double AntredeNT_2=3;
    final double TinggiT_2=Optrede_2*OptredeNT_2;
    final double PanjangT_2=Antrede_2*AntredeNT_2;
    final double PanjangB_2=30;

    final double Antrede_3=10;
    final double Optrede_3=10;
    final double OptredeNT_3=3;
    final double AntredeNT_3=3;
    final double TinggiT_3=Optrede_3*OptredeNT_3;
    final double PanjangT_3=Antrede_3*AntredeNT_3;
    final double PanjangB_3=30;


    final double LebarB_1=30;
    final double LebarT=20;
    final double JB2 = JB;

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
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_Tangga_I.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Gambar_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Hitung_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_Tangga_U_1B.dart';

class OutputP_Tangga_U_1BPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  OutputP_Tangga_U_1BPage({this.projek,this.task});

  @override
  State<OutputP_Tangga_U_1BPage> createState() => _OutputP_Tangga_U_1BPageState();
}

class _OutputP_Tangga_U_1BPageState extends State<OutputP_Tangga_U_1BPage> {

  void MasukData(){
    ResetValue();
    Optrede_1 = widget.task.optredeR1;
    TinggiT_1 = widget.task.tinggiT1;
    PanjangT_1 =widget.task.panjangT1;
    Optrede_2 = widget.task.optredeR2;
    TinggiT_2 = widget.task.tinggiT2;
    PanjangT_2 = widget.task.panjangT2;
    Optrede_3 = widget.task.optredeR3;
    TinggiT_3 = widget.task.tinggiT3;
    PanjangT_3 = widget.task.panjangT3;
    LebarT = widget.task.lebarT;
    LebarB_1 = widget.task.lebarB;
    PanjangB_1 = widget.task.panjangB;

    TebalPelatTanggaPilih_1=widget.task.tebalT1;
    TebalPelatTanggaPilih_2=widget.task.tebalT2;
    TebalPelatTanggaPilih_3=widget.task.tebalT3;
    TebalPelatBordesPilih_1=widget.task.tebalB;
    TebalPelatBordesPilih_2=widget.task.tebalB;
    TebalPelatBordesPilih_3=widget.task.tebalB;

    beton=widget.task.Beton;
    keramik=widget.task.Keramik;
    spesi=widget.task.Spesi;
    ralling=widget.task.Hand;

    fy = widget.task.fy;
    fc = widget.task.fc;
    d = widget.task.D;
    Selimut = widget.task.S;

    ds=widget.task.Ds;
    fcB =widget.task.fcB;
    fyB =widget.task.fyB;
    dB =widget.task.DB;
    selimutB =widget.task.sB;
    dsB =widget.task.DsB;

    bB =widget.task.bB;
    hB= widget.task.hB;
    dinding= widget.task.Dinding;
  }
  @override
  void initState() {
    super.initState();

    MasukData();
    Hitung_T_U_1B();
    HitungT_T_U_1B();

  }

  @override
  Widget build(BuildContext context) {
    final LLayar = MediaQuery.of(context).size.width;
    final TLayar = MediaQuery.of(context).size.height;
   LebarCanvas = LLayar - 40;

    return Scaffold(
        appBar: AppBar(
          title: Text('Perkiraan Material'),
          backgroundColor: Colors.green[500],
          // leading: IconButton(onPressed:() {Get.to(Output_Tangga_U_1BPage(projek: widget.projek,task: widget.task,));},
          //   icon:Icon(Icons.arrow_back),
          //   color: Colors.white,
          // ),
          actions: [
            IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {})
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: ListView(
              children: <Widget>[
                //hasil
                Card(
                  margin:
                  EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        padding:
                        EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 3),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(child: Text('Hasil Desain')),
                              SizedBox(
                                height: 5,
                              ),
                              Center(child: Text('Tangga Atas = Tangga Bawah')),
                              buildContainerHasil(
                                  "Panjang Tangga", PanjangT_1.toNaN(), "cm",LLayar),
                              buildContainerHasil(
                                  "Tinggi Tangga", TinggiT_1.toNaN(), "cm",LLayar),
                              buildContainerHasil(
                                  "Lebar Tangga", LebarT.toNaN(), "cm",LLayar),
                              buildContainerHasil(
                                  "Antrade", Antrede_1.toNaN(), "cm",LLayar),
                              buildContainerHasil(
                                  "Antrade Total", AntredeNT_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Antrade Biasa", AntredeN_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Antrade + 1cm ", AntredeN1_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Antrade - 1cm", Antrede1N_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Optrade", Optrede_1.toNaN(), "cm",LLayar),
                              buildContainerHasil(
                                  "Optrade Total", OptredeNT_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Optrade Biasa", OptredeN_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Optrade + 1cm", OptredeN1_1.toNaN(), "buah",LLayar),
                              buildContainerHasil(
                                  "Optrade - 1cm", Optrede1N_1.toNaN(), "buah",LLayar),
                              buildContainerHasil("Sudut", Sudut_1.toNaN(), "°",LLayar),
                            ]),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
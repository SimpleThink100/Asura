import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/menu.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_Tangga_I.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_I/Gambar_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Hitungan_Tangga_I.dart';


class OutputD_Tangga_IPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  OutputD_Tangga_IPage({this.projek,this.task});

  @override
  State<OutputD_Tangga_IPage> createState() => _OutputD_Tangga_IPageState();
}

class _OutputD_Tangga_IPageState extends State<OutputD_Tangga_IPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();

  DateTime _tanggal = DateTime.now();
  String _jenis = 'Tangga I';
  String _nama = '';
  String _keterangan = '';
  String _satuan = 'cm';
  String _ukuranTangga = 'Sama';
  String _pembagiA = '1 cm';
  String _pembagiO = '1 cm';

  String _visible = "0";
  bool isSetting = false;
  bool isGambar1 = false;
  bool isGambar2 = false;
  bool isGambar3 = false;
  bool DataPenulangan = false;
  bool isUkuranTangga = true;

  void MasukData(){
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

    settingSatuan = _satuan;
    UkuranTangga = _ukuranTangga ;
    settingPembagiAntrede = _pembagiA;
    settingPembagiOptrede = _pembagiO;

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
    if (widget.task != null) {
      _jenis = widget.task.jenis;
      _keterangan = widget.task.keterangan;
      _satuan = widget.task.satuan;
      _ukuranTangga = widget.task.ukuranTangga;
      _pembagiA = widget.task.pembagiA;
      _pembagiO = widget.task.pembagiO;
      _visible = widget.task.visible;
    }

    MasukData();
    Hitung_T_I();


    if(_ukuranTangga == 'Sama'){
      isUkuranTangga = true;
    }else{
      isUkuranTangga = false;
    }

    if (_visible == '1') {
      isGambar1 = true;
      isGambar2 = true;
      isGambar3 = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      appBar: AppBar(
        title: Text('Desain'),
        leading: IconButton(onPressed:() {Get.to(Output_Tangga_IPage(projek: widget.projek,task: widget.task,));},
          icon:Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.green[500],
        actions: [

        ],
        //automaticallyImplyLeading: true,
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
                            buildContainerHasil(
                                "Panjang Tangga", PanjangT_1.toNaN(), "cm"),
                            buildContainerHasil(
                                "Tinggi Tangga", TinggiT_1.toNaN(), "cm"),
                            buildContainerHasil(
                                "Lebar Tangga", LebarT.toNaN(), "cm"),
                            buildContainerHasil(
                                "Sudut Tangga", Sudut_1.toNaN(), "cm"),
                            buildContainerHasil(
                                "Antrade", Antrede_1.toNaN(), "cm"),
                            buildContainerHasil(
                                "Antrade Total", AntredeNT_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Antrade Biasa", AntredeN_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Antrade + 1cm ", AntredeN1_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Antrade - 1cm", Antrede1N_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Optrade", Optrede_1.toNaN(), "cm"),
                            buildContainerHasil(
                                "Optrade Total", OptredeNT_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Optrade Biasa", OptredeN_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Optrade + 1cm", OptredeN1_1.toNaN(), "buah"),
                            buildContainerHasil(
                                "Optrade - 1cm", Optrede1N_1.toNaN(), "buah"),
                            buildContainerHasil("Sudut", Sudut_1.toNaN(), "°"),
                          ]),
                    ),
                  ],
                ),
              ),
              //gambar
              Visibility(
                visible: isGambar1,
                child: Column(
                  children: [
                    buildDivider(2),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[500],
                        ),
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        //color: Colors.green[500],
                        child: CustomPaint(
                          size: Size(LebarCanvas, TinggiCanvasa),
                          painter: Gambar_Tangga_I_1(),
                        )),
                  ],
                ),
              ),
              Visibility(
                visible: isGambar2,
                child: Column(
                  children: [
                    buildDivider(2),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green[500],
                          ),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          //color: Colors.green[500],
                          child: CustomPaint(
                            size: Size(LebarCanvas, TinggiCanvasb),
                            painter: Gambar_Tangga_I_2(),
                          )),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: isGambar3,
                child: Column(
                  children: [
                    buildDivider(2),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green[500],
                          ),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          //color: Colors.green[500],
                          child: CustomPaint(
                            size: Size(LebarCanvas, TinggiCanvasc),
                            painter: Gambar_Tangga_I_3(),
                          )),
                    ),
                  ],
                ),
              ),
              buildDivider(2),
            ],
          ),
        ),
      ),
    );
  }
}
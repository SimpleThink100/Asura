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
import 'package:perancangan_tangga_app/Tangga_I_1B/Gambar_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Hitung_Tangga_I_1B.dart';
import 'package:pdf/widgets.dart'as pd;

class Desain_Tangga_I_1BPage extends StatefulWidget {
  final Task task;
  final Projek projek;
  Desain_Tangga_I_1BPage({this.task,this.projek});

  @override
  _Desain_Tangga_I_1BPageState createState() => _Desain_Tangga_I_1BPageState();
}

class _Desain_Tangga_I_1BPageState extends State<Desain_Tangga_I_1BPage> {
//ceking
  void Work() {
    controllerPanjangT1.text = "320";
    controllerTinggiT1.text = "200";
    controllerOptrede1.text = "18";
    controllerLebarT.text = "170";

    controllerPanjangB.text = '110';
    controllerbB.text = '30';
    controllerhB.text = '40';

  }

//variable + keadaan awal
  final _formKey = GlobalKey<FormState>();
  final tl.DateFormat _dateFormat = tl.DateFormat('dd-MM-yyyy');
  final controllerPanjangT1 = new TextEditingController(text: '0');
  final controllerPanjangT2 = new TextEditingController(text: '0');
  final controllerPanjangT3 = new TextEditingController(text: '0');
  final controllerTinggiT1 = new TextEditingController(text: '0');
  final controllerTinggiT2 = new TextEditingController(text: '0');
  final controllerTinggiT3 = new TextEditingController(text: '0');
  final controllerOptrede1 = new TextEditingController(text: '0');
  final controllerOptrede2 = new TextEditingController(text: '0');
  final controllerOptrede3 = new TextEditingController(text: '0');
  final controllerLebarT = new TextEditingController(text: '0');
  final controllerLebarB = new TextEditingController(text: '0');
  final controllerPanjangB = new TextEditingController(text: '0');
  final controllerNama = new TextEditingController();
  final controllerbB = new TextEditingController(text: '0');
  final controllerhB = new TextEditingController(text: '0');

  DateTime _tanggal = DateTime.now();
  String _jenis = 'Tangga I 1B';
  String _nama = '';
  String _keterangan = '';
  String _satuan = 'cm';
  String _ukuranTangga = 'Sama';
  String _pembagiA = '1 cm';
  String _pembagiO = '1 cm';

  List Data1_;
  List Data2_;
  List Data3_;

  //ceking
  String ini = "Cek";

  //visibel gambar
  String _visible = "0";
  bool isSetting = false;
  bool isGambar1 = false;
  bool isGambar2 = false;
  bool isGambar3 = false;
  bool DataPenulangan = false;
  bool isUkuranTangga = true;

  void MasukData(){
    Optrede_1 = controllerOptrede1.text == '' ? 0 : double.parse(controllerOptrede1.text);
    TinggiT_1 = controllerTinggiT1.text == '' ? 0 : double.parse(controllerTinggiT1.text);
    PanjangT_1 = controllerPanjangT1.text == '' ? 0 : double.parse(controllerPanjangT1.text);
    Optrede_2 = controllerOptrede2.text == '' ? 0 : double.parse(controllerOptrede2.text);
    TinggiT_2 = controllerTinggiT2.text == '' ? 0 : double.parse(controllerTinggiT2.text);
    PanjangT_2 =controllerPanjangT2.text == '' ? 0 :  double.parse(controllerPanjangT2.text);
    Optrede_3 =controllerOptrede3.text == '' ? 0 :  double.parse(controllerOptrede3.text);
    TinggiT_3 =controllerTinggiT3.text == '' ? 0 :  double.parse(controllerTinggiT3.text);
    PanjangT_3 =controllerPanjangT3.text == '' ? 0 :  double.parse(controllerPanjangT3.text);
    LebarT =controllerLebarT.text == '' ? 0 :  double.parse(controllerLebarT.text);
    LebarB_1 =controllerLebarB.text == '' ? 0 :  double.parse(controllerLebarB.text);
    PanjangB_1 =controllerPanjangB.text == '' ? 0 :  double.parse(controllerPanjangB.text);
    bB=controllerbB.text== '' ? 0 :  double.parse(controllerbB.text);
    hB=controllerhB.text== '' ? 0 :  double.parse(controllerhB.text);
    settingSatuan = _satuan;
    UkuranTangga = _ukuranTangga ;
    settingPembagiAntrede = _pembagiA;
    settingPembagiOptrede = _pembagiO;
  }

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      controllerNama.text = widget.task.nama;
      _jenis = widget.task.jenis;
      controllerPanjangT1.text = widget.task.panjangT1.toString();
      controllerTinggiT1.text = widget.task.tinggiT1.toString();
      controllerOptrede1.text = widget.task.optredeR1.toString();
      controllerPanjangT2.text = widget.task.panjangT2.toString();
      controllerTinggiT2.text = widget.task.tinggiT2.toString();
      controllerOptrede2.text = widget.task.optredeR2.toString();
      controllerPanjangT3.text = widget.task.panjangT3.toString();
      controllerTinggiT3.text = widget.task.tinggiT3.toString();
      controllerOptrede3.text = widget.task.optredeR3.toString();
      controllerLebarT.text = widget.task.lebarT.toString();
      controllerLebarB.text = widget.task.lebarB.toString();
      controllerPanjangB.text = widget.task.panjangB.toString();
      controllerhB.text = widget.task.hB.toString();
      controllerbB.text = widget.task.bB.toString();

      _satuan = widget.task.satuan;
      _ukuranTangga = widget.task.ukuranTangga;
      _pembagiA = widget.task.pembagiA;
      _pembagiO = widget.task.pembagiO;
      _visible = widget.task.visible;

    }

    MasukData();
    Hitung_T_I_1B();

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
    final LLayar = MediaQuery.of(context).size.width;
    final TLayar = MediaQuery.of(context).size.height;
    double LebarCanvas = LLayar - 40;

    submit() {
        Task task = Task(
          jenis: _jenis,
          nama: controllerNama.text,
          panjangT1: controllerPanjangT1.text == '' ? 0 : double.parse(controllerPanjangT1.text),
          tinggiT1: controllerTinggiT1.text == '' ? 0 : double.parse(controllerTinggiT1.text),
          optredeR1: controllerOptrede1.text == '' ? 0 : double.parse(controllerOptrede1.text),
          panjangT2: controllerPanjangT2.text == '' ? 0 : double.parse(controllerPanjangT2.text),
          tinggiT2: controllerTinggiT2.text == '' ? 0 : double.parse(controllerTinggiT2.text),
          optredeR2: controllerOptrede2.text == '' ? 0 : double.parse(controllerOptrede2.text),
          panjangT3: controllerPanjangT3.text == '' ? 0 : double.parse(controllerPanjangT3.text),
          tinggiT3: controllerTinggiT3.text == '' ? 0 : double.parse(controllerTinggiT3.text),
          optredeR3: controllerOptrede3.text == '' ? 0 : double.parse(controllerOptrede3.text),
          lebarT: controllerLebarT.text == '' ? 0 : double.parse(controllerLebarT.text),
          lebarB: controllerLebarB.text == '' ? 0 : double.parse(controllerLebarB.text),
          panjangB: controllerPanjangB.text == '' ? 0 : double.parse(controllerPanjangB.text),
          Beton: widget.task.Beton,
          Keramik: widget.task.Keramik,
          Spesi: widget.task.Spesi,
          Hand: widget.task.Hand,
          fc: widget.task.fc,
          fy: widget.task.fy,
          D: widget.task.D,
          S: widget.task.S,

          Ds:widget.task.Ds,
          fcB:widget.task.fcB,
          fyB:widget.task.fyB,
          DB:widget.task.DB,
          sB:widget.task.sB,
          DsB:widget.task.DsB,
          bB:controllerbB.text == '' ? 0 : double.parse(controllerbB.text),
          hB:controllerhB.text==''?0: double.parse(controllerhB.text),
          Dinding:widget.task.Dinding,

          satuan: _satuan,
          ukuranTangga: _ukuranTangga,
          pembagiA: _pembagiA,
          pembagiO: _pembagiO,
          visible: _visible,
          mirror: '0',

          kD: 1,
          kM: widget.task.kM,
          kL: widget.task.kL,
          kO: widget.task.kO,
        );

        if (widget.task == null) {
          TaskH.instance.insertTask(task,widget.projek);
        } else {
          task.id = widget.task.id;
          TaskH.instance.updateTask(task,widget.projek);
        }
        Get.offAll(MainPage(projek: widget.projek,task: widget.task,));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Tangga I 1 Bordes'),
          backgroundColor: Colors.green[500],
          leading: IconButton(onPressed:() {Get.to(MainPage(projek: widget.projek,task: widget.task,));},
            icon:Icon(Icons.arrow_back),
            color: Colors.white,
          ),
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
                //isian
                Visibility(
                  visible: isUkuranTangga,
                  child: Column(
                    children: [
                      buildContainerTextFiel('Panjang Tangga ', 'cm', controllerPanjangT1),
                      buildContainerTextFiel('Tinggi Tangga ', 'cm', controllerTinggiT1),
                      buildContainerTextFiel('optrede ', 'cm', controllerOptrede1),
                      buildContainerTextFiel('Lebar Tangga', 'cm', controllerLebarT),
                      buildContainerTextFiel('Panjang Bordes','cm',controllerPanjangB),
                      buildContainerTextFiel('Tinggi Balok Bordes','cm',controllerhB),
                      buildContainerTextFiel('Lebar Balok Bordes','cm',controllerbB),
                    ],
                  ),
                ),
                buildDivider(2),
                //tombol
                Container(
                  margin: EdgeInsets.only(right: 0, left: 0),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          height: 30,
                          width: 70,
                          child: ElevatedButton(
                            onPressed: () {
                              Work();
                              // print(widget.task.id);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.red[500]),
                            ),
                            child: Text('Reset'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          height: 30,
                          width: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              isSetting = !isSetting;
                              setState(() {});
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange[700]),
                            ),
                            child: Text('Setting'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                          height: 30,
                          width: 140,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                MasukData();
                                Hitung_T_I_1B();
                                _visible = '1';
                                isGambar1 = true;
                                isGambar2 = true;
                                isGambar3 = true;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange[700]),
                            ),
                            child: Text('Hitung Tangga'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                buildDivider(2),
                //setting
                Visibility(
                  visible: isSetting,
                  child: Container(
                    //margin: EdgeInsets.only(bottom: 5),
                    height: 160,
                    child: Column(
                      children: [
                        Text(
                          "Setting",
                          style: Size4,
                        ),
                        //satuan
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              Text("Satuan",
                                  style:Size3),
                              Spacer(
                                flex: 1,
                              ),
                              DropdownButton(
                                value: _satuan,
                                onChanged: (pilih) {
                                  _satuan = pilih;
                                  print(_satuan);
                                  print(_ukuranTangga);
                                  setState(() {});
                                },
                                items: [
                                  Item("m"),
                                  Item("cm"),
                                  Item("mm"),
                                ],
                              )
                            ],
                          ),
                        ),
                        //Ukurantangga
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              Text("Ukuran Tangga",style:Size3),
                              Spacer(
                                flex: 1,
                              ),
                              DropdownButton(
                                value: _ukuranTangga,
                                onChanged: (pilih) {
                                  _ukuranTangga = pilih;
                                  _ukuranTangga == 'Sama'?isUkuranTangga = true:isUkuranTangga = false;
                                  setState(() {});
                                },
                                items: [
                                  Item("Sama"),
                                  Item("Berbeda"),
                                ],
                              )
                            ],
                          ),
                        ),
                        //pembagi antrede
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              Text("Sisa pembagi Antrede",style:Size3),
                              Spacer(
                                flex: 1,
                              ),
                              DropdownButton(
                                value: _pembagiA,
                                onChanged: (pilih) {
                                  _pembagiA = pilih;
                                  Hitung_T_I_1B();
                                  setState(() {});
                                },
                                items: [
                                  Item("1 cm"),
                                  Item("0 cm"),
                                ],
                              )
                            ],
                          ),
                        ),
                        //pembagi optrede
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              Text("Sisa pembagi Opterde",style:Size3),
                              Spacer(
                                flex: 1,
                              ),
                              DropdownButton(
                                value: _pembagiO,
                                onChanged: (pilih) {
                                  _pembagiO = pilih;
                                  Hitung_T_I_1B();
                                  setState(() {});
                                },
                                items: [
                                  Item("1 cm"),
                                  Item("0 cm"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        buildDivider(8),
                      ],
                    ),
                  ),
                ),
                //hasil
                Card(
                  margin:
                  EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 10),
                  child: Column(
                    children: [
                      Visibility(
                        visible: isUkuranTangga,
                        child: Container(
                          padding:
                          EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 3),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(child: Text('Aturan Perancangan')),
                                SizedBox(
                                  height: 12,
                                ),
                                buildContainerPerancangan(
                                    "Langkah (2O+A)",
                                    "(59-65) ",
                                    (Optrede_1 * 2 + Antrede_1).toNaN(),
                                    "cm",
                                    2 * Optrede_1 + Antrede_1 <= 65 &&
                                        2 * Optrede_1 + Antrede_1 >= 59),
                                buildContainerPerancangan(
                                    "Keamanan (O+A)",
                                    "(46) ",
                                    (Optrede_1 + Antrede_1).toNaN(),
                                    "cm",
                                    Optrede_1 + Antrede_1 <= 47 &&
                                        Optrede_1 + Antrede_1 >= 45),
                                buildContainerPerancangan(
                                    "Kenyamanan (A-O)",
                                    "(12) ",
                                    (Antrede_1 - Optrede_1).toNaN(),
                                    "cm",
                                    Antrede_1 - Optrede_1 >= 11 &&
                                        Antrede_1 - Optrede_1 <= 13),
                                buildContainerPerancangan(
                                    "Antrede (A)", "(26-30) ",
                                    (Antrede_1).toNaN(), "cm",
                                    Antrede_1 >= 26&&Antrede_1<=30),
                                buildContainerPerancangan(
                                    "Optrede (O)",
                                    "(20-16) ",
                                    (Optrede_1).toNaN(),
                                    "cm",
                                    Optrede_1 <= 20&&Optrede_1>=16),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Balok Bordes'),
                                buildContainerPerancangan(
                                    "Tinggi Balok (h min) ",
                                    "(L/16)",
                                    (LebarT/16).toNaN(),
                                    "cm",
                                    hB>=LebarT/16),
                                buildContainerPerancangan(
                                    "Lebar Balok (b min) ",
                                    "(2/3h)",
                                    (2/3*hB).toNaN(),
                                    "cm",
                                    bB>=2/3*hB),
                                buildContainerPerancangan(
                                    "Lebar Balok (b min) ",
                                    "(25)",
                                    (25.0).toNaN(),
                                    "cm",
                                    bB>=25),

                                buildDivider(10),
                                Center(child: Text('Hasil Perhitungan')),
                                SizedBox(
                                  height: 5,
                                ),
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
                            painter: Gambar_Tangga_I_1B_1(),
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
                              painter: Gambar_Tangga_I_1B_2(),
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
                              painter: Gambar_Tangga_I_1B_3(),
                            )),
                      ),
                    ],
                  ),
                ),
                buildDivider(2),
                //save
                Container(
                  margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                  height: 30,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // Hitung_T_I();
                        submit();
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue[800]),
                    ),
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

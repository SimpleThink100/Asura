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
    controllerPanjangT1.text = "${(320.0).toSatuan(_satuan)}";
    controllerTinggiT1.text = "${(200.0).toSatuan(_satuan)}";
    controllerOptrede1.text = "${(18.0).toSatuan(_satuan)}";
    controllerLebarT.text = "${(170.0).toSatuan(_satuan)}";

    controllerTebalT1.text = '${(20.0).toSatuan(_satuan)}';
    controllerFy.text = '240';

    controllerPanjangB.text = '${(110.0).toSatuan(_satuan)}';
    controllerbB.text = '${(30.0).toSatuan(_satuan)}';
    controllerhB.text = '${(40.0).toSatuan(_satuan)}';
    controllerTebalB.text = '${(15.0).toSatuan(_satuan)}';

  }
  void Clear() {
    controllerPanjangT1.text ="0.0";
    controllerTinggiT1.text = "0.0";
    controllerOptrede1.text ="0.0";
    controllerLebarT.text ="0.0";

    controllerTebalT1.text = "0.0";
    controllerFy.text ="0.0";

    controllerPanjangB.text ="0.0";
    controllerbB.text = "0.0";
    controllerhB.text ="0.0";
    controllerTebalB.text = "0.0";

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

  final controllerTebalT1 = new TextEditingController(text: '0');
  final controllerTebalT2 = new TextEditingController(text: '0');
  final controllerTebalT3 = new TextEditingController(text: '0');
  final controllerTebalB = new TextEditingController(text: '0');
  final controllerFy = new TextEditingController(text: '0');

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
  String _mirror = "0";
  String _teratas = 'Antrede';

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
    ResetValue();
    Optrede_1 = double.parse(controllerOptrede1.text).toSatuana(_satuan);
    TinggiT_1 = double.parse(controllerTinggiT1.text).toSatuana(_satuan);
    PanjangT_1 = double.parse(controllerPanjangT1.text).toSatuana(_satuan);
    Optrede_2 = double.parse(controllerOptrede2.text).toSatuana(_satuan);
    TinggiT_2 = double.parse(controllerTinggiT2.text).toSatuana(_satuan);
    PanjangT_2 = double.parse(controllerPanjangT2.text).toSatuana(_satuan);
    Optrede_3 = double.parse(controllerOptrede3.text).toSatuana(_satuan);
    TinggiT_3 = double.parse(controllerTinggiT3.text).toSatuana(_satuan);
    PanjangT_3 = double.parse(controllerPanjangT3.text).toSatuana(_satuan);
    LebarT = double.parse(controllerLebarT.text).toSatuana(_satuan);
    LebarB_1 = double.parse(controllerLebarB.text).toSatuana(_satuan);
    PanjangB_1 = double.parse(controllerPanjangB.text).toSatuana(_satuan);
    TebalPelatTanggaPilih_1=double.parse(controllerTebalT1.text).toSatuana(_satuan);
    TebalPelatTanggaPilih_2=double.parse(controllerTebalT2.text).toSatuana(_satuan);
    TebalPelatTanggaPilih_3=double.parse(controllerTebalT3.text).toSatuana(_satuan);
    TebalPelatBordesPilih_1=double.parse(controllerTebalB.text).toSatuana(_satuan);
    TebalPelatBordesPilih_2=double.parse(controllerTebalB.text).toSatuana(_satuan);
    TebalPelatBordesPilih_3=double.parse(controllerTebalB.text).toSatuana(_satuan);

    settingSatuan = _satuan;
    UkuranTangga = _ukuranTangga ;
    settingPembagiAntrede = _pembagiA;
    settingPembagiOptrede = _pembagiO;
    mirror = _mirror;
    teratas = _teratas;

    beton = widget.task.Beton;
    keramik = widget.task.Keramik;
    spesi = widget.task.Spesi;
    ralling = widget.task.Hand;
    hidup = widget.task.hidup;

    tkeramik=widget.task.tebalKeramik;
    tspesi=widget.task.tebalSpesi;

    fy = double.parse(controllerFy.text);
    fc = widget.task.fc;
    d = widget.task.D;
    Selimut = widget.task.S;

    ds =widget.task.Ds;
    fcB=widget.task.fcB;
    fyB=widget.task.fyB;
    selimutB=widget.task.sB;
    dB = widget.task.DB;
    dsB = widget.task.DsB;

    hB = double.parse(controllerhB.text).toSatuan(_satuan);
    bB= double.parse( controllerbB.text).toSatuan(_satuan);
    dinding = widget.task.Dinding;
  }

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      _satuan = widget.task.satuan;
      controllerNama.text = widget.task.nama;
      _jenis = widget.task.jenis;
      controllerPanjangT1.text = widget.task.panjangT1.toSatuan(_satuan).toString();
      controllerTinggiT1.text = widget.task.tinggiT1.toSatuan(_satuan).toString();
      controllerOptrede1.text = widget.task.optredeR1.toSatuan(_satuan).toString();
      controllerPanjangT2.text = widget.task.panjangT2.toSatuan(_satuan).toString();
      controllerTinggiT2.text = widget.task.tinggiT2.toSatuan(_satuan).toString();
      controllerOptrede2.text = widget.task.optredeR2.toSatuan(_satuan).toString();
      controllerPanjangT3.text = widget.task.panjangT3.toSatuan(_satuan).toString();
      controllerTinggiT3.text = widget.task.tinggiT3.toSatuan(_satuan).toString();
      controllerOptrede3.text = widget.task.optredeR3.toSatuan(_satuan).toString();
      controllerLebarT.text = widget.task.lebarT.toSatuan(_satuan).toString();
      controllerLebarB.text = widget.task.lebarB.toSatuan(_satuan).toString();
      controllerPanjangB.text = widget.task.panjangB.toSatuan(_satuan).toString();
      controllerTebalT1.text = widget.task.tebalT1.toSatuan(_satuan).toString();
      controllerTebalT2.text = widget.task.tebalT2.toSatuan(_satuan).toString();
      controllerTebalT3.text = widget.task.tebalT3.toSatuan(_satuan).toString();
      controllerTebalB.text = widget.task.tebalB.toSatuan(_satuan).toString();
      controllerFy.text = widget.task.fy.toString();
      controllerhB.text=widget.task.hB.toSatuan(_satuan).toString();
      controllerbB.text=widget.task.bB.toSatuan(_satuan).toString();

      _ukuranTangga = widget.task.ukuranTangga;
      _pembagiA = widget.task.pembagiA;
      _pembagiO = widget.task.pembagiO;
      _visible = widget.task.visible;
      _mirror = widget.task.mirror;
      _teratas = widget.task.teratas;
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
    LebarCanvas = LLayar - 40;

    void submit() {
      Task task = Task(
        jenis: widget.task.jenis,
        nama: widget.task.nama,
        keterangan: widget.task.keterangan,
        panjangT1: controllerPanjangT1.text == '' ? 0 : double.parse(controllerPanjangT1.text).toSatuana(_satuan),
        tinggiT1: controllerTinggiT1.text == '' ? 0 : double.parse(controllerTinggiT1.text).toSatuana(_satuan),
        optredeR1: controllerOptrede1.text == '' ? 0 : double.parse(controllerOptrede1.text).toSatuana(_satuan),
        panjangT2: controllerPanjangT2.text == '' ? 0 : double.parse(controllerPanjangT2.text).toSatuana(_satuan),
        tinggiT2: controllerTinggiT2.text == '' ? 0 : double.parse(controllerTinggiT2.text).toSatuana(_satuan),
        optredeR2: controllerOptrede2.text == '' ? 0 : double.parse(controllerOptrede2.text).toSatuana(_satuan),
        panjangT3: controllerPanjangT3.text == '' ? 0 : double.parse(controllerPanjangT3.text).toSatuana(_satuan),
        tinggiT3: controllerTinggiT3.text == '' ? 0 : double.parse(controllerTinggiT3.text).toSatuana(_satuan),
        optredeR3: controllerOptrede3.text == '' ? 0 : double.parse(controllerOptrede3.text).toSatuana(_satuan),
        lebarT: controllerLebarT.text == '' ? 0 : double.parse(controllerLebarT.text).toSatuana(_satuan),
        lebarB: controllerLebarB.text == '' ? 0 : double.parse(controllerLebarB.text).toSatuana(_satuan),
        panjangB: controllerPanjangB.text == '' ? 0 : double.parse(controllerPanjangB.text).toSatuana(_satuan),
        tebalT1: controllerTebalT1.text == '' ? 0 : double.parse(controllerTebalT1.text).toSatuana(_satuan),
        tebalT2: controllerTebalT2.text == '' ? 0 : double.parse(controllerTebalT2.text).toSatuana(_satuan),
        tebalT3: controllerTebalT3.text == '' ? 0 : double.parse(controllerTebalT3.text).toSatuana(_satuan),
        tebalB: controllerTebalB.text == '' ? 0 : double.parse(controllerTebalB.text).toSatuana(_satuan),
        Beton: widget.task.Beton,
        Keramik: widget.task.Keramik,
        Spesi: widget.task.Spesi,
        Hand: widget.task.Hand,
        hidup: widget.task.hidup,
        tebalKeramik: widget.task.tebalKeramik,
        tebalSpesi: widget.task.tebalSpesi,
        tebalDinding: widget.task.tebalDinding,
        fc: widget.task.fc,
        fy: controllerFy.text == '' ? 0 : double.parse(controllerFy.text),
        D: widget.task.D,
        S: widget.task.S,
        Ds:widget.task.Ds,
        fcB:widget.task.fcB,
        fyB:widget.task.fyB,
        DB:widget.task.DB,
        sB:widget.task.sB,
        DsB:widget.task.DsB,

        bB: controllerbB.text == '' ? 0 : double.parse(controllerbB.text).toSatuana(_satuan),
        hB:controllerhB.text == '' ? 0 : double.parse(controllerhB.text).toSatuana(_satuan),
        Dinding:widget.task.Dinding,

        satuan: _satuan,
        ukuranTangga: _ukuranTangga,
        pembagiA: _pembagiA,
        pembagiO: _pembagiO,
        visible: _visible,
        mirror: _mirror,
        teratas: _teratas,

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
    void satuana(){
      controllerPanjangT1.text = double.parse(controllerPanjangT1.text).toSatuana(_satuan).toString();
      controllerTinggiT1.text = double.parse(controllerTinggiT1.text).toSatuana(_satuan).toString();
      controllerOptrede1.text =double.parse(controllerOptrede1.text).toSatuana(_satuan).toString();
      controllerPanjangT2.text =double.parse(controllerPanjangT2.text).toSatuana(_satuan).toString();
      controllerTinggiT2.text = double.parse(controllerTinggiT2.text).toSatuana(_satuan).toString();
      controllerOptrede2.text = double.parse(controllerOptrede2.text).toSatuana(_satuan).toString();
      controllerPanjangT3.text =double.parse(controllerPanjangT3.text).toSatuana(_satuan).toString();
      controllerTinggiT3.text = double.parse(controllerTinggiT3.text).toSatuana(_satuan).toString();
      controllerOptrede3.text = double.parse(controllerOptrede3.text).toSatuana(_satuan).toString();
      controllerLebarT.text = double.parse(controllerLebarT.text).toSatuana(_satuan).toString();
      controllerLebarB.text = double.parse(controllerLebarB.text).toSatuana(_satuan).toString();
      controllerPanjangB.text = double.parse(controllerPanjangB.text).toSatuana(_satuan).toString();
      controllerTebalT1.text = double.parse(controllerTebalT1.text).toSatuana(_satuan).toString();
      controllerTebalT2.text = double.parse(controllerTebalT2.text).toSatuana(_satuan).toString();
      controllerTebalT3.text = double.parse(controllerTebalT3.text).toSatuana(_satuan).toString();
      controllerTebalB.text = double.parse(controllerTebalB.text).toSatuana(_satuan).toString();
      controllerhB.text=double.parse(controllerhB.text).toSatuana(_satuan).toString();
      controllerbB.text=double.parse(controllerbB.text).toSatuana(_satuan).toString();
    }
    void satuanb(){
      controllerPanjangT1.text = double.parse(controllerPanjangT1.text).toSatuan(_satuan).toString();
      controllerTinggiT1.text = double.parse(controllerTinggiT1.text).toSatuan(_satuan).toString();
      controllerOptrede1.text =double.parse(controllerOptrede1.text).toSatuan(_satuan).toString();
      controllerPanjangT2.text =double.parse(controllerPanjangT2.text).toSatuan(_satuan).toString();
      controllerTinggiT2.text = double.parse(controllerTinggiT2.text).toSatuan(_satuan).toString();
      controllerOptrede2.text = double.parse(controllerOptrede2.text).toSatuan(_satuan).toString();
      controllerPanjangT3.text =double.parse(controllerPanjangT3.text).toSatuan(_satuan).toString();
      controllerTinggiT3.text = double.parse(controllerTinggiT3.text).toSatuan(_satuan).toString();
      controllerOptrede3.text = double.parse(controllerOptrede3.text).toSatuan(_satuan).toString();
      controllerLebarT.text = double.parse(controllerLebarT.text).toSatuan(_satuan).toString();
      controllerLebarB.text = double.parse(controllerLebarB.text).toSatuan(_satuan).toString();
      controllerPanjangB.text = double.parse(controllerPanjangB.text).toSatuan(_satuan).toString();
      controllerTebalT1.text = double.parse(controllerTebalT1.text).toSatuan(_satuan).toString();
      controllerTebalT2.text = double.parse(controllerTebalT2.text).toSatuan(_satuan).toString();
      controllerTebalT3.text = double.parse(controllerTebalT3.text).toSatuan(_satuan).toString();
      controllerTebalB.text = double.parse(controllerTebalB.text).toSatuan(_satuan).toString();
      controllerhB.text=double.parse(controllerhB.text).toSatuan(_satuan).toString();
      controllerbB.text=double.parse(controllerbB.text).toSatuan(_satuan).toString();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Tangga I 1 Bordes'),
          backgroundColor: Colors.green[500],
          // leading: IconButton(onPressed:() {Get.to(MainPage(projek: widget.projek,task: widget.task,));},
          //   icon:Icon(Icons.arrow_back),
          //   color: Colors.white,
          // ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context)=>[
                PopupMenuItem(
                  child: Text('Contoh',style: TextStyle(
                      color: Colors.black),),
                  onTap: (){
                    Work();
                  },
                ),

              ],
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.more_vert_rounded),
              ),),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tangga"),
                      buildContainerTextFiel('Panjang Tangga ', 'cm', controllerPanjangT1,LLayar),
                      buildContainerTextFiel('Tinggi Tangga ', 'cm', controllerTinggiT1,LLayar),
                      buildContainerTextFiel('optrede ', 'cm', controllerOptrede1,LLayar),
                      buildContainerTextFiel('Tebal Pelat', 'cm', controllerTebalT1,LLayar),
                      buildContainerTextFiel('Lebar Tangga', 'cm', controllerLebarT,LLayar),
                      Text("Bordes"),
                      buildContainerTextFiel('Panjang Bordes','cm',controllerPanjangB,LLayar),
                      buildContainerTextFiel('Tinggi Balok Bordes','cm',controllerhB,LLayar),
                      buildContainerTextFiel('Lebar Balok Bordes','cm',controllerbB,LLayar),
                      buildContainerTextFiel('Tebal Pelat', 'cm', controllerTebalB,LLayar),
                      Text("lain-lain"),
                      buildContainerTextFiel('Kuat Tarik Fy rencana', 'Mpa', controllerFy,LLayar),
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
                              Clear();
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
                                  satuana();
                                  _satuan = pilih;
                                  satuanb();
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
                                  MasukData();
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
                                  MasukData();
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
                        //teratas
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              Text("Teratas",style:Size3),
                              Spacer(
                                flex: 1,
                              ),
                              DropdownButton(
                                value: _teratas,
                                onChanged: (pilih) {
                                  _teratas = pilih;
                                  MasukData();
                                  Hitung_T_I_1B();
                                  setState(() {});
                                },
                                items: [
                                  Item("Antrede"),
                                  Item("Optrede"),
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
                                    "(${(59).toDouble().toSatuan(_satuan).toText()}-${65.toDouble().toSatuan(_satuan).toText()})",
                                    (Optrede_1 * 2 + Antrede_1).toNaN(),
                                    _satuan,
                                    2 * Optrede_1 + Antrede_1 <= 65 &&
                                        2 * Optrede_1 + Antrede_1 >= 59,LLayar),
                                buildContainerPerancangan(
                                    "Keamanan (O+A)",
                                    "(${(46).toDouble().toSatuan(_satuan).toText()})",
                                    (Optrede_1 + Antrede_1).toNaN(),
                                    _satuan,
                                    Optrede_1 + Antrede_1 <= 47 &&
                                        Optrede_1 + Antrede_1 >= 45,LLayar),
                                buildContainerPerancangan(
                                    "Kenyamanan (A-O)",
                                    "(${(12).toDouble().toSatuan(_satuan).toText()})",
                                    (Antrede_1 - Optrede_1).toNaN(),
                                    _satuan,
                                    Antrede_1 - Optrede_1 >= 11 &&
                                        Antrede_1 - Optrede_1 <= 13,LLayar),
                                buildContainerPerancangan("Antrede (min)",
                                    "(${(26).toDouble().toSatuan(_satuan).toText()})",
                                    (Antrede_1).toNaN(), _satuan, Antrede_1 >= 26,LLayar),
                                buildContainerPerancangan(
                                    "Optrede (max umum)",
                                    "(${(19).toDouble().toSatuan(_satuan).toText()})",
                                    (Optrede_1).toNaN(),
                                    _satuan,
                                    Optrede_1 <= 19,LLayar),
                                buildContainerPerancangan(
                                    "Optrede (max rumah)",
                                    "(${(21).toDouble().toSatuan(_satuan).toText()})",
                                    (Optrede_1).toNaN(),
                                    _satuan,
                                    Optrede_1 <= 21,LLayar),
                                buildContainerPerancangan(
                                    "Langkah (max)",
                                    "(16) ",
                                    (OptredeNT_1).toNaN(),
                                    "kali",
                                    OptredeNT_1 <= 16,LLayar),
                                buildContainerPerancangan(
                                    "Tebal Pelat (min)",
                                    '(${(
                                        fy<420?sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2))*100 / 20:sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2))*100 / 20 * (0.4 + fy / 700)
                                    ).toRound(0).toNaN().toSatuan(_satuan).toText()})',
                                    (TebalPelatTanggaPilih_1).toNaN(),
                                    _satuan,
                                    TebalPelatTanggaPilih_1>(
                                        fy<420?sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2))*100 / 20:sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2))*100 / 20 * (0.4 + fy / 700)
                                    ).toRound(0).toNaN(),LLayar),
                                buildContainerPerancangan(
                                    "Lebar (rekomendasi ≥ )",
                                    "(${(120).toDouble().toSatuan(_satuan).toText()})",
                                    (LebarT).toNaN().toSatuan(_satuan),
                                    _satuan,
                                    LebarT>60,LLayar),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Bordes'),
                                buildContainerPerancangan(
                                    "Tinggi Balok (h min) ",
                                    "(L/16)",
                                    (LebarT/16).toNaN().toSatuan(_satuan),
                                    _satuan,
                                    hB>=LebarT/16,LLayar),
                                buildContainerPerancangan(
                                    "Lebar Balok (b min) ",
                                    "(2/3h)",
                                    (2/3*hB).toNaN().toSatuan(_satuan),
                                    _satuan,
                                    bB>=2/3*hB,LLayar),
                                buildContainerPerancangan(
                                    "Lebar Balok (b min) ",
                                    "(${(25).toDouble().toSatuan(_satuan).toText()})",
                                    (bB).toNaN().toSatuan(_satuan),
                                    _satuan,
                                    bB>=25,LLayar),
                                buildContainerPerancangan(
                                    "Tebal Pelat (min)",
                                    '(${(
                                        fy<420?PanjangB_1 / 20:PanjangB_1/ 20 * (0.4 + fy / 700)
                                    ).toRound(0)
                                        .toNaN().toSatuan(_satuan).toText()})',
                                    (TebalPelatBordesPilih_1).toNaN(),
                                    _satuan,
                                    TebalPelatTanggaPilih_1>(
                                        fy<420?PanjangB_1 / 20:PanjangB_1/ 20 * (0.4 + fy / 700)
                                    ).toRound(0)
                                        .toNaN(),LLayar),
                                buildDivider(10),
                                Center(child: Text('Hasil Perhitungan')),
                                SizedBox(
                                  height: 5,
                                ),
                                buildContainerHasil(
                                    "Antrade", Antrede_1.toNaN().toSatuan(_satuan), _satuan,LLayar),
                                buildContainerHasil(
                                    "Antrade Total", AntredeNT_1.toNaN(), "buah",LLayar),
                                buildContainerHasil(
                                    "Antrade Biasa", AntredeN_1.toNaN(), "buah",LLayar),
                                buildContainerHasil(
                                    "Antrade + 1cm ", AntredeN1_1.toNaN(), "buah",LLayar),
                                buildContainerHasil(
                                    "Antrade - 1cm", Antrede1N_1.toNaN(), "buah",LLayar),
                                buildContainerHasil(
                                    "Optrade", Optrede_1.toNaN().toSatuan(_satuan), _satuan,LLayar),
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
                          Colors.blue),
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

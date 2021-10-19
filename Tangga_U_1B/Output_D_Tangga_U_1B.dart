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
import 'package:perancangan_tangga_app/Tangga_U_1B/Gambar_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Hitung_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_Tangga_U_1B.dart';

class OutputD_Tangga_U_1BPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  OutputD_Tangga_U_1BPage({this.projek,this.task});

  @override
  State<OutputD_Tangga_U_1BPage> createState() => _OutputD_Tangga_U_1BPageState();
}

class _OutputD_Tangga_U_1BPageState extends State<OutputD_Tangga_U_1BPage> {
//variable + keadaan awal
  final _formKey = GlobalKey<FormState>();
  final controllerPanjangT1 = new TextEditingController(text: '0');
  final controllerPanjangT2 = new TextEditingController(text: '0');
  final controllerPanjangT3 = new TextEditingController(text: '0');
  final controllerTinggiT1 = new TextEditingController(text: '0');
  final controllerTinggiT2 = new TextEditingController(text: '0');
  final controllerTinggiT3 = new TextEditingController(text: '0');
  final controllerOptrade1 = new TextEditingController(text: '0');
  final controllerOptrade2 = new TextEditingController(text: '0');
  final controllerOptrade3 = new TextEditingController(text: '0');
  final controllerLebarT = new TextEditingController(text: '0');
  final controllerLebarB = new TextEditingController(text: '0');
  final controllerPanjangB = new TextEditingController(text: '0');
  final controllerNama = new TextEditingController();

  DateTime _tanggal = DateTime.now();
  String _jenis = 'Tangga U 1B';
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
    Optrede_1 = double.parse(controllerOptrade1.text);
    TinggiT_1 = double.parse(controllerTinggiT1.text);
    PanjangT_1 = double.parse(controllerPanjangT1.text);
    Optrede_2 = double.parse(controllerOptrade2.text);
    TinggiT_2 = double.parse(controllerTinggiT2.text);
    PanjangT_2 = double.parse(controllerPanjangT2.text);
    Optrede_3 = double.parse(controllerOptrade3.text);
    TinggiT_3 = double.parse(controllerTinggiT3.text);
    PanjangT_3 = double.parse(controllerPanjangT3.text);
    LebarT = double.parse(controllerLebarT.text);
    LebarB_1 = double.parse(controllerLebarB.text);
    PanjangB_1 = double.parse(controllerPanjangB.text);
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
      controllerOptrade1.text = widget.task.optredeR1.toString();
      controllerPanjangT2.text = widget.task.panjangT2.toString();
      controllerTinggiT2.text = widget.task.tinggiT2.toString();
      controllerOptrade2.text = widget.task.optredeR2.toString();
      controllerPanjangT3.text = widget.task.panjangT3.toString();
      controllerTinggiT3.text = widget.task.tinggiT3.toString();
      controllerOptrade3.text = widget.task.optredeR3.toString();
      controllerLebarT.text = widget.task.lebarT.toString();
      controllerLebarB.text = widget.task.lebarB.toString();
      controllerPanjangB.text = widget.task.panjangB.toString();

      _satuan = widget.task.satuan;
      _ukuranTangga = widget.task.ukuranTangga;
      _pembagiA = widget.task.pembagiA;
      _pembagiO = widget.task.pembagiO;
      _visible = widget.task.visible;

    }
    MasukData();
    Hitung_T_U_1B();

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

    return Scaffold(
        appBar: AppBar(
          title: Text('Desain'),
          backgroundColor: Colors.green[500],
          leading: IconButton(onPressed:() {Get.to(Output_Tangga_U_1BPage(projek: widget.projek,task: widget.task,));},
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
                                Center(child: Text('Hasil Desain')),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(child: Text('Tangga Atas = Tangga Bawah')),
                                buildContainerHasil(
                                    "Panjang Tangga", PanjangT_1.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Tinggi Tangga", TinggiT_1.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Lebar Tangga", LebarT.toNaN(), "cm"),
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
                      Visibility(
                        visible: !isUkuranTangga,
                        child: Container(
                          padding:
                          EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 3),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(child: Text('Hasil Desain')),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Tangga Atas'),
                                buildContainerHasil(
                                    "Panjang Tangga", PanjangT_2.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Tinggi Tangga", TinggiT_2.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Lebar Tangga", LebarT.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Antrade", Antrede_2.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Antrade Total", AntredeNT_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Antrade Biasa", AntredeN_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Antrade + 1cm ", AntredeN1_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Antrade - 1cm", Antrede1N_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Optrade", Optrede_2.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Optrade Total", OptredeNT_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Optrade Biasa", OptredeN_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Optrade + 1cm", OptredeN1_2.toNaN(), "buah"),
                                buildContainerHasil(
                                    "Optrade - 1cm", Optrede1N_2.toNaN(), "buah"),
                                buildContainerHasil("Sudut", Sudut_2.toNaN(), "°"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Tangga Bawah'),
                                buildContainerHasil(
                                    "Panjang Tangga", PanjangT_2.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Tinggi Tangga", TinggiT_2.toNaN(), "cm"),
                                buildContainerHasil(
                                    "Lebar Tangga", LebarT.toNaN(), "cm"),
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
                                SizedBox(
                                  height: 5,
                                ),
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
                            painter: Gambar_Tangga_U_1B_1(),
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
                              painter: Gambar_Tangga_U_1B_2(),
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
                              painter: Gambar_Tangga_U_1B_3(),
                            )),
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
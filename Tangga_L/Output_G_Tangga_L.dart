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
import 'package:perancangan_tangga_app/Tangga_L/Gambar_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Hitung_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_Tangga_L.dart';

class OutputG_Tangga_LPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  OutputG_Tangga_LPage({this.projek,this.task});

  @override
  State<OutputG_Tangga_LPage> createState() => _OutputG_Tangga_LPageState();
}

class _OutputG_Tangga_LPageState extends State<OutputG_Tangga_LPage> {
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
    Hitung_T_L();
    HitungT_T_L();
    if(_ukuranTangga == 'Sama'){
      isUkuranTangga = true;
    }else{
      isUkuranTangga = false;
    }
  }

  final Icon1 = Icon(
    Icons.keyboard_arrow_right_rounded,
    color: Colors.white,
    size: 40,
  );
  final Icon2 = Icon(
    Icons.keyboard_arrow_down_rounded,
    color: Colors.white,
    size: 40,
  );

  bool Gambar1 = false;
  bool Gambar2 = false;
  bool Gambar3 = false;

  bool Gambar5 = false;
  bool Gambar6 = false;
  bool Gambar7 = false;
  bool Gambar8 = false;
  bool Gambar9 = false;

  bool Gambar11 = false;
  bool Gambar12 = false;
  bool Gambar13 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      appBar: AppBar(
        title: Text('Gambar'),
        leading: IconButton(onPressed:() {Get.to(Output_Tangga_LPage(projek: widget.projek,task: widget.task,));},
          icon:Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.green[500],
        actions: [

        ],
        //automaticallyImplyLeading: true,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: ListView(
              children: <Widget>[
                //tombol 1
                // Container(
                //   margin: EdgeInsets.only(top: 2,bottom: 2),
                //   child: Column(
                //     children: [
                //       InkWell(
                //         child: Container(
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             color: Colors.orange,
                //           ),
                //           padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
                //           height: 40,
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Text('Tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                //               Gambar1==false?Icon1:Icon2,
                //             ],
                //           ),
                //         ),
                //         onTap: (){
                //
                //           Gambar1 = !Gambar1;
                //           setState(() {});
                //         },
                //       ),
                //
                //     ],
                //   ),
                // ),
                // Visibility(
                //   visible: Gambar1,
                //   child: Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         color: Colors.green[500],
                //       ),
                //       margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                //       //color: Colors.green[500],
                //       child: CustomPaint(
                //         size: Size(LebarCanvas, TinggiCanvasa),
                //         painter: Gambar_Tangga_L_1(),
                //       )),
                // ),
                Text('Tangga Atas'),
                //tombol 2
                Container(
                  margin: EdgeInsets.only(top: 2,bottom: 2),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Penulangan Tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar2==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar2 = !Gambar2;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar2,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasb),
                        painter: Gambar_Tangga_L_1G(),
                      )),
                ),
                //tombol 3
                Container(
                  margin: EdgeInsets.only(top: 2,bottom: 2),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Penulangan Balok Bawah',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar3==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar3 = !Gambar3;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar3,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas,TinggiCanvasD_2),
                        painter: Gambar_Tangga_L_2G(),
                      )),
                ),
                //tombol 5
                Container(
                  margin: EdgeInsets.only(top: 2,bottom: 2),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pwnulangan Balok Atas',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar5==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar5 = !Gambar5;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar5,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasD_3),
                        painter: Gambar_Tangga_L_3G(),
                      )),
                ),
                Text('Tangga Bawah'),
                //tombol 8
                Container(
                  margin: EdgeInsets.only(top: 2,bottom: 2),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Penulangan Tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar8==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar8 = !Gambar8;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar8,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasb),
                        painter: Gambar_Tangga_L_4G(),
                      )),
                ),
                //tombol 9
                Container(
                  margin: EdgeInsets.only(top: 2,bottom: 2),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Penulangan Balok',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar9==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar9 = !Gambar9;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar9,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasD_5),
                        painter: Gambar_Tangga_L_5G(),
                      )),
                ),

              ])),
    );}
}
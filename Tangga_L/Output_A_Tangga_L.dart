import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_L/Gambar_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Hitung_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_Tangga_L.dart';

class OutputA_Tangga_LPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  OutputA_Tangga_LPage({this.projek,this.task});

  @override
  State<OutputA_Tangga_LPage> createState() => _OutputA_Tangga_LPageState();
}

class _OutputA_Tangga_LPageState extends State<OutputA_Tangga_LPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();
  DateTime _tanggal = DateTime.now();
  String _jenis = 'Tangga I';
  String _nama = '';
  String _keterangan = '';
  String _satuan = 'cm';
  String _ukuranTangga = 'Sama';
  String _pembagiA = '1 cm';
  String _pembagiO = '1 cm';
  String _mirror = '0';
  String _teratas = 'Antrede';


  String _visible = "0";
  bool isSetting = false;
  bool isGambar1 = false;
  bool isGambar2 = false;
  bool isGambar3 = false;
  bool DataPenulangan = false;
  bool isUkuranTangga = true;

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
      _mirror = widget.task.mirror;
      _teratas = widget.task.teratas;
    }

    MasukanData(widget.task);
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
    final LLayar = MediaQuery.of(context).size.width;
    final TLayar = MediaQuery.of(context).size.height;
    LebarCanvas = LLayar - 40;
    return Scaffold(
      key: _ScaffoldKey,
      appBar: AppBar(
        title: Text('Analisis'),
        // leading: IconButton(onPressed:() {Get.to(Output_Tangga_LPage(projek: widget.projek,task: widget.task,));},
        //   icon:Icon(Icons.arrow_back),
        //   color: Colors.white,
        // ),
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
                              Text('Tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar1==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar1 = !Gambar1;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar1,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasG_1),
                         painter: Gambar_Tangga_L_1O(),
                      )),
                ),
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
                              Text('TebalTangga',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        size: Size(LebarCanvas, TinggiCanvasG_2),
                        painter: Gambar_Tangga_L_2O(),
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
                              Text('Pembebanan dan Tumpuan',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        size: Size(LebarCanvas,TinggiCanvasG_3),
                         painter: Gambar_Tangga_L_3O(),
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
                              Text('Gambar NFD tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        size: Size(LebarCanvas,TinggiCanvasG_5),
                         painter: Gambar_Tangga_L_5O(),
                      )),
                ),
                //tombol 6
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
                              Text('Gambar SFD tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar6==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar6 = !Gambar6;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar6,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasG_6),
                         painter: Gambar_Tangga_L_6O(),
                      )),
                ),
                //tombol 7
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
                              Text('Gambar BMD tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar7==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){

                          Gambar7 = !Gambar7;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar7,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasG_7),
                         painter: Gambar_Tangga_L_7O(),
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
                              Text('TebalTangga',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        size: Size(LebarCanvas, TinggiCanvasG_8),
                         painter: Gambar_Tangga_L_8O(),
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
                              Text('Pembebanan dan Tumpuan',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        size: Size(LebarCanvas, TinggiCanvasG_9),
                         painter: Gambar_Tangga_L_9O(),
                      )),
                ),
                //tombol 11
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
                              Text('Gambar NFD tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar11==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){
                          Gambar11 = !Gambar11;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar11,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasG_11),
                         painter: Gambar_Tangga_L_11O(),
                      )),
                ),
                //tombol 12
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
                              Text('Gambar SFD tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar12==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){
                          Gambar12 = !Gambar12;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar12,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasG_12),
                         painter: Gambar_Tangga_L_12O(),
                      )),
                ),
                //tombol 13
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
                              Text('Gambar BMD tangga',style: TextStyle(fontSize: 20,color: Colors.white),),
                              Gambar13==false?Icon1:Icon2,
                            ],
                          ),
                        ),
                        onTap: (){
                          Gambar13 = !Gambar13;
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                ),
                Visibility(
                  visible: Gambar13,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      //color: Colors.green[500],
                      child: CustomPaint(
                        size: Size(LebarCanvas, TinggiCanvasG_13),
                         painter: Gambar_Tangga_L_13O(),
                      )),
                ),
              ])),
    );}
}
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

class OutputG_Tangga_U_1BPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  OutputG_Tangga_U_1BPage({this.projek,this.task});

  @override
  State<OutputG_Tangga_U_1BPage> createState() => _OutputG_Tangga_U_1BPageState();
}

class _OutputG_Tangga_U_1BPageState extends State<OutputG_Tangga_U_1BPage> {
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
    Hitung_T_U_1B();
    HitungT_T_U_1B();

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
        title: Text('Gambar'),
        // leading: IconButton(onPressed:() {Get.to(Output_Tangga_U_1BPage(projek: widget.projek,task: widget.task,));},
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
                //         painter: Gambar_Tangga_U_1B_1O(),
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
                        size: Size(LebarCanvas, TinggiCanvasD_1),
                        painter: Gambar_Tangga_U_1B_1D(),
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
                        size: Size(LebarCanvas, TinggiCanvasD_2),
                        painter: Gambar_Tangga_U_1B_2D(),
                      )),
                ),
                Text('Balok'),
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
                              Text('Penulangan Balok',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        size: Size(LebarCanvas, TinggiCanvasD_3),
                        painter: Gambar_Tangga_U_1B_3D(),
                      )),
                ),
              ])),
    );}
}
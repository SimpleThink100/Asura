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
import 'package:perancangan_tangga_app/database.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Hitung_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Gambar_Tangga_I_1B.dart';

class Material_Tangga_I_1BPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  Material_Tangga_I_1BPage({this.projek,this.task});

  @override
  State<Material_Tangga_I_1BPage> createState() => _Material_Tangga_I_1BPageState();
}

class _Material_Tangga_I_1BPageState extends State<Material_Tangga_I_1BPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();
  final controllerFc = new TextEditingController(text: '0');
  final controllerFy = new TextEditingController(text: '0');
  final controllerD = new TextEditingController(text: '0');
  final controllerS = new TextEditingController(text: '0');
  final controllerDs = new TextEditingController(text: '0');
  final controllerfcB = new TextEditingController(text: '0');
  final controllerfyB = new TextEditingController(text: '0');
  final controllerDB = new TextEditingController(text: '0');
  final controllersB = new TextEditingController(text: '0');
  final controllerDsB = new TextEditingController(text: '0');
  bool isGambar1 = false;
  bool isvisible =false;

  void MasukData(){
    ResetValue();
    Optrede_1 = widget.task.optredeR1;
    TinggiT_1 = widget.task.tinggiT1;
    PanjangT_1 = widget.task.panjangT1;
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

    settingSatuan = widget.task.satuan;
    UkuranTangga = widget.task.ukuranTangga;
    settingPembagiAntrede = widget.task.pembagiA;
    settingPembagiOptrede = widget.task.pembagiO;
    mirror = widget.task.mirror;
    teratas = widget.task.teratas;

    beton = widget.task.Beton;
    keramik = widget.task.Keramik;
    spesi = widget.task.Spesi;
    ralling = widget.task.Hand;
    hidup = widget.task.hidup;

    fc = double.parse(controllerFc.text);
    fy = double.parse(controllerFy.text);
    d = double.parse(controllerD.text);
    Selimut = double.parse(controllerS.text);

    ds = double.parse(controllerDs.text);
    fcB=double.parse(controllerfcB.text);
    fyB=double.parse(controllerfyB.text);
    selimutB=double.parse(controllersB.text);
    dB = double.parse(controllerDB.text);
    dsB = double.parse(controllerDsB.text);

    bB=widget.task.bB;
    hB=widget.task.hB;
    dinding = widget.task.Dinding;
  }
  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      controllerFc.text = widget.task.fc.toString();
      controllerFy.text = widget.task.fy.toString();
      controllerD.text = widget.task.D.toString();
      controllerS.text = widget.task.S.toString();
      controllerDs.text = widget.task.Ds.toString();
      controllerfcB.text = widget.task.fcB.toString();
      controllerfyB.text = widget.task.fyB.toString();
      controllerDB.text = widget.task.DB.toString();
      controllersB.text = widget.task.sB.toString();
      controllerDsB.text = widget.task.DsB.toString();
    }
    MasukData();
    Hitung_T_I_1B();
  }

  void Work(){
    controllerD.text = "12";
    controllerFc.text = "25";
    controllerFy.text = "240";
    controllerS.text = "20";
    controllerDs.text = "8";
    controllerfcB.text = "25";
    controllerfyB.text = "240";
    controllerDB.text = "16";
    controllersB.text ="40";
    controllerDsB.text = "10";
  }
  void Clear(){
    controllerD.text = "0.0";
    controllerFc.text = "0.0";
    controllerFy.text ="0.0";
    controllerS.text = "0.0";
    controllerDs.text = "0.0";
    controllerfcB.text = "0.0";
    controllerfyB.text = "0.0";
    controllerDB.text ="0.0";
    controllersB.text ="0.0";
    controllerDsB.text = "0.0";
  }
  submit() {
    Task task = Task(
      jenis: widget.task.jenis,
      nama: widget.task.nama,
      // tanggal: _tanggal,
      keterangan: widget.task.keterangan,
      panjangT1: widget.task.panjangT1,
      tinggiT1: widget.task.tinggiT1,
      optredeR1: widget.task.optredeR1,
      panjangT2: widget.task.panjangT2,
      tinggiT2: widget.task.tinggiT2,
      optredeR2: widget.task.optredeR2,
      panjangT3: widget.task.panjangT3,
      tinggiT3: widget.task.tinggiT3,
      optredeR3: widget.task.optredeR3,
      tebalT1: widget.task.tebalT1,
      tebalT2: widget.task.tebalT2,
      tebalT3: widget.task.tebalT3,
      tebalB: widget.task.tebalB,
      lebarT: widget.task.lebarT,
      lebarB: widget.task.lebarB,
      panjangB: widget.task.panjangB,
      Beton:  widget.task.Beton,
      Keramik:  widget.task.Keramik,
      Spesi: widget.task.Spesi,
      Hand: widget.task.Hand,
      hidup: widget.task.hidup,
      tebalKeramik: widget.task.tebalKeramik,
      tebalSpesi: widget.task.tebalSpesi,
      tebalDinding: widget.task.tebalDinding,
      fc: double.parse(controllerFc.text) ,
      fy: double.parse(controllerFy.text),
      D: double.parse(controllerD.text),
      S: double.parse(controllerS.text),
      Ds:double.parse(controllerDs.text),
      fcB:double.parse(controllerfcB.text),
      fyB:double.parse(controllerfyB.text),
      DB:double.parse(controllerDB.text),
      sB:double.parse(controllersB.text),
      DsB:double.parse(controllerDsB.text),

      bB:widget.task.bB,
      hB:widget.task.hB,
      Dinding:widget.task.Dinding,

      satuan: widget.task.satuan,
      ukuranTangga: widget.task.ukuranTangga,
      pembagiA: widget.task.pembagiA,
      pembagiO: widget.task.pembagiO,
      visible: widget.task.visible,
      mirror: widget.task.mirror,
      teratas: widget.task.teratas,

      kD: widget.task.kD,
      kM: 1,
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
  final Icon1 = Icon(
    Icons.keyboard_arrow_right_rounded,
    color: Colors.white,
    size: 30,
  );
  final Icon2 = Icon(
    Icons.keyboard_arrow_down_rounded,
    color: Colors.white,
    size: 30,
  );
  bool Gambar1 = false;
  bool Gambar2 = false;

  @override
  Widget build(BuildContext context) {
    final LLayar = MediaQuery.of(context).size.width;
    final TLayar = MediaQuery.of(context).size.height;
    LebarCanvas = LLayar - 40;
    return Scaffold(
        key: _ScaffoldKey,
        appBar: AppBar(
          title: Text('Material'),
          // leading: IconButton(onPressed:() {Get.to(MainPage(projek: widget.projek,task: widget.task,));},
          //   icon:Icon(Icons.arrow_back),
          //   color: Colors.white,
          // ),
          backgroundColor: Colors.green[500],
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
          //automaticallyImplyLeading: true,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: ListView(
            children: <Widget>[
               //isian
              //1
              InkWell(
                child: Container(
                color: Colors.green,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 2),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                  height: 30,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tangga',style: TextStyle(fontSize: 18,color: Colors.white),),
                      Container(
                          child: Gambar1==false?Icon1:Icon2),
                    ],
                  ),
                ),
                onTap: (){

                  Gambar1 = !Gambar1;
                  setState(() {});
                },
              ),
              Visibility(
                visible: Gambar1,
                child: Column(children: [
                  buildContainerTextFiel(
                      'Kuat Tekan Beton (fc)', 'Mpa', controllerFc,LLayar),
                  buildContainerTextFiel(
                      'Kuat Tarik Baja (fy)', 'Mpa', controllerFy,LLayar),
                  buildContainerTextFiel(
                      'Diameter Tul Utama', 'mm', controllerD,LLayar),
                  buildContainerTextFiel(
                      'Diameter Tul Pembagi', 'mm', controllerDs,LLayar),
                  buildContainerTextFiel('Tebal Selimut', 'mm', controllerS,LLayar),

                ]),
              ),
              //2
              InkWell(
                child: Container(
                  color: Colors.green,
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 2),

                  height: 30,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Balok',style: TextStyle(fontSize: 18,color: Colors.white),),
                      Container(
                          child: Gambar2==false?Icon1:Icon2),
                    ],
                  ),
                ),
                onTap: (){

                  Gambar2 = !Gambar2;
                  setState(() {});
                },
              ),
               Visibility(
                visible: Gambar2,
                child: Column(children: [
                  buildContainerTextFiel(
                      'Kuat Tekan Beton (fc)', 'Mpa', controllerfcB,LLayar),
                  buildContainerTextFiel(
                      'Kuat Tarik Baja (fy)', 'Mpa', controllerfyB,LLayar),
                  buildContainerTextFiel(
                      'Diameter Tul Utama', 'mm', controllerDB,LLayar),
                  buildContainerTextFiel(
                      'Diameter Tul Pembagi', 'mm', controllerDsB,LLayar),
                  buildContainerTextFiel(
                      'Tebal Selimut', 'mm', controllersB,LLayar),
                ]),
              ),
              //tombol
              Row(
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
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        isGambar1=!isGambar1;
                        setState(() {});
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange[500]),
                      ),
                      child: Text('Posisi'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                         MasukData();
                         Hitung_T_I_1B();
                         HitungT_T_I_1B();
                         isvisible = true;
                         setState(() {});
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange[500]),
                      ),
                      child: Text('Hitung'),
                    ),
                  ),
                ],
              ),
              //posisi
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
                          size: Size(LebarCanvas, TinggiCanvasm_1),
                          painter: Gambar_Tangga_I_1B_1m(),
                        )),
                  ],
                ),
              ),
              //hasil
              Card(
                margin:
                EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 10),
                child: Column(
                  children: [
                    Visibility(
                      visible: isvisible,
                      child: Container(
                        padding:
                        EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 3),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(child: Text('Hasil Perancangan Tulangan')),
                              SizedBox(
                                height: 12,
                              ),

                              BuildPerancanganMaterial(
                                  "Tumpu AB",
                                  "D$Dtul_1-$Stul_1", Syarat_1=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Lapang AB",
                                  "D$Dtul_2-$Stul_2",Syarat_2=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Tumpu BA",
                                  "D$Dtul_3-$Stul_3",Syarat_3=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Pembagi AB",
                                  "D$Dtul_4-$Stul_4",Syarat_4=='M'?true:false,LLayar),
                              SizedBox(
                                height: 10,
                              ),
                              BuildPerancanganMaterial(
                                  "Tumpu BC",
                                  "D$Dtul_5-$Stul_5",Syarat_5=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Tumpu CB",
                                  "D$Dtul_6-$Stul_6",Syarat_6=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Pembagi BC",
                                  "D$Dtul_7-$Stul_7",Syarat_7=='M'?true:false,LLayar),
                              SizedBox(
                                height: 10,
                              ),
                              BuildPerancanganMaterial(
                                  "Balok C Tumpu",
                                  "$Stul_8 D-$Dtul_8",Syarat_8=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Balok C Lapang",
                                  "$Stul_9 D-$Dtul_9",Syarat_9=='M'?true:false,LLayar),
                              BuildPerancanganMaterial(
                                  "Balok C Pembagi",
                                  "D$Dtul_10-$Stul_10",Syarat_10=='M'?true:false,LLayar),

                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              //save
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                height: 30,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                   submit();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue[500]),
                  ),
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        )
    );
  }
}
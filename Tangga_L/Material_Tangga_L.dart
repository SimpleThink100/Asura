import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/menu.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/database.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_L/Hitung_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Gambar_Tangga_L.dart';

class Material_Tangga_LPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  Material_Tangga_LPage({this.projek,this.task});

  @override
  State<Material_Tangga_LPage> createState() => _Material_Tangga_LPageState();
}

class _Material_Tangga_LPageState extends State<Material_Tangga_LPage> {
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

    beton = widget.task.Beton;
    keramik = widget.task.Keramik;
    spesi = widget.task.Spesi;
    ralling = widget.task.Hand;
    dinding = widget.task.Dinding;

    bB=widget.task.bB;
    hB=widget.task.hB;

    settingSatuan = widget.task.satuan;
    UkuranTangga = widget.task.ukuranTangga;
    settingPembagiAntrede = widget.task.pembagiA;
    settingPembagiOptrede = widget.task.pembagiO;

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
    Hitung_T_L();
  }

  void defalut(){
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
      lebarT: widget.task.lebarT,
      lebarB: widget.task.lebarB,
      panjangB: widget.task.panjangB,
      Beton:  widget.task.Beton,
      Keramik:  widget.task.Keramik,
      Spesi: widget.task.Spesi,
      Hand: widget.task.Hand,
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
    return Scaffold(
        key: _ScaffoldKey,
        appBar: AppBar(
          title: Text('Material'),
          leading: IconButton(onPressed:() {Get.to(MainPage(projek: widget.projek,task: widget.task,));},
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
                      'Kuat Tekan Beton (fc)', 'Mpa', controllerFc),
                  buildContainerTextFiel(
                      'Kuat Tarik Baja (fy)', 'Mpa', controllerFy),
                  buildContainerTextFiel(
                      'Diameter Tul Utama', 'mm', controllerD),
                  buildContainerTextFiel(
                      'Diameter Tul Pembagi', 'mm', controllerDs),
                  buildContainerTextFiel('Tebal Selimut', 'mm', controllerS),

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
                      'Kuat Tekan Beton (fc)', 'Mpa', controllerfcB),
                  buildContainerTextFiel(
                      'Kuat Tarik Baja (fy)', 'Mpa', controllerfyB),
                  buildContainerTextFiel(
                      'Diameter Tul Utama', 'mm', controllerDB),
                  buildContainerTextFiel(
                      'Diameter Tul Pembagi', 'mm', controllerDsB),
                  buildContainerTextFiel(
                      'Tebal Selimut', 'mm', controllersB),
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
                        // print(widget.task.id);
                        defalut();
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
                        Hitung_T_L();
                        HitungT_T_L();
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
                          painter: Gambar_Tangga_L_1m(),
                        )),
                  ],
                ),
              ),
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
                          size: Size(LebarCanvas, TinggiCanvasm_2),
                          painter:Gambar_Tangga_L_2m(),
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
                              Center(child: Text('Hasil Perancangan')),
                              SizedBox(
                                height: 12,
                              ),
                              Text('Tangga Atas',style: TextStyle(color: Colors.orange[900]),),
                              SizedBox(
                                height: 2,
                              ),
                              //balok D
                              BuildPerancanganMaterial(
                                  "Balok D Tumpu",
                                  "$Stul_1 D-$Dtul_1",Syarat_1=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Balok D Lapang",
                                  "$Stul_2 D-$Dtul_2",Syarat_2=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Balok D Pembagi",
                                  "D$Dtul_3-$Stul_3",Syarat_3=='M'?true:false),
                              SizedBox(
                                height: 5,
                              ),
                              //batang DE
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu DE",
                                  "D$Dtul_4-$Stul_4", Syarat_4=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu ED",
                                  "D$Dtul_5-$Stul_5", Syarat_5=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Pembagi DE",
                                  "D$Dtul_6-$Stul_6", Syarat_6=='M'?true:false),
                              SizedBox(
                                height: 5,
                              ),
                              //batang HI
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu EF",
                                  "D$Dtul_7-$Stul_7", Syarat_7=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu FE",
                                  "D$Dtul_8-$Stul_8", Syarat_8=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Lapang EF",
                                  "D$Dtul_9-$Stul_9", Syarat_9=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Pembagi EF",
                                  "D$Dtul_10-$Stul_10", Syarat_10=='M'?true:false),
                              SizedBox(
                                height: 5,
                              ),
                              //batang IJ
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu FG",
                                  "D$Dtul_11-$Stul_11", Syarat_11=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu GF",
                                  "D$Dtul_12-$Stul_12", Syarat_12=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Pembagi FG",
                                  "D$Dtul_13-$Stul_13", Syarat_13=='M'?true:false),
                              SizedBox(
                                height: 5,
                              ),
                              //balok J
                              BuildPerancanganMaterial(
                                  "Balok J Tumpu",
                                  "$Stul_14 D-$Dtul_14",Syarat_14=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Balok J Lapang",
                                  "$Stul_15 D-$Dtul_15",Syarat_15=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Balok J Pembagi",
                                  "D$Dtul_16-$Stul_16",Syarat_16=='M'?true:false),
                              SizedBox(
                                height: 12,
                              ),
                              Text('Tangga Bawah',style: TextStyle(color: Colors.orange[900])),
                              SizedBox(
                                height: 2,
                              ),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu AB",
                                  "D$Dtul_17-$Stul_17", Syarat_17=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu BA",
                                  "D$Dtul_18-$Stul_18",Syarat_18=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Lapang AB",
                                  "D$Dtul_19-$Stul_19",Syarat_19=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Pembagi AB",
                                  "D$Dtul_20-$Stul_20",Syarat_20=='M'?true:false),
                              SizedBox(
                                height: 5,
                              ),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu BC",
                                  "D$Dtul_21-$Stul_21",Syarat_21=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Tumpu CB",
                                  "D$Dtul_22-$Stul_22",Syarat_22=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Tulangan Pembagi BC",
                                  "D$Dtul_23-$Stul_23",Syarat_23=='M'?true:false),
                              SizedBox(
                                height: 5,
                              ),
                              BuildPerancanganMaterial(
                                  "Balok C Tumpu",
                                  "$Stul_24 D-$Dtul_24",Syarat_24=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Balok C Lapang",
                                  "$Stul_25 D-$Dtul_25",Syarat_25=='M'?true:false),
                              BuildPerancanganMaterial(
                                  "Balok C Pembagi",
                                  "D$Dtul_26-$Stul_26",Syarat_26=='M'?true:false),

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
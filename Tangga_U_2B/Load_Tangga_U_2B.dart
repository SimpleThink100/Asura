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


class Load_Tangga_U_2BPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  Load_Tangga_U_2BPage({this.projek,this.task});

  @override
  State<Load_Tangga_U_2BPage> createState() => _Load_Tangga_U_2BPageState();
}

class _Load_Tangga_U_2BPageState extends State<Load_Tangga_U_2BPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();
  final controllerBeton = new TextEditingController(text: '0');
  final controllerKeramik = new TextEditingController(text: '0');
  final controllerSpesi = new TextEditingController(text: '0');
  final controllerHandralling = new TextEditingController(text: '0');
  final controllerhidup = new TextEditingController(text: '0');
  final controllerDinding = new TextEditingController(text:'0');
  final controllertebalKeramik = new TextEditingController(text:'0');
  final controllertebalSpesi = new TextEditingController(text:'0');
  final controllertebalDinding = new TextEditingController(text:'0');
  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      controllerBeton.text = widget.task.Beton.toString();
      controllerKeramik.text = widget.task.Keramik.toString();
      controllerSpesi.text = widget.task.Spesi.toString();
      controllerHandralling.text = widget.task.Hand.toString();
      controllerhidup.text = widget.task.hidup.toString();
      controllerDinding.text = widget.task.Dinding.toString();
      controllertebalKeramik.text = widget.task.tebalKeramik.toString();
      controllertebalSpesi.text = widget.task.tebalSpesi.toString();
      controllertebalDinding.text = widget.task.tebalDinding.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final LLayar = MediaQuery.of(context).size.width;
    final TLayar = MediaQuery.of(context).size.height;
    void defalut(){
      controllerBeton.text = '24';
      controllerKeramik.text="24" ;
      controllerSpesi.text='21';
      controllerHandralling.text='0.1' ;
      controllerhidup.text='3';
      controllerDinding.text='2.5';
      controllertebalKeramik.text = '1';
      controllertebalSpesi.text = '2';
    }
    void Clear(){
      controllerBeton.text ="0.0";
      controllerKeramik.text="0.0";
      controllerSpesi.text="0.0";
      controllerHandralling.text="0.0";
      controllerhidup.text='0.0';
      controllerDinding.text="0.0";
      controllertebalKeramik.text = '0.0';
      controllertebalSpesi.text = '0.0';
    }
    @override
    submit() {
      Task task = Task(
        jenis: widget.task.jenis,
        nama: widget.task.nama,
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
        tebalT1: widget.task.tebalT1,
        tebalT2: widget.task.tebalT2,
        tebalT3: widget.task.tebalT3,
        tebalB: widget.task.tebalB,
        Beton: double.parse(controllerBeton.text) ,
        Keramik: double.parse(controllerKeramik.text),
        Spesi: double.parse(controllerSpesi.text),
        Hand: double.parse(controllerHandralling.text),
        hidup: double.parse(controllerhidup.text),
        tebalKeramik: double.parse(controllertebalKeramik.text),
        tebalSpesi: double.parse(controllertebalSpesi.text),
        tebalDinding: widget.task.tebalDinding,

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

        bB:widget.task.bB,
        hB: widget.task.hB,
        Dinding: double.parse(controllerDinding.text),

        satuan: widget.task.satuan,
        ukuranTangga: widget.task.ukuranTangga,
        pembagiA: widget.task.pembagiA,
        pembagiO: widget.task.pembagiO,
        visible: widget.task.visible,
        mirror: widget.task.mirror,
        teratas: widget.task.teratas,

        kD: widget.task.kD,
        kM: widget.task.kM,
        kL: 1,
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
        key: _ScaffoldKey,
        appBar: AppBar(
          title: Text('Load'),
          backgroundColor: Colors.green[500],
          // leading: IconButton(onPressed:() {Get.to(MainPage(projek: widget.projek,task: widget.task,));},
          //   icon:Icon(Icons.arrow_back),
          //   color: Colors.white,
          // ),
          actions: [],
          //automaticallyImplyLeading: true,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: ListView(
            children: <Widget>[
              Text('Beban'),
              buildContainerTextFieldLoad("Beton", 'kN/m3', controllerBeton,LLayar),
              buildContainerTextFieldLoad("Keramik", 'kN/m3', controllerKeramik,LLayar),
              buildContainerTextFieldLoad("Spesi", 'kN/m3', controllerSpesi,LLayar),
              buildContainerTextFieldLoad("Handralling", 'kN/m', controllerHandralling,LLayar),
              buildContainerTextFieldLoad("Dinding", 'kN/m2', controllerDinding,LLayar),
              buildContainerTextFieldLoad("Hidup", 'kN/m2', controllerhidup,LLayar),
              Text('Tebal'),
              buildContainerTextFieldLoad("Keramik", 'cm', controllertebalKeramik,LLayar),
              buildContainerTextFieldLoad("Spesi", 'cm', controllertebalSpesi,LLayar),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        defalut();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange[500]),
                      ),
                      child: Text('Defalut'),
                    ),
                  ),
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
            ],
          ),
        )
    );
  }
}
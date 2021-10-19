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


class Load_Tangga_I_1BPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  Load_Tangga_I_1BPage({this.projek,this.task});

  @override
  State<Load_Tangga_I_1BPage> createState() => _Load_Tangga_I_1BPageState();
}

class _Load_Tangga_I_1BPageState extends State<Load_Tangga_I_1BPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();
  final controllerBeton = new TextEditingController(text: '0');
  final controllerKeramik = new TextEditingController(text: '0');
  final controllerSpesi = new TextEditingController(text: '0');
  final controllerHandralling = new TextEditingController(text: '0');
  final controllerDinding = new TextEditingController(text:'0');

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      controllerBeton.text = widget.task.Beton.toString();
      controllerKeramik.text = widget.task.Keramik.toString();
      controllerSpesi.text = widget.task.Spesi.toString();
      controllerHandralling.text = widget.task.Hand.toString();
      controllerDinding.text = widget.task.Dinding.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    void defalut(){
      controllerBeton.text = '24';
      controllerKeramik.text="24" ;
      controllerSpesi.text='21';
      controllerHandralling.text='0.1' ;
      controllerDinding.text='17';
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
        Beton: double.parse(controllerBeton.text) ,
        Keramik: double.parse(controllerKeramik.text),
        Spesi: double.parse(controllerSpesi.text),
        Hand: double.parse(controllerHandralling.text),
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
          leading: IconButton(onPressed:() {Get.to(MainPage(projek: widget.projek,task: widget.task,));},
            icon:Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          actions: [],
          //automaticallyImplyLeading: true,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: ListView(
            children: <Widget>[
              buildContainerTextFieldLoad("Beton", 'kN/m3', controllerBeton),
              buildContainerTextFieldLoad("Keramik", 'kN/m3', controllerKeramik),
              buildContainerTextFieldLoad("Spesi", 'kN/m3', controllerSpesi),
              buildContainerTextFieldLoad("Handralling", 'kN/m', controllerHandralling),
              buildContainerTextFieldLoad("Dinding", 'kN/m3', controllerDinding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: 30,
                    width: 70,
                    child: ElevatedButton(
                      onPressed: () {
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
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        defalut();
                        // print(widget.task.id);
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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_D_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_A_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_P_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_G_Tangga_L.dart';

class Output_Tangga_LPage extends StatefulWidget {

  final Projek projek;
  final Task task;
  Output_Tangga_LPage({this.projek,this.task});

  @override
  State<Output_Tangga_LPage> createState() => _Output_Tangga_LPageState();
}

class _Output_Tangga_LPageState extends State<Output_Tangga_LPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _ScaffoldKey,
        appBar: AppBar(
          title: Text('Output Tangga :'+widget.task.nama),
          leading: IconButton(
            onPressed: () {
              Get.to(MainPage(
                projek: widget.projek,
                task: widget.task,
              ));
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          backgroundColor: Colors.green[500],
          actions: [],
          //automaticallyImplyLeading: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Card_Output(
                  'Desain', widget.projek, widget.task, 1, widget.task.kD),
              Card_Output(
                  'Analisis', widget.projek, widget.task, 2, widget.task.kL),
              Card_Output(
                  'Gambar', widget.projek, widget.task, 3, widget.task.kM),
              Card_Output(
                  'Perkiraan Material', widget.projek, widget.task, 4, widget.task.kM),
              Card_Output(
                  'PDF', widget.projek, widget.task, 5, widget.task.kD),
            ],
          ),
        ));
  }

  Widget Card_Output(
      String nama, Projek projek, Task task, int simbol, double cek) {
    final Icon1 = Icon(
      Icons.close,
      color: Colors.red[500],
      size: 40,
    );
    final Icon2 = Icon(
      Icons.check,
      color: Colors.blue[500],
      size: 40,
    );
    return InkWell(
      onTap: () {
        switch (simbol) {
          case 1:
            if (widget.task.kD == 1) {
              Get.to(OutputD_Tangga_LPage(projek: widget.projek,task: widget.task,));
            }
            break;
          case 2:
            if (widget.task.kL == 1) {
              Get.to(OutputA_Tangga_LPage(projek: widget.projek,task: widget.task,));
            }
            break;
          case 3:
            if (widget.task.kM == 1) {
              Get.to(OutputG_Tangga_LPage(projek: widget.projek,task: widget.task,));
            }
            break;
          case 4:
            if (widget.task.kM == 1) {
              Get.to(OutputP_Tangga_LPage(projek: widget.projek,task: widget.task,));
            }
            break;
          case 5:
            if (widget.task.kO == 1) {
              print('export pdf');
              // Get.to(Output_Tangga_IPage(projek: widget.projek,task: widget.task,));
            }
            break;
          default:
            return print('0');
        }
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        color: Colors.green[100],
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 250,
                // color: Colors.red,
                child: Center(
                    child: Text(
                      nama,
                      style: TextStyle(fontSize: 24, color: Colors.green[700]),
                    )),
              ),
              Container(
                  height: 100,
                  width: 50,
                  //color: Colors.black,
                  child: cek == 0 ? Icon1 : Icon2)
            ],
          ),
        ),
      ),
    );
  }
}
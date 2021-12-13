import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Page/zero_page.dart';
//tangga I
import 'package:perancangan_tangga_app/Tangga_I/Hitungan_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Gambar_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Desain_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Load_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Material_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_A_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_D_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_G_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_P_Tangga_I.dart';
//tangga I_1B
import 'package:perancangan_tangga_app/Tangga_I_1B/Gambar_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Desain_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Load_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Material_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Output_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Hitung_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Output_A_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Output_D_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Output_G_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Output_P_Tangga_I_1B.dart';
//tangga L
import 'package:perancangan_tangga_app/Tangga_L/Gambar_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Hitung_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Desain_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Load_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Material_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_A_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_D_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_G_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_P_Tangga_L.dart';
//tangga U_1
import 'package:perancangan_tangga_app/Tangga_U_1B/Gambar_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Hitung_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Desain_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Load_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Material_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_A_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_D_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_G_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_P_Tangga_U_1B.dart';
//tangga U_2
import 'package:perancangan_tangga_app/Tangga_U_2B/Gambar_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Hitung_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Desain_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Load_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Material_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Output_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Output_A_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Output_D_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Output_G_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Output_P_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/database.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:intl/intl.dart' as tl;
import 'package:sliding_sheet/sliding_sheet.dart';


class MainPage extends StatefulWidget {
  final Projek projek;
  final Task task;

  MainPage({this.projek, this.task});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();
  Future<List<Task>> _taskList;
  final tl.DateFormat _TanggalFormat = tl.DateFormat('dd-MM-yyyy');
  TextEditingController controlerNama = TextEditingController();
  TextEditingController controlerKeterangan = TextEditingController();
  int sort;

  @override
  void initState() {
    super.initState();
    numtabel = widget.projek.id;
    _updateTaskList();
  }

  _updateTaskList() {
    print(sort);
    sort = Setting.getSort()??0;
    setState(() {
      _taskList = TaskH.instance.getTaskList(widget.projek,sort);
    });
  }

  Widget buildCard(Task task,) {
    submit() {
      Task task_ = Task(
        jenis: task.jenis,
        nama: controlerNama.text,
        keterangan: controlerKeterangan.text,
        panjangT1: task.panjangT1,
        tinggiT1: task.tinggiT1,
        optredeR1: task.optredeR1,
        panjangT2: task.panjangT2,
        tinggiT2: task.tinggiT2,
        optredeR2:task.optredeR2,
        panjangT3: task.panjangT3,
        tinggiT3: task.tinggiT3,
        optredeR3: task.optredeR3,
        lebarT: task.lebarT,
        lebarB: task.lebarB,
        panjangB: task.panjangB,
        tebalT1: task.tebalT1,
        tebalT2: task.tebalT2,
        tebalT3: task.tebalT3,
        tebalB: task.tebalB,
        Beton: task.Beton,
        Keramik:task.Keramik,
        Spesi: task.Spesi,
        Hand: task.Hand,
        hidup: task.hidup,
        tebalKeramik: task.tebalKeramik,
        tebalSpesi: task.tebalSpesi,
        tebalDinding: task.tebalDinding,
        fc: task.fc,
        fy: task.fy,
        D: task.D,
        S: task.S,

        Ds:task.Ds,
        fcB:task.fcB,
        fyB:task.fyB,
        DB:task.Ds,
        sB:task.sB,
        DsB:task.DsB,

        bB:task.bB,
        hB:task.hB,
        Dinding:task.Dinding,

        satuan:task.satuan ,
        pembagiA: task.pembagiA,
        pembagiO:task.pembagiO,
        ukuranTangga:task.ukuranTangga,
        visible:task.visible,
        mirror:task.mirror,
        teratas: task.teratas,

        kD:task.kD,
        kL:task.kL,
        kM:task.kM,
        kO:task.kO,
      );
      // TaskH.instance.insertTask(task_, widget.projek);
      task_.id = task.id;
      TaskH.instance.updateTask(task_,widget.projek);
      Get.offAll(MainPage(projek: widget.projek,
      ));
    }
    void SelectedItem(BuildContext context, item)async {
      switch (task.jenis) {
        case 'Tangga I':
          switch (item) {
            case 1:
              Get.to(Desain_Tangga_IPage(
                projek: widget.projek,
                task: task,));
              break;
            case 2:
              Get.to(Load_Tangga_IPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 3:
              Get.to(Material_Tangga_IPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 4:
              if (task.kD + task.kL + task.kM == 3) {
                Get.to(Output_Tangga_IPage(
                  projek: widget.projek,
                  task: task,
                ));
              }
              break;
            case 5:
              if (task.kD == 1) {
                Get.to(OutputD_Tangga_IPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 6:
              if (task.kD+task.kL == 2) {
                Get.to(OutputA_Tangga_IPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 7:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputG_Tangga_IPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 8:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputP_Tangga_IPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 9:
              if (task.kD+task.kL+task.kM == 3) {

                MasukanData(task);
                Hitung_T_I();
                HitungT_T_I_1();
                final pdfFile = await PdfApi.HitunganI(
                    Projek: widget.projek.nama,
                    Tanggal: _TanggalFormat.format(widget.projek.Tanggal),
                    Nama: task.nama,
                    Jenis:  task.jenis,
                    Hitungan1: PdfData1,
                    Gambar1: await PdfGambar1_I(),
                    Hitungan2: PdfData2,
                    Hitungan3: PdfData3,

                );
                PdfApi.openFile(pdfFile);

              }
              break;
          }
          break;
        case 'Tangga I 1 Bordes':
          switch (item) {
            case 1:
              Get.to(Desain_Tangga_I_1BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 2:
              Get.to(Load_Tangga_I_1BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 3:
              Get.to(Material_Tangga_I_1BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 4:
              if (task.kD + task.kL + task.kM == 3) {
                Get.to(Output_Tangga_I_1BPage(
                  projek: widget.projek,
                  task: task,
                ));
              }
              break;
            case 5:
              if (task.kD == 1) {
                Get.to(OutputD_Tangga_I_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 6:
              if (task.kD+task.kL == 2) {
                Get.to(OutputA_Tangga_I_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 7:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputG_Tangga_I_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 8:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputP_Tangga_I_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 9:
              if (task.kD+task.kL+task.kM == 3) {
                MasukanData(task);
                Hitung_T_I_1B();
                HitungT_T_I_1B();
                final pdfFile = await PdfApi.HitunganI(
                  Projek: widget.projek.nama,
                  Tanggal: _TanggalFormat.format(widget.projek.Tanggal),
                  Nama: task.nama,
                  Jenis:  task.jenis,
                  Hitungan1: PdfData1,
                  Gambar1: await PdfGambar1_I_1B_1(),
                  Hitungan2: PdfData2,
                  Hitungan3: PdfData3,
                );
                PdfApi.openFile(pdfFile);
              }
              break;
          }
          break;
        case 'Tangga L':
          switch (item) {
            case 1:
              Get.to(Desain_Tangga_LPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 2:
              Get.to(Load_Tangga_LPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 3:
              Get.to(Material_Tangga_LPage(
                projek: widget.projek,
                task:task,
              ));
              break;
            case 4:
              if (task.kD + task.kL + task.kM == 3) {
                Get.to(Output_Tangga_LPage(
                  projek: widget.projek,
                  task:task,
                ));
              }
              break;
            case 5:
              if (task.kD == 1) {
                Get.to(OutputD_Tangga_LPage(
                  projek: widget.projek,
                  task:task,));
              }
              break;
            case 6:
              if (task.kD+task.kL == 2) {
                Get.to(OutputA_Tangga_LPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 7:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputG_Tangga_LPage(
                  projek: widget.projek,
                  task:task,));
              }
              break;
            case 8:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputP_Tangga_LPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 9:
              if (task.kD+task.kL+task.kM == 3) {
                MasukanData(task);
                Hitung_T_L();
                HitungT_T_L();
                final pdfFile = await PdfApi.HitunganII(
                  Projek: widget.projek.nama,
                  Tanggal: _TanggalFormat.format(widget.projek.Tanggal),
                  Nama: task.nama,
                  Jenis:  task.jenis,
                  Gambar1: await PdfGambar1_L(),
                  Hitungan1: PdfData1,
                  Hitungan2: PdfData2,
                  Hitungan3: PdfData3,
                  Hitungan4: PdfData4,
                  Hitungan5: PdfData5,
                  Hitungan6: PdfData6,
                );
                PdfApi.openFile(pdfFile);
              }
              break;
          }
          break;
        case 'Tangga U 1 Bordes':
          switch (item) {
            case 1:
              Get.to(Desain_Tangga_U_1BPage(
                projek: widget.projek,
                task:task,
              ));
              break;
            case 2:
              Get.to(Load_Tangga_U_1BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 3:
              Get.to(Material_Tangga_U_1BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 4:
              if (task.kD + task.kL + task.kM == 3) {
                Get.to(Output_Tangga_U_1BPage(
                  projek: widget.projek,
                  task: task,
                ));
              };
              break;
            case 5:
              if (task.kD == 1) {
                Get.to(OutputD_Tangga_U_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 6:
              if (task.kD+task.kL == 2) {
                Get.to(OutputA_Tangga_U_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 7:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputG_Tangga_U_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 8:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputP_Tangga_U_1BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 9:
              if (task.kD+task.kL+task.kM == 3) {
                MasukanData(task);
                Hitung_T_U_1B();
                HitungT_T_U_1B();
                final pdfFile = await PdfApi.HitunganII(
                  Projek: widget.projek.nama,
                  Tanggal: _TanggalFormat.format(widget.projek.Tanggal),
                  Nama: task.nama,
                  Jenis:  task.jenis,
                  Gambar1: await PdfGambar1_U_1B(),
                  Hitungan1: PdfData1,
                  Hitungan2: PdfData2,
                  Hitungan3: PdfData3,
                  Hitungan4: PdfData4,
                  Hitungan5: PdfData5,
                  Hitungan6: PdfData6,
                );
                PdfApi.openFile(pdfFile);
              }
              break;
          }
          break;
        case 'Tangga U 2 Bordes':
          switch (item) {
            case 1:
              Get.to(Desain_Tangga_U_2BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 2:
              Get.to(Load_Tangga_U_2BPage(
                projek: widget.projek,
                task:task,
              ));
              break;
            case 3:
              Get.to(Material_Tangga_U_2BPage(
                projek: widget.projek,
                task: task,
              ));
              break;
            case 4:
              if (task.kD + task.kL + task.kM == 3) {
                Get.to(Output_Tangga_U_2BPage(
                  projek: widget.projek,
                  task:task,
                ));
              };
              break;
            case 5:
              if (task.kD == 1) {
                Get.to(OutputD_Tangga_U_2BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 6:
              if (task.kD+task.kL == 2) {
                Get.to(OutputA_Tangga_U_2BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 7:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputG_Tangga_U_2BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 8:
              if (task.kD+task.kL+task.kM == 3) {
                Get.to(OutputP_Tangga_U_2BPage(
                  projek: widget.projek,
                  task: task,));
              }
              break;
            case 9:
              if (task.kD+task.kL+task.kM == 3) {
                MasukanData(task);
                Hitung_T_U_2B();
                HitungT_T_U_2B();
                final pdfFile = await PdfApi.HitunganIII(
                  Projek: widget.projek.nama,
                  Tanggal: _TanggalFormat.format(widget.projek.Tanggal),
                  Nama: task.nama,
                  Jenis:  task.jenis,
                  Gambar1: await PdfGambar1_U_2B(),
                  Hitungan1: PdfData1,
                  Hitungan2: PdfData2,
                  Hitungan3: PdfData3,
                  Hitungan4: PdfData4,
                  Hitungan5: PdfData5,
                  Hitungan6: PdfData6,
                  Hitungan7: PdfData7,
                  Hitungan8: PdfData8,
                  Hitungan9: PdfData9,
                );
                PdfApi.openFile(pdfFile);
              }
              break;
          }
          break;
      }
    }

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
      onTap: (){
        showSlidingBottomSheet(context, builder: (context)=>SlidingSheetDialog(
              cornerRadius: 16,
              avoidStatusBar: true,
              snapSpec: SnapSpec(
                initialSnap: 0.96,
                snappings: [0.96],
              ),
              builder: (context,state)=>Material(
                //color: Colors.green[100],
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  padding: EdgeInsets.all(20),
                  children: [
                    Row(
                      children: [
                        Text("Janis: ",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 20,
                          ),),
                        Text(task.jenis,
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontSize: 20,
                          ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Nama: ",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 20,
                          ),),
                        Text(task.nama,
                          style: TextStyle(
                              color: Colors.orange[700],
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis
                          ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      height: 120,
                      color: Colors.green[100],
                      child: Text(
                        "Keterangan: ${task.keterangan}",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 16
                        ),
                      //textAlign: TextAlign.start,
                      maxLines: 6,),
                    ),
                    SizedBox(height: 10,),
                    //tombol
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //delet
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.red[500]),
                            ),
                            onPressed:(){
                              showDialog(context: context, builder: (context) {
                                return
                                  AlertDialog(
                                    scrollable: true,
                                    actionsPadding: EdgeInsets.zero,
                                    insetPadding: EdgeInsets.only(bottom: 0),
                                    buttonPadding: EdgeInsets.zero,
                                    // titlePadding: EdgeInsets.only(bottom: 10),
                                    contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 0),
                                    // backgroundColor: Colors.transparent,
                                    title: Text('Hapus Tangga',style: TextStyle(color: Colors.green[700]),),
                                    content: Container(
                                      //color: Colors.red,
                                      height: 80,
                                      width: 100,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Anda Yakin Menghapus Tangga :',style: TextStyle(color: Colors.green[500]),),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(task.nama,style: TextStyle(color: Colors.orange[900]),),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          SizedBox(width: 15,),
                                          Container(
                                            padding: EdgeInsets.only(bottom: 20),
                                            height: 45,
                                            width: 120,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.red),
                                              onPressed: () {
                                                TaskH.instance.deletTask(task.id, widget.projek);
                                                TaskH.instance.updateTask(task, widget.projek);
                                                _updateTaskList();
                                                Get.to(MainPage(projek: widget.projek));
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              child: Container(
                                                child: Text('Ya'),
                                              ),
                                            ),

                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            padding: EdgeInsets.only(bottom: 20),
                                            height: 45,
                                            width: 120,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(primary: Colors.blue),
                                              onPressed: () {
                                                // submit();
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              child: Container(
                                                child: Text('Tidak'),
                                              ),
                                            ),

                                          ),
                                          SizedBox(width: 15,),
                                        ],
                                      )
                                    ],
                                  );});
                            },
                            child: Container(
                              width: (MediaQuery.of(context).size.width-140)/2,
                                child: Row(
                                  children: [
                                    Icon(Icons.clear,),
                                    SizedBox(width: 20,),
                                    Text("Hapus"),
                                  ],
                                ))),
                        SizedBox(width: 20,),
                        //edit
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green[500]),
                            ),
                            onPressed:(){
                              controlerNama.text=task.nama;
                              controlerKeterangan.text=task.keterangan;
                              showDialog(context: context, builder: (context) {
                                return
                                  AlertDialog(
                                    scrollable: true,
                                    actionsPadding: EdgeInsets.zero,
                                    insetPadding: EdgeInsets.only(bottom: 0),
                                    buttonPadding: EdgeInsets.zero,
                                    // titlePadding: EdgeInsets.only(bottom: 10),
                                    contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 0),
                                    // backgroundColor: Colors.transparent,
                                    title: Text('Edit '),
                                    content: Container(
                                      //color: Colors.red,
                                      //height: 150,
                                      //width: 100,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Jenis: '+task.jenis),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            cursorColor: Colors.green,
                                              controller: controlerNama,
                                              decoration: InputDecoration(
                                                labelText: 'Nama',

                                                labelStyle: TextStyle(color: Colors.black),
                                                enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.green)
                                                ),
                                                focusedBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.green)
                                                ),
                                                border: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.green)
                                                ),

                                              )),
                                          TextField(
                                            cursorColor: Colors.green,
                                              maxLines: 10,
                                              controller: controlerKeterangan,
                                              decoration: InputDecoration(
                                                labelText: 'Keterangan',

                                                labelStyle: TextStyle(color: Colors.black),
                                                enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.green)
                                                ),
                                                focusedBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.green)
                                                ),
                                                border: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.green)
                                                ),

                                              )),
                                          SizedBox(height: 10,),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          SizedBox(width: 15,),
                                          Container(
                                            padding: EdgeInsets.only(bottom: 20),
                                            height: 45,
                                            width: 120,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.green),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              child: Container(
                                                child: Text('Kembali'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            padding: EdgeInsets.only(bottom: 20),
                                            height: 45,
                                            width: 120,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(primary: Colors.blue),
                                              onPressed: () {
                                                submit();
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              child: Container(
                                                child: Text('Save'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                        ],
                                      )
                                    ],
                                  );});
                            },
                            child: Container(
                                width: (MediaQuery.of(context).size.width-140)/2,
                                child: Row(
                                  children: [
                                    Icon(  Icons.app_registration_sharp,),
                                    SizedBox(width: 20,),
                                    Text("Edit"),
                                  ],
                                ))),
                      ],
                    ),
                    //input
                    Text("Input"),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){SelectedItem(context, 1);},
                      child: buildMenu("Desain",task.kD==1,Icon1,Icon2),
                    ),
                    InkWell(
                      onTap: (){SelectedItem(context, 2);},
                      child: buildMenu("Load",task.kL==1,Icon1,Icon2),
                    ),
                    InkWell(
                      onTap: (){SelectedItem(context, 3);},
                      child: buildMenu("Material",task.kM==1,Icon1,Icon2),
                    ),
                    SizedBox(height: 10,),
                    //output
                    Text("Output"),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){SelectedItem(context, 5);},
                      child: buildMenu("Desain",task.kD==1,Icon1,Icon2),
                    ),
                    InkWell(
                      onTap: (){SelectedItem(context, 6);},
                      child: buildMenu("Analisis",task.kD+task.kL==2,Icon1,Icon2),
                    ),
                    InkWell(
                      onTap: (){SelectedItem(context, 7);},
                      child: buildMenu("Gambar",task.kD+task.kL+task.kM==3,Icon1,Icon2),
                    ),
                    // InkWell(
                    //   onTap: (){SelectedItem(context, 8);},
                    //   child: buildMenu("Perkiraan Material",task.kD+task.kL+task.kM==3,Icon1,Icon2),
                    // ),
                    InkWell(
                      onTap: (){
                        SelectedItem(context, 9);
                        },
                      child: buildMenu("PDF",task.kD+task.kL+task.kM==3,Icon1,Icon2),
                    ),
                  ],
                ),
              ),
              headerBuilder: (BuildContext context,SheetState state)=>Material(
                child: Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 16,),
                      Center(
                        child: Container(
                          width: 32,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),
                ),
              )
            )
        );
        },
      child: Card(
        margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
        color: Colors.green[100],
        child: Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            height: 55,
            //width: 100,
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Jenis : ',
                          style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          task.jenis,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.orange[900], fontSize: 15.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Nama : ',
                          style: TextStyle(
                              color: Colors.green[900], fontSize: 15.0),
                        ),
                        Text(
                          task.nama,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: Colors.orange[900],
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Text(
                    //       'Tanggal: ',
                    //       style: TextStyle(
                    //           color: Colors.green[900], fontSize: 15.0),
                    //     ),
                    //     // Text(
                    //     //   _dateFormat.format(task.tanggal),
                    //     //   maxLines: 1,
                    //     //   softWrap: false,
                    //     //   overflow: TextOverflow.ellipsis,
                    //     //   style: TextStyle(
                    //     //       color: Colors.orange[900], fontSize: 15.0),
                    //     // ),
                    //   ],
                    // ),
                  ],
                ),
                // //keterangan
                // Positioned(
                //     top: -12,
                //     left: MediaQuery.of(context).size.width-110,
                //     child: IconButton(
                //       icon: Icon(
                //         Icons.article_outlined,
                //         color: Colors.green[900],
                //         size: 30,
                //       ),
                //       onPressed: () {
                //         showDialog(context: context, builder: (context) {
                //           return
                //              Dialog(
                //                backgroundColor: Colors.green[200],
                //                shape: RoundedRectangleBorder(
                //                  borderRadius: BorderRadius.circular(10),
                //                ),
                //                child: Padding(
                //                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                //                  child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                    mainAxisSize: MainAxisSize.min,
                //                    children: [
                //                      Container(
                //                          child: Row(
                //                            children: [
                //                              Text('Tangga : ',
                //                                style: TextStyle(
                //                                fontSize: 20,
                //                                color: Colors.green[900],
                //                              ),),
                //                              Text(task.nama,
                //                                style: TextStyle(
                //                                  fontSize: 20,
                //                                  color: Colors.orange[900],
                //                                ),),
                //                            ],
                //                          )
                //                      ),
                //                      SizedBox(height: 10,),
                //                      Container(
                //                        //color: Colors.green[300],
                //                          child: Text('Keterangan :',
                //                            style: TextStyle(
                //                            fontSize: 20,
                //                            color: Colors.green[900],
                //                          ),)
                //                      ),
                //                      SizedBox(height: 10,),
                //                      Container(
                //                        padding: EdgeInsets.all(10),
                //                        height: 300,
                //                        decoration: BoxDecoration(
                //                          color: Colors.white,
                //                          borderRadius:  BorderRadius.circular(10),
                //                        ),
                //                        child: ListView(
                //                          children: [
                //                            Text(task.keterangan,style: TextStyle(
                //                                color: Colors.green[900]),),
                //                          ],
                //                        ),
                //                      ),
                //                      SizedBox(height: 10,),
                //
                //                    ],
                //                  ),
                //                ),
                //              );
                //         });
                //       },
                //     )),
                // //edit
                // Positioned(
                //     top: -12,
                //     left: MediaQuery.of(context).size.width-150,
                //     child: IconButton(
                //       icon: Icon(
                //         Icons.app_registration_sharp,
                //         color: Colors.green[900],
                //         size: 30,
                //       ),
                //       onPressed: () {
                //         controlerNama.text=task.nama;
                //         controlerKeterangan.text=task.keterangan;
                //         showDialog(context: context, builder: (context) {
                //           return
                //             AlertDialog(
                //               scrollable: true,
                //               actionsPadding: EdgeInsets.zero,
                //               insetPadding: EdgeInsets.only(bottom: 0),
                //               buttonPadding: EdgeInsets.zero,
                //               // titlePadding: EdgeInsets.only(bottom: 10),
                //               contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 0),
                //               // backgroundColor: Colors.transparent,
                //               title: Text('Edit '),
                //               content: Container(
                //                 //color: Colors.red,
                //                 //height: 150,
                //                 //width: 100,
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   mainAxisSize: MainAxisSize.min,
                //                   children: [
                //                     Text('Jenis: '+task.jenis),
                //                     SizedBox(
                //                       height: 20,
                //                     ),
                //                     TextField(
                //                         controller: controlerNama,
                //                         decoration: InputDecoration(
                //                           labelText: 'Nama',
                //                         )),
                //                     TextField(
                //                       maxLines: 10,
                //                         controller: controlerKeterangan,
                //                         decoration: InputDecoration(
                //                           labelText: 'Keterangan',
                //                         )),
                //                     SizedBox(height: 10,),
                //                   ],
                //                 ),
                //               ),
                //               actions: <Widget>[
                //                 Row(
                //                   children: [
                //                     SizedBox(width: 15,),
                //                     Container(
                //                       padding: EdgeInsets.only(bottom: 20),
                //                       height: 45,
                //                       width: 120,
                //                       child: ElevatedButton(
                //                         style: ElevatedButton.styleFrom(
                //                             primary: Colors.green),
                //                         onPressed: () {
                //                           Navigator.pop(context);
                //                           setState(() {});
                //                         },
                //                         child: Container(
                //                           child: Text('Kembali'),
                //                         ),
                //                       ),
                //
                //                     ),
                //                     SizedBox(width: 10,),
                //                     Container(
                //                       padding: EdgeInsets.only(bottom: 20),
                //                       height: 45,
                //                       width: 120,
                //                       child: ElevatedButton(
                //                         style: ElevatedButton.styleFrom(primary: Colors.blue),
                //                         onPressed: () {
                //                           submit();
                //                           Navigator.pop(context);
                //                           setState(() {});
                //                         },
                //                         child: Container(
                //                           child: Text('Save'),
                //                         ),
                //                       ),
                //
                //                     ),
                //                     SizedBox(width: 15,),
                //                   ],
                //                 )
                //               ],
                //             );});
                //       },
                //     )),
                // //go
                // Positioned(
                //   top: 20,
                //   left: MediaQuery.of(context).size.width-110,
                //   child: PopupMenuButton<int>(
                //     icon: Icon(
                //       Icons.double_arrow_outlined,
                //       color: Colors.green[900],
                //     ),
                //     itemBuilder: (BuildContext context) => [
                //       PopupMenuItem<int>(
                //         value: 1,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               'Desain',
                //               style: TextStyle(
                //                   fontSize: 20, color: Colors.green[900]),
                //             ),
                //             task.kD==0?Icon1:Icon2,
                //           ],
                //         ),
                //       ),
                //       PopupMenuItem<int>(
                //         value: 2,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               'Load',
                //               style: TextStyle(
                //                   fontSize: 20, color: Colors.green[900]),
                //             ),
                //             task.kL==0?Icon1:Icon2,
                //           ],
                //         ),
                //       ),
                //       PopupMenuItem<int>(
                //         value: 3,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               'Material',
                //               style: TextStyle(
                //                   fontSize: 20, color: Colors.green[900]),
                //             ),
                //             task.kM==0?Icon1:Icon2,
                //           ],
                //         ),
                //       ),
                //       PopupMenuItem<int>(
                //         value: 4,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               'Output',
                //               style: TextStyle(
                //                   fontSize: 20, color: Colors.green[900]),
                //             ),
                //             task.kD+task.kL+task.kM==3?Icon2:Icon1,
                //           ],
                //         ),
                //       )
                //     ],
                //     onSelected: (item) => SelectedItem(context, item),
                //   ),
                // ),
                // //delet
                // Positioned(
                //     top: 20,
                //     left: MediaQuery.of(context).size.width-150,
                //     child: IconButton(
                //       icon: Icon(
                //         Icons.clear,
                //         color: Colors.green[900],
                //         size: 30,
                //       ),
                //       onPressed: () {
                //         showDialog(context: context, builder: (context) {
                //           return
                //             AlertDialog(
                //               scrollable: true,
                //               actionsPadding: EdgeInsets.zero,
                //               insetPadding: EdgeInsets.only(bottom: 0),
                //               buttonPadding: EdgeInsets.zero,
                //               // titlePadding: EdgeInsets.only(bottom: 10),
                //               contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 0),
                //               // backgroundColor: Colors.transparent,
                //               title: Text('Hapus Tangga',style: TextStyle(color: Colors.green[700]),),
                //               content: Container(
                //                 //color: Colors.red,
                //                 height: 80,
                //                 width: 100,
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text('Anda Yakin Menghapus Tangga :',style: TextStyle(color: Colors.green[500]),),
                //                     SizedBox(
                //                       height: 20,
                //                     ),
                //                     Text(task.nama,style: TextStyle(color: Colors.orange[900]),),
                //                   ],
                //                 ),
                //               ),
                //               actions: <Widget>[
                //                 Row(
                //                   children: [
                //                     SizedBox(width: 15,),
                //                     Container(
                //                       padding: EdgeInsets.only(bottom: 20),
                //                       height: 45,
                //                       width: 120,
                //                       child: ElevatedButton(
                //                         style: ElevatedButton.styleFrom(
                //                             primary: Colors.red),
                //                         onPressed: () {
                //                            TaskH.instance.deletTask(task.id, widget.projek);
                //                           TaskH.instance.updateTask(task, widget.projek);
                //                            _updateTaskList();
                //                           Navigator.pop(context);
                //                           setState(() {});
                //                         },
                //                         child: Container(
                //                           child: Text('Ya'),
                //                         ),
                //                       ),
                //
                //                     ),
                //                     SizedBox(width: 10,),
                //                     Container(
                //                       padding: EdgeInsets.only(bottom: 20),
                //                       height: 45,
                //                       width: 120,
                //                       child: ElevatedButton(
                //                         style: ElevatedButton.styleFrom(primary: Colors.blue),
                //                         onPressed: () {
                //                           // submit();
                //                           Navigator.pop(context);
                //                           setState(() {});
                //                         },
                //                         child: Container(
                //                           child: Text('Tidak'),
                //                         ),
                //                       ),
                //
                //                     ),
                //                     SizedBox(width: 15,),
                //                   ],
                //                 )
                //               ],
                //             );});
                //       },
                //     )),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      key: _ScaffoldKey,
      // drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Project : ' + widget.projek.nama),
        backgroundColor: Colors.green[500],
        leading: IconButton(
          onPressed: () {
            Get.to(ZeroPage());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context)=>[
              PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dibuat',style: TextStyle(
                          color: sort==0?Colors.green[900]:Colors.green[500]),),
                      SizedBox(width: 0,),
                      Icon(Icons.arrow_downward,
                        color:sort==0?Colors.green[900]:Colors.green[500]),
                    ],),
                onTap: ()async{
                  await Setting.setSort(0);
                  _updateTaskList();
                },
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dibuat',style: TextStyle(
                        color:sort==1?Colors.green[900]:Colors.green[500]),),
                    SizedBox(width: 0,),
                    Icon(Icons.arrow_upward,
                      color: sort==1?Colors.green[900]:Colors.green[500]),
                  ],),
                onTap: ()async{
                  await Setting.setSort(1);
                  _updateTaskList();
                },
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nama',style: TextStyle(
                        color: sort==2?Colors.green[900]:Colors.green[500]),),
                    SizedBox(width: 0,),
                    Icon(Icons.arrow_downward,
                      color: sort==2?Colors.green[900]:Colors.green[500]),
                  ],),
                onTap: ()async{
                  await Setting.setSort(2);
                  _updateTaskList();
                },
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nama',style: TextStyle(
                        color: sort==3?Colors.green[900]:Colors.green[500]),),
                    SizedBox(width: 0,),
                    Icon(Icons.arrow_upward,
                      color: sort==3?Colors.green[900]:Colors.green[500]),
                  ],),
                onTap: ()async{
                  await Setting.setSort(3);
                  _updateTaskList();
                },
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Jenis',style: TextStyle(
                        color: sort==4?Colors.green[900]:Colors.green[500]),),
                    SizedBox(width: 0,),
                    Icon(Icons.arrow_downward,
                      color: sort==4?Colors.green[900]:Colors.green[500]),
                  ],),
                onTap: ()async{
                  await Setting.setSort(4);
                  _updateTaskList();
                },
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Jenis',style: TextStyle(
                        color: sort==5?Colors.green[900]:Colors.green[500]),),
                    SizedBox(width: 0,),
                    Icon(Icons.arrow_upward,
                      color: sort==5?Colors.green[900]:Colors.green[500]),
                  ],),
                onTap: ()async{
                  await Setting.setSort(5);
                  _updateTaskList();
                },
              ),
            ],
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.sort),
            ),),
        ],
      ),
      body: Container(
          margin: EdgeInsets.only(top: 0,bottom: 0,),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Flexible(
                child: FutureBuilder(
                  future: _taskList,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                    ),
                  );
                    }
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return buildCard(snapshot.data[index]);
                        },
                    );
                    },
                ),
              ),
              SizedBox(height: 10,),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[500],
        child: Icon(Icons.add),
        onPressed: () {
          return Navigator.push(context, MaterialPageRoute(builder: (_) {
            return SecondPage(projek: widget.projek);
          }));
        },
      ),
    );
  }
}

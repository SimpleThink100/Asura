import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Page/zero_page.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Desain_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_L/Desain_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Desain_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Desain_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/database.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/menu.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:intl/intl.dart' as tl;
import 'package:perancangan_tangga_app/Tangga_I/Desain_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Load_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Material_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I/Output_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Desain_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Load_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Material_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Output_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_L/Desain_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Load_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Material_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_L/Output_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Desain_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Load_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Material_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Output_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Desain_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Load_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Material_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Output_Tangga_U_2B.dart';

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
  final tl.DateFormat _dateFormat = tl.DateFormat('dd-MM-yyyy');
  TextEditingController controlerNama = TextEditingController();
  TextEditingController controlerKeterangan = TextEditingController();

  @override
  void initState() {
    super.initState();
    numtabel = widget.projek.id;
    _updateTaskList();
  }

  _updateTaskList() {
    setState(() {
      _taskList = TaskH.instance.getTaskList(widget.projek);
    });
  }

  // submit() {
  //   Task task = Task(
  //     jenis: 'as',
  //     nama: '1',
  //     keterangan: 'ss',
  //     panjangT1: 0,
  //     tinggiT1: 0,
  //     optredeR1: 0,
  //     panjangT2: 0,
  //     tinggiT2: 0,
  //     optredeR2: 0,
  //     panjangT3: 0,
  //     tinggiT3: 0,
  //     optredeR3: 0,
  //     lebarT: 0,
  //     lebarB: 0,
  //     panjangB: 0,
  //     fc: 0,
  //     fy: 0,
  //     D: 0,
  //     S: 0,
  //     satuan: 'cm',
  //     pembagiA: '1 cm',
  //     pembagiO: '1 cm',
  //     ukuranTangga: 'Sama',
  //     visible: '0',
  //   );
  //   TaskH.instance.insertTask(task, widget.projek);
  // }

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
        Beton: task.Beton,
        Keramik:task.Keramik,
        Spesi: task.Spesi,
        Hand: task.Hand,
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
    void SelectedItem(BuildContext context, item) {
      switch (task.jenis) {
        case 'Tangga I':
          switch (item) {
            case 1:
              Get.to(Desain_Tangga_IPage(
                projek: widget.projek,
                task: task,
              ));
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
              }
              ;
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
              }
              ;
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
      onTap: () {
        print(task.Beton);
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
        color: Colors.green[100],
        child: Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            height: 55,
            width: 200,
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
                //keterangan
                Positioned(
                    top: -12,
                    left: 250,
                    child: IconButton(
                      icon: Icon(
                        Icons.article_outlined,
                        color: Colors.green[900],
                        size: 30,
                      ),
                      onPressed: () {
                        showDialog(context: context, builder: (context) {
                          return
                             Dialog(
                               backgroundColor: Colors.green[200],
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     Container(
                                         child: Row(
                                           children: [
                                             Text('Tangga : ',
                                               style: TextStyle(
                                               fontSize: 20,
                                               color: Colors.green[900],
                                             ),),
                                             Text(task.nama,
                                               style: TextStyle(
                                                 fontSize: 20,
                                                 color: Colors.orange[900],
                                               ),),
                                           ],
                                         )
                                     ),
                                     SizedBox(height: 10,),
                                     Container(
                                       //color: Colors.green[300],
                                         child: Text('Keterangan :',
                                           style: TextStyle(
                                           fontSize: 20,
                                           color: Colors.green[900],
                                         ),)
                                     ),
                                     SizedBox(height: 10,),
                                     Container(
                                       padding: EdgeInsets.all(10),
                                       height: 300,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius:  BorderRadius.circular(10),
                                       ),
                                       child: ListView(
                                         children: [
                                           Text(task.keterangan,style: TextStyle(
                                               color: Colors.green[900]),),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: 10,),

                                   ],
                                 ),
                               ),
                             );
                        });
                      },
                    )),
                //edit
                Positioned(
                    top: -12,
                    left: 210,
                    child: IconButton(
                      icon: Icon(
                        Icons.app_registration_sharp,
                        color: Colors.green[900],
                        size: 30,
                      ),
                      onPressed: () {
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
                                        controller: controlerNama,
                                        decoration: InputDecoration(
                                          labelText: 'Nama',
                                        )),
                                    TextField(
                                      maxLines: 10,
                                        controller: controlerKeterangan,
                                        decoration: InputDecoration(
                                          labelText: 'Keterangan',
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
                    )),
                //go
                Positioned(
                  top: 20,
                  left: 250,
                  child: PopupMenuButton<int>(
                    icon: Icon(
                      Icons.double_arrow_outlined,
                      color: Colors.green[900],
                    ),
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Desain',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.green[900]),
                            ),
                            task.kD==0?Icon1:Icon2,
                          ],
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Load',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.green[900]),
                            ),
                            task.kL==0?Icon1:Icon2,
                          ],
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Material',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.green[900]),
                            ),
                            task.kM==0?Icon1:Icon2,
                          ],
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Output',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.green[900]),
                            ),
                            task.kD+task.kL+task.kM==3?Icon2:Icon1,
                          ],
                        ),
                      )
                    ],
                    onSelected: (item) => SelectedItem(context, item),
                  ),
                ),
                //delet
                Positioned(
                    top: 20,
                    left: 210,
                    child: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.green[900],
                        size: 30,
                      ),
                      onPressed: () {
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
                    )),
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
        title: Text('Projek : ' + widget.projek.nama),
        backgroundColor: Colors.green[500],
        leading: IconButton(
          onPressed: () {
            Get.to(ZeroPage());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.sort),
              onPressed: () {
                setState(() {
                 // submit();
                });
              }),
        ],
      ),
      body: Container(
          //margin: EdgeInsets.all(20),
          child: Column(
        children: <Widget>[
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

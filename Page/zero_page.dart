import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Tangga_I/Desain_Tangga_I.dart';
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

class ZeroPage extends StatefulWidget {

  @override
  _ZeroPageState createState() => _ZeroPageState();
}

class _ZeroPageState extends State<ZeroPage> {
  Future<List<Projek>> _ProjekList;
  TextEditingController controlerNama = TextEditingController();
  TextEditingController controllerKeterangan = TextEditingController();
  TextEditingController controllerTanggal = TextEditingController();
  DateTime _Tanggal = DateTime.now();

  final tl.DateFormat _TanggalFormat=tl.DateFormat('MMM dd, yyyy');

  TanggalPicker() async{
    final DateTime Tanggal= await showDatePicker(
        context: context,
        initialDate: _Tanggal,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (Tanggal !=null && Tanggal !=_Tanggal){
      setState(() {
        _Tanggal=Tanggal;
      });
      controllerTanggal.text = _TanggalFormat.format(Tanggal);
    }
  }


  @override
  void initState(){
    super.initState();
    _updateTaskList();
  }
  _updateTaskList(){
    setState(() {
      _ProjekList = ProjekH.instance.getProjekList();
    });
  }
  Widget buildCard(Projek projek){
    submit() {
      Projek _projek = Projek(
        nama: controlerNama.text,
        keterangan: controllerKeterangan.text,
        Tanggal:_Tanggal,
      );
      _projek.id = projek.id;
      ProjekH.instance.updateProjek(_projek);
      Get.offAll(ZeroPage());
    }
    return  InkWell(
      onTap: (){
      return Navigator.push(context,MaterialPageRoute(builder: (_) {
        return MainPage(projek: projek);
      }));
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
                    //nama
                    Row(
                      children: [
                        Text(
                          'Nama Projek: ',
                          style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 15.0,
                          ),
                        ),
                        Text(projek.nama,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: Colors.orange[900],
                            fontSize: 15.0,
                          ),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //tanggal
                    Row(
                      children: [
                        Text(
                          'Tanggal Projek: ',
                          style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 15.0,
                          ),
                        ),
                        Text(_TanggalFormat.format(projek.Tanggal),
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: Colors.orange[900],
                            fontSize: 15.0,
                          ),),
                      ],
                    ),
                  ],
                ),
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
                        controlerNama.text=projek.nama;
                        controllerKeterangan.text=projek.keterangan;
                        controllerTanggal.text=_TanggalFormat.format(projek.Tanggal);
                        _Tanggal=projek.Tanggal;
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(
                            scrollable: true,
                            actionsPadding: EdgeInsets.zero,
                            insetPadding: EdgeInsets.only(bottom: 0),
                            buttonPadding: EdgeInsets.zero,
                            contentPadding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                            // backgroundColor: Colors.transparent,
                            title: Text('Tambah Projek'),
                            content: Container(
                              //color: Colors.red,
                              //height:150,
                              //width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //Text('Nama'),
                                  TextField(
                                      controller: controlerNama,
                                      decoration: InputDecoration(
                                        labelText: 'Nama',
                                      )
                                  ),
                                  SizedBox(height: 10,),
                                  TextField(
                                    maxLines: 3,
                                      controller: controllerKeterangan,
                                      decoration: InputDecoration(
                                        labelText: 'Keterangan',
                                      )),
                                  SizedBox(height: 10,),
                                  TextField(
                                      onTap: TanggalPicker,
                                      readOnly: true,
                                      controller: controllerTanggal,
                                      decoration: InputDecoration(
                                        labelText: 'Tanggal',
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
                          );

                        });
                      },
                    )),
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
                                            Text('Projek : ',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.green[900],
                                              ),),
                                            Text(projek.nama,
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
                                          Text(projek.keterangan,style: TextStyle(
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
                //hapus
                Positioned(
                    top: 20,
                    left: 250,
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
                              title: Text('Hapus Projek',style: TextStyle(color: Colors.green[700]),),
                              content: Container(
                                //color: Colors.red,
                                height: 80,
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Anda Yakin Menghapus Projek :',style: TextStyle(color: Colors.green[500]),),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(projek.nama,style: TextStyle(color: Colors.orange[900]),),
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
                                          ProjekH.instance.deletProjek(projek.id,);
                                          ProjekH.instance.updateProjek(projek,);
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
  Widget build(BuildContext context) {

    submit() {
        Projek projek = Projek(
          nama: controlerNama.text,
          keterangan: controllerKeterangan.text,
           Tanggal:_Tanggal,
        );
        ProjekH.instance.insertProjek(projek);
        Get.offAll(ZeroPage());
    }

    return MaterialApp(
      home:Scaffold(
          drawer: MainDrawer(),
          appBar: AppBar(
              title: Text('List Projek'),
            backgroundColor: Colors.green,
          ),
          body: Container(
            //margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: FutureBuilder(
                      future: _ProjekList,
                      builder: (context, snapshot) {
                        if(!snapshot.hasData){
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.green,
                            ),
                          );
                        }
                        return
                          ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return
                                buildCard(snapshot.data[index]);
                            },
                          );
                      },
                    ),
                  ),
                ],
              )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: (){
            controlerNama.text = '';
            controllerKeterangan.text = '';
            controllerTanggal.text=_TanggalFormat.format(DateTime.now());
            _Tanggal=DateTime.now();
            showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    scrollable: true,
                    actionsPadding: EdgeInsets.zero,
                    insetPadding: EdgeInsets.only(bottom: 0),
                    buttonPadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                    // backgroundColor: Colors.transparent,
                    title: Text('Tambah Projek'),
                    content: Container(
                      //color: Colors.red,
                      //height:150,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //Text('Nama'),
                          TextField(
                            controller: controlerNama,
                            decoration: InputDecoration(
                              labelText: 'Nama',
                            )
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            controller: controllerKeterangan,
                              decoration: InputDecoration(
                            labelText: 'Keterangan',
                          )),
                          SizedBox(height: 10,),
                          Container(
                            child: TextField(
                              onTap: TanggalPicker,
                                readOnly: true,
                                controller: controllerTanggal,
                                decoration: InputDecoration(
                                  labelText: 'Tanggal',
                                )),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 45,
                          width: 120,
                          child: ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: (){
                              submit();
                              Navigator.pop(context);
                              setState(() {});
                            },
                            child: Container(
                              child: Text('Tambah'),
                            ),),
                        ),
                      )
                    ],
                  );
            });
          }
        ),
          )
      );
  }
}

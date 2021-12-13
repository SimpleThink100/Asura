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
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/Main/simpanan.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:intl/intl.dart' as tl;
import 'package:sliding_sheet/sliding_sheet.dart';

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
      onLongPress: (){
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
                      Text("Nama: ",
                        style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 20,
                        ),),
                      Text(projek.nama,
                        style: TextStyle(
                            color: Colors.orange[700],
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis
                        ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Tanggal: ",
                        style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 20,
                        ),),
                      Text(_TanggalFormat.format(projek.Tanggal),
                        style: TextStyle(
                          color: Colors.orange[700],
                          fontSize: 20,
                        ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    height: 120,
                    color: Colors.green[100],
                    child: Text(
                      "Keterangan: ${projek.keterangan}",
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
                                  title: Text('Hapus Project',style: TextStyle(color: Colors.green[700]),),
                                  content: Container(
                                    //color: Colors.red,
                                    height: 80,
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Anda Yakin Menghapus Project :',style: TextStyle(color: Colors.green[500]),),
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
                                              Get.to(ZeroPage());
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
                                );
                            });
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
                                title: Text('Edit Project'),
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
                                          )
                                      ),
                                      SizedBox(height: 10,),
                                      TextField(
                                        cursorColor: Colors.green,
                                          maxLines: 3,
                                          controller: controllerKeterangan,
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
                                      TextField(
                                        cursorColor: Colors.green,
                                          onTap: TanggalPicker,
                                          readOnly: true,
                                          controller: controllerTanggal,
                                          decoration: InputDecoration(
                                            labelText: 'Tanggal',

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
                              );

                            });
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
        ));
      },
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
            width: MediaQuery.of(context).size.width/2,
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
                          'Nama: ',
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
                          'Tanggal: ',
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
              title: Text('List Project'),
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
            child: Icon(Icons.add),
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
                    title: Text('Tambah Project'),
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

                            )
                          ),
                          SizedBox(height: 10,),
                          TextField(
                              cursorColor: Colors.green,
                            controller: controllerKeterangan,
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
                          Container(
                            child: TextField(
                                cursorColor: Colors.green,
                              onTap: TanggalPicker,
                                readOnly: true,
                                controller: controllerTanggal,
                                decoration: InputDecoration(
                                  labelText: 'Tanggal',

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
                            style: ElevatedButton.styleFrom(primary: Colors.green),
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

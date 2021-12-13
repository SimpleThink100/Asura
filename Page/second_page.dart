import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';

class SecondPage extends StatefulWidget {

  final Projek projek;
  SecondPage({this.projek});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  GlobalKey<ScaffoldState>_ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
        appBar: AppBar(
          title: Text('Jenis Tangga'),
          backgroundColor: Colors.green[500],
          actions: [
          ],
          //automaticallyImplyLeading: true,
          ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Card_jenis_tangga(widget.projek),
            ],
          ),
        )
    );
  }

  Card Card_jenis_tangga(Projek projek) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      color: Colors.green[100],
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  color: Colors.grey,
                margin: EdgeInsets.all(10.0),
                  child:Container(
                    height: 20,
                    width: 20,
                  ),
              ),
              Text("Tangga Beton Pelat"),
              Spacer(),
              Container(
                child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                    onPressed: (){
                      return Navigator.push(context,MaterialPageRoute(builder: (_) {
                        return ThirdPage(projek: projek);
                  }));
                }),
              ),
          ],
        ),
        ),

            );
  }
}
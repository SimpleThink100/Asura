import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Page/zero_page.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';
import 'package:perancangan_tangga_app/fourth.dart';
import 'package:perancangan_tangga_app/coba.dart';
import 'package:perancangan_tangga_app/Tangga_I/Desain_Tangga_I.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/Desain_Tangga_I_1B.dart';
import 'package:perancangan_tangga_app/Tangga_L/Desain_Tangga_L.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/Desain_Tangga_U_1B.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/Desain_Tangga_U_2B.dart';
import 'package:perancangan_tangga_app/coba2.dart';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/sharepreferences.dart';
import 'package:flutter/services.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  //await Data.init();
  await Setting.init();
  runApp(MyApp());
}

var ScaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green,
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: true,
      home: GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(name: '/' , page: ()=> ZeroPage()),
          GetPage(name: '/main', page: () => MainPage(),transition: Transition.rightToLeft),
          GetPage(name: '/second' , page: ()=> SecondPage(),transition: Transition.rightToLeft),
          GetPage(name:'/third' , page:()=> ThirdPage(),transition: Transition.rightToLeft),
          GetPage(name:'/fourth' , page:()=> FourthPage(),transition: Transition.rightToLeft),
          GetPage(name: '/drawer', page:()=> Drawer()),
          GetPage(name: '/coba', page: ()=> cobapage()),
          GetPage(name: '/coba2',page:()=> coba2()),
          GetPage(name: '/Tangga_I', page: ()=> Desain_Tangga_IPage()),
          GetPage(name: '/Tangga_I_1B', page: ()=> Desain_Tangga_I_1BPage()),
          GetPage(name: '/Tangga_L', page: ()=> Desain_Tangga_LPage()),
          GetPage(name: '/Tangga_U_1B', page: ()=> Desain_Tangga_U_1BPage()),
          GetPage(name: '/Tangga_U_2B', page: ()=> Desain_Tangga_U_2BPage()),
        ],
      ),
    );
  }
}




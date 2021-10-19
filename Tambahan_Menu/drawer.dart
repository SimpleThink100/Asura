import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perancangan_tangga_app/Tambahan_Menu/drawer.dart';
import 'package:perancangan_tangga_app/Page/main_page.dart';
import 'package:perancangan_tangga_app/Page/second_page.dart';
import 'package:perancangan_tangga_app/Page/third_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('AKUN'),
            decoration: BoxDecoration(
              color: Colors.green[500],
            ),
          ),
          ListTile(
            title: Text('Pengaturan'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Satuan'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Pertolongan'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Bagikan'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Tentang Pengembang'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Keluar'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
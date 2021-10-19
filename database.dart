import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:perancangan_tangga_app/save_load_data.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';

class TaskH{
  static final TaskH instance = TaskH._instance();
  static Database db1;
  static Database db2;
  static Database db3;
  static Database db4;
  static Database db5;
  static Database db6;
  static Database db7;
  static Database db8;
  static Database db9;
  static Database db10;
  static Database db11;
  static Database db12;
  static Database db13;
  static Database db14;
  static Database db15;
  static Database db16;
  static Database db17;
  static Database db18;
  static Database db19;
  static Database db20;

  TaskH._instance();

  String TaskTable = 'Tasktabel' ;
  String colid = 'id';
  String coljenis = 'jenis';
  String colnama = 'nama';
  String colketerangan = 'keterangan';

  String colpanjangT1 = 'panjangT1';
  String coltinggiT1= 'tinggiT1';
  String coloptredeR1 = 'optredeR1';
  String colpanjangT2 = 'panjangT2';
  String coltinggiT2= 'tinggiT2';
  String coloptredeR2 = 'optredeR2';
  String colpanjangT3 = 'panjangT3';
  String coltinggiT3= 'tinggiT3';
  String coloptredeR3 = 'optredeR3';
  String collebarT = 'lebarT' ;
  String collebarB = 'lebarB' ;
  String colpanjangB = 'panjangB';
  String colbeton = 'beton';
  String colkeramik = 'keramik';
  String colspesi = 'spesi';
  String colhand = 'hand';
  String colfc = 'fc';
  String colfy = 'fy';
  String colD = 'D';
  String colS = 'S' ;
  String colDs='Ds';
  String colfcB='fcb';
  String colfyB='fyb';
  String colDB='Db';
  String colsB='sb';
  String colDsB='Dsb';

  String colbB='bB';
  String colhB='hB';
  String colDinding='dinding';

  String colsatuan = 'satuan';
  String colukutanTangga = 'ukuranTangga';
  String colpembagiA = 'pembagiA';
  String colpembagiO = 'pembagiO';
  String colvisible = 'visible';
  String colmirror = 'mirror';

  String colkd = 'kd';
  String colkl = 'kl';
  String colkm = 'km';
  String colko = 'ko';


  Future <Database> get db async {
    switch (numtabel) {
      case (1):
        if (db1 == null) {db1 = await _initDb();}
        return db1;break;
      case (2):
        if (db2 == null) {db2 = await _initDb();}
        return db2;break;
      case (3):
        if (db3 == null) {db3 = await _initDb();}
        return db3;break;
      case (4):
        if (db4 == null) {db4 = await _initDb();}
        return db4;break;
      case (5):
        if (db5 == null) {db5 = await _initDb();}
        return db5;break;
      case (6):
        if (db6 == null) {db6 = await _initDb();}
        return db6;break;
      case (7):
        if (db7 == null) {db7 = await _initDb();}
        return db7;break;
      case (8):
        if (db8 == null) {db8 = await _initDb();}
        return db8;break;
      case (9):
        if (db9 == null) {db9 = await _initDb();}
        return db9;break;
      case (10):
        if (db9 == null) {db10 = await _initDb();}
        return db10;break;
      case (11):
        if (db11 == null) {db11 = await _initDb();}
        return db11;break;
      case (12):
        if (db12 == null) {db12 = await _initDb();}
        return db12;break;
      case (13):
        if (db13 == null) {db13 = await _initDb();}
        return db13;break;
      case (14):
        if (db14 == null) {db14 = await _initDb();}
        return db14;break;
      case (15):
        if (db15 == null) {db15 = await _initDb();}
        return db15;break;
      case (16):
        if (db16 == null) {db16 = await _initDb();}
        return db16;break;
      case (17):
        if (db17 == null) {db17 = await _initDb();}
        return db17;break;
      case (18):
        if (db18 == null) {db18 = await _initDb();}
        return db18;break;
      case (19):
        if (db19 == null) {db19 = await _initDb();}
        return db19;break;
      case (20):
        if (db20 == null) {db20 = await _initDb();}
        return db20;break;

      default:
        return db1;
    }
  }

    Future <Database> _initDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path +TaskTable+numtabel.toString()+'.db';
    final todoListdb = await openDatabase(path,version: 1,onCreate: _createDb);
    return todoListdb;
  }

  void _createDb(Database db, int version,)async {
    await db.execute(
      'CREATE TABLE $TaskTable($colid INTEGER PRIMARY KEY AUTOINCREMENT, $coljenis TEXT, $colnama TEXT, $colketerangan TEXT, $colpanjangT1 TEXT, $coltinggiT1 TEXT, $coloptredeR1 TEXT, $colpanjangT2 TEXT, $coltinggiT2 TEXT, $coloptredeR2 TEXT, $colpanjangT3 TEXT, $coltinggiT3 TEXT, $coloptredeR3 TEXT, $collebarT TEXT, $collebarB TEXT, $colpanjangB TEXT, $colfc TEXT, $colfy TEXT, $colbeton TEXT, $colkeramik TEXT, $colspesi TEXT, $colhand TEXT, $colD TEXT, $colS TEXT, $colDs TEXT, $colfcB TEXT, $colfyB TEXT, $colDB TEXT, $colsB TEXT, $colDsB TEXT, $colbB TEXT, $colhB TEXT, $colDinding TEXT, $colsatuan TEXT, $colukutanTangga TEXT, $colpembagiA TEXT, $colpembagiO TEXT, $colvisible TEXT, $colmirror TEXT, $colkd TEXT, $colkl TEXT, $colkm TEXT, $colko TEXT)',
    );
  }

  Future <Database>deletAll () async{
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + 'todolist.db';
    await deleteDatabase(path);
  }

  Future <List<Map<String,dynamic>>> getTaskMapList() async{
    Database db = await this.db;
    final List<Map<String,dynamic>> result = await db.query(TaskTable);
    return result;
  }

  Future <List<Task>> getTaskList(Projek projek) async{
    numtabel = projek.id;
    print('get task list');
   final List<Map<String,dynamic>> TaskMapList = await getTaskMapList();
   final List<Task> TaskList =[];
   TaskMapList.forEach((TaskMap){
     TaskList.add(Task.fromMap(TaskMap));
   });
   return TaskList;
  }

  Future<int> insertTask(Task task, Projek projek) async{
    numtabel = projek.id;
    print('get insert');
    Database db = await this.db;
    final int result = await db.insert(TaskTable, task.toMap());
    return result;
  }

  Future<int> updateTask(Task task,Projek projek) async{
    numtabel = projek.id;
    print('get update');
    Database db = await this.db;
    final int result = await db.update(
        TaskTable,
        task.toMap(),
        where: '$colid = ?',
        whereArgs: [task.id],
    );
    return result;
  }

  Future<int> deletTask (int id,Projek projek) async{
    Database db = await this.db;
    final int result = await db.delete(
      TaskTable,
      where: '$colid = ?',
      whereArgs: [id],
    );
    return result;
  }

}

class ProjekH{
  static final ProjekH instance = ProjekH._instance();
  static Database _dbP;
  ProjekH._instance();

  String ProjekTable = 'projek_table';
  String colid = 'id';
  String colnama = 'nama';
  String colketerangan = 'keterangan';
  String coltanggal = 'tanggal';

  Future <Database> get dbP async {
    if (_dbP == null) {
      _dbP = await _initDb();
    }
    return _dbP;
  }

  Future <Database> _initDb() async{
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + 'ProjekTebel.db';
    final todoListdb = await openDatabase(path,version: 1,onCreate: _createDb);
    return todoListdb;
  }

  void _createDb(Database db, int version)async {
    await db.execute(
      'CREATE TABLE $ProjekTable($colid INTEGER PRIMARY KEY AUTOINCREMENT, $colnama TEXT, $colketerangan TEXT, $coltanggal TEXT)',
    );
  }

  Future <Database>deletAll () async{
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + 'todolist.db';
    await deleteDatabase(path);

  }

  Future <List<Map<String,dynamic>>> getProjekMapList() async{
    Database db = await this.dbP;
    final List<Map<String,dynamic>> result = await db.query(ProjekTable);
    return result;
  }

  Future <List<Projek>> getProjekList() async{
    final List<Map<String,dynamic>> TaskMapList = await getProjekMapList();
    final List<Projek> ProjekList =[];
    TaskMapList.forEach((ProjekMap){
      ProjekList.add(Projek.fromMap(ProjekMap));
    });
    return ProjekList;
  }

  // Future<int> getnumber()async{
  //   Database db = await this.dbP;
  //   final int result = Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $ProjekTable'));
  //   return result;
  // }

  Future<int> insertProjek(Projek projek) async{
    Database db = await this.dbP;
    final int result = await db.insert(ProjekTable, projek.toMap());
    return result;
  }

  Future<int> updateProjek(Projek projek) async{
    Database db = await this.dbP;
    final int result = await db.update(
      ProjekTable,
      projek.toMap(),
      where: '$colid = ?',
      whereArgs: [projek.id],
    );
    return result;
  }

  Future<int> deletProjek (int id) async{
    Database db = await this.dbP;
    final int result = await db.delete(
      ProjekTable,
      where: '$colid = ?',
      whereArgs: [id],
    );
    return result;
  }

}


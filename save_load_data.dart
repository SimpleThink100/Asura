import 'dart:core';

class Task {
  int id;
  String jenis;
  String nama;
  String keterangan;
  double panjangT1;
  double tinggiT1;
  double optredeR1;
  double panjangT2;
  double tinggiT2;
  double optredeR2;
  double panjangT3;
  double tinggiT3;
  double optredeR3;
  double lebarT;
  double lebarB;
  double panjangB;
  double Beton;
  double Keramik;
  double Spesi;
  double Hand;
  double fc;
  double fy;
  double D;
  double S;

  double Ds;
  double fcB;
  double fyB;
  double DB;
  double sB;
  double DsB;

  double bB;
  double hB;
  double Dinding;

  String satuan;
  String pembagiA;
  String pembagiO;
  String ukuranTangga;
  String visible;
  String mirror;

  double kD;
  double kL;
  double kM;
  double kO;

  Task(
      {this.jenis,
      this.nama,
      this.keterangan,
      this.panjangT1,
      this.tinggiT1,
      this.optredeR1,
      this.panjangT2,
      this.tinggiT2,
      this.optredeR2,
      this.panjangT3,
      this.tinggiT3,
      this.optredeR3,
      this.lebarT,
      this.lebarB,
      this.panjangB,
      this.Beton,
      this.Keramik,
      this.Spesi,
      this.Hand,
      this.fc,
      this.fy,
      this.D,
      this.S,
      this.Ds,
      this.fcB,
      this.fyB,
      this.DB,
      this.sB,
      this.DsB,
        this.bB,
        this.hB,
        this.Dinding,
      this.satuan,
      this.ukuranTangga,
      this.pembagiA,
      this.pembagiO,
      this.visible,
      this.mirror,
      this.kD,
      this.kL,
      this.kM,
      this.kO});

  Task.id({
    this.id,
    this.jenis,
    this.nama,
    this.keterangan,
    this.panjangT1,
    this.tinggiT1,
    this.optredeR1,
    this.panjangT2,
    this.tinggiT2,
    this.optredeR2,
    this.panjangT3,
    this.tinggiT3,
    this.optredeR3,
    this.lebarT,
    this.lebarB,
    this.panjangB,
    this.Beton,
    this.Keramik,
    this.Spesi,
    this.Hand,
    this.fc,
    this.fy,
    this.D,
    this.S,
    this.Ds,
    this.fcB,
    this.fyB,
    this.DB,
    this.sB,
    this.DsB,
    this.bB,
    this.hB,
    this.Dinding,
    this.satuan,
    this.ukuranTangga,
    this.pembagiA,
    this.pembagiO,
    this.visible,
    this.mirror,
    this.kD,
    this.kL,
    this.kM,
    this.kO,
  });

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['id'] = id;
    map['jenis'] = jenis;
    map['nama'] = nama;
    map['keterangan'] = keterangan;

    map['panjangT1'] = panjangT1.toString();
    map['tinggiT1'] = tinggiT1.toString();
    map['optredeR1'] = optredeR1.toString();
    map['panjangT2'] = panjangT2.toString();
    map['tinggiT2'] = tinggiT2.toString();
    map['optredeR2'] = optredeR2.toString();
    map['panjangT3'] = panjangT3.toString();
    map['tinggiT3'] = tinggiT3.toString();
    map['optredeR3'] = optredeR3.toString();
    map['lebarT'] = lebarT.toString();
    map['lebarB'] = lebarB.toString();
    map['panjangB'] = panjangB.toString();
    map['beton'] = Beton.toString();
    map['keramik'] = Keramik.toString();
    map['spesi'] = Spesi.toString();
    map['hand'] = Hand.toString();

    map['fc'] = fc.toString();
    map['fy'] = fy.toString();
    map['D'] = D.toString();
    map['S'] = S.toString();
    map['Ds'] = Ds.toString();

    map['fcb'] = fcB.toString();
    map['fyb'] = fyB.toString();
    map['Db'] = DB.toString();
    map['sb'] = sB.toString();
    map['Dsb'] = DsB.toString();

    map['bB']=bB.toString();
    map['hB']=hB.toString();
    map['dinding']=Dinding.toString();

    map['satuan'] = satuan;
    map['ukuranTangga'] = ukuranTangga;
    map['pembagiA'] = pembagiA;
    map['pembagiO'] = pembagiO;
    map['visible'] = visible;
    map['mirror'] = mirror;

    map['kd'] = kD.toString();
    map['kl'] = kL.toString();
    map['km'] = kM.toString();
    map['ko'] = kO.toString();

    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.id(
      id: map['id'],
      jenis: map['jenis'],
      nama: map['nama'],
      keterangan: map['keterangan'],
      panjangT1: double.parse(map['panjangT1']),
      tinggiT1: double.parse(map['tinggiT1']),
      optredeR1: double.parse(map['optredeR1']),
      panjangT2: double.parse(map['panjangT2']),
      tinggiT2: double.parse(map['tinggiT2']),
      optredeR2: double.parse(map['optredeR2']),
      panjangT3: double.parse(map['panjangT3']),
      tinggiT3: double.parse(map['tinggiT3']),
      optredeR3: double.parse(map['optredeR3']),
      lebarT: double.parse(map['lebarT']),
      lebarB: double.parse(map['lebarB']),
      panjangB: double.parse(map['panjangB']),
      Beton: double.parse(map['beton']),
      Keramik: double.parse(map['keramik']),
      Spesi: double.parse(map['spesi']),
      Hand: double.parse(map['hand']),
      fc: double.parse(map['fc']),
      fy: double.parse(map['fy']),
      D: double.parse(map['D']),
      S: double.parse(map['S']),
      Ds: double.parse(map['Ds']),
      fcB: double.parse(map['fcb']),
      fyB: double.parse(map['fyb']),
      DB: double.parse(map['Db']),
      sB: double.parse(map['sb']),
      DsB: double.parse(map['Dsb']),
        bB:double.parse(map['bB']),
        hB:double.parse(map['hB']),
    Dinding:double.parse(map['dinding']),

    satuan: map['satuan'],
      ukuranTangga: map['ukuranTangga'],
      pembagiA: map['pembagiA'],
      pembagiO: map['pembagiO'],
      visible: map['visible'],
      mirror: map['mirror'],
      kD: double.parse(map['kd']),
      kL: double.parse(map['kl']),
      kM: double.parse(map['km']),
      kO: double.parse(map['ko']),
    );
  }
}

class Projek {
  int id;

  String nama;
  String keterangan;
  DateTime Tanggal;

  Projek({this.nama, this.keterangan,this.Tanggal});

  Projek.id({this.id, this.nama, this.keterangan,this.Tanggal});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['id'] = id;
    map['nama'] = nama;
    map['keterangan'] = keterangan;
    map['tanggal'] = Tanggal.toIso8601String();

    return map;
  }

  factory Projek.fromMap(Map<String, dynamic> map) {
    return Projek.id(
      id: map['id'],
      nama: map['nama'],
      keterangan: map['keterangan'],
      Tanggal: DateTime.parse(map['tanggal']),

    );
  }
}

import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_I/PDF_Tangga_I.dart';

void Hitung_T_I() {
  ResetValue();
  Sudut_1 = atan(TinggiT_1 / PanjangT_1) / pi * 180;
  OptredeNR_1 = TinggiT_1 / Optrede_1;
  OptredeNT_1 = OptredeNR_1.toRound(0);
  AntredeNT_1 = OptredeNT_1;
  AntredeR_1 = PanjangT_1 / AntredeNT_1;
  OptredeR_1 = TinggiT_1 / OptredeNT_1;

  //Antrede
  switch (settingPembagiAntrede) {
    case "0 cm":
      Antrede_1 = AntredeR_1;
      Antrede1N_1 = 0;
      AntredeN1_1 = 0;
      AntredeN_1 = AntredeNT_1;
      break;
    case "1 cm":
      Antrede_1 = AntredeR_1.toRound(0);
      AntredeB_1 = Antrede_1 * AntredeNT_1;
      AntredeS_1 = PanjangT_1 - AntredeB_1;
      if (AntredeS_1 < 0) {
        Antrede1N_1 = -AntredeS_1 / PembagiAntrede;
        AntredeNB_1 = (Antrede1N_1 / 2).toRound(0);
        AntredeNA_1 = (Antrede1N_1 / 2 - 0.2).toRound(0);
      } else {
        AntredeN1_1 = AntredeS_1 / PembagiAntrede;
        AntredeNB_1 = (AntredeN1_1 / 2).toRound(0);
        AntredeNA_1 = (AntredeN1_1 / 2 - 0.2).toRound(0);
      }
      ;
      AntredeN_1 = AntredeNT_1 - AntredeNB_1 - AntredeNA_1;
      break;
  }

  //Optrede
  switch (settingPembagiOptrede) {
    case "0 cm":
      Optrede_1 = OptredeR_1;
      Optrede1N_1 = 0;
      OptredeN1_1 = 0;
      OptredeN_1 = OptredeNT_1;
      break;
    case "1 cm":
      //Optrede_1 = OptredeR_1.toRound(0);
      OptredeB_1 = Optrede_1 * OptredeNT_1;
      OptredeS_1 = TinggiT_1 - OptredeB_1;
      if (OptredeS_1 < 0) {
        Optrede1N_1 = -OptredeS_1 / PembagiOptrede;
        OptredeNB_1 = (Optrede1N_1 / 2).toRound(0);
        OptredeNA_1 = (Optrede1N_1 / 2 - 0.2).toRound(0);
      } else {
        OptredeN1_1 = OptredeS_1 / PembagiOptrede;
        OptredeNB_1 = (OptredeN1_1 / 2).toRound(0);
        OptredeNA_1 = (OptredeN1_1 / 2 - 0.2).toRound(0);
      }
      ;
      OptredeN_1 = OptredeNT_1 - OptredeNA_1 - OptredeNB_1;
      break;
  }

  n = OptredeNT_1;
  TinggiCanvasa = TinggiT_1.toT_I_a() + 100;
  TinggiCanvasb = LebarT.toT_I_a() + 110;
  TinggiCanvasc = 30 + 220.0;
  TinggiCanvasm_1 = TinggiT_1.toM_I_a() + 100;
  TinggiCanvasG_1 = TinggiT_1.toG_I_a() + 100;
  TinggiCanvasG_2 = (Optrede_1*2).toG_I_b()+200;
  TinggiCanvasG_3 = TinggiT_1.toG_I_c() + 120;
 // TinggiCanvasG_4 = TinggiT_1.toG_I_d() + 120;
  TinggiCanvasG_5 = TinggiT_1.toG_I_e() + 80;
  TinggiCanvasG_6 = TinggiT_1.toG_I_f() + 80;
  TinggiCanvasG_7 = TinggiT_1.toG_I_g() + 80;
  TinggiCanvasD_1 = TinggiT_1.toD_I_a() + 100;

}

void HitungT_T_I_1() {
  //HITUNGAN 1
  sina_1 = sin(Sudut_1 / 180 * pi);
  cosa_1 = cos(Sudut_1 / 180 * pi);
  //data1
  ListData1();

  //Hitungan 2
  PanjangTanggaMiring_1 = sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2));
  TebalPelatTangga_1 = PanjangTanggaMiring_1 / 20 * (0.4 + fy / 700) * 1000;
  TebalPelatTanggaPilih_1 = PanjangTanggaMiring_1 <= 150
      ? 150
      : (TebalPelatTangga_1 / 10 + 0.5).toRound(0) * 10;
  TinggiMiringAnakTangga_1 = Optrede_1 * cosa_1;
  TinggiMiring5AnakTangga_1 = TinggiMiringAnakTangga_1 / 2;
  TinggiMiringTangga_1 = TinggiMiring5AnakTangga_1 + TebalPelatTanggaPilih_1 / 10;
  //beban
  BeratSendiriTangga_1 = TinggiMiringTangga_1 / 100 * beton;
  BeratKeramikTangga_1 = keramik * 0.02;
  BeratSpesiTangga_1 = spesi * 0.02;
  BeratHandrailTangga_1 = ralling;
  BebanMatiTangga_1 = BeratSendiriTangga_1 +
      BeratKeramikTangga_1 +
      BeratSpesiTangga_1 +
      BeratHandrailTangga_1;
  BebanHidupTangga_1 = 3;
  BebanTerfaktorTangga_1 = 1.2 * BebanMatiTangga_1 + 1.6 * BebanHidupTangga_1;

//data2
  ListData2();

//data3
  ListData3();

  //Hitungan 3
  MaAB = BebanTerfaktorTangga_1 * cosa_1 * pow(PanjangTanggaMiring_1, 2) / 12;
  MaBA = -BebanTerfaktorTangga_1 * cosa_1 * pow(PanjangTanggaMiring_1, 2) / 12;

  FVbAB = BebanTerfaktorTangga_1 * PanjangTanggaMiring_1 / 2;
  FVbBA = FVbAB;
  FHbAB = 0;
  FHbBA = FHbAB;
  ListData4();

  NAB = cosa_1 * FHbAB + sina_1 * FVbAB;
  NBA = -cosa_1 * FHbBA + sina_1 * FVbBA;
  SAB = -sina_1 * FHbAB + cosa_1 * FVbAB;
  SBA = sina_1 * FHbBA + cosa_1 * FVbBA;
  MAB = MaAB;
  MBA = MaBA;

  JAB = SAB / (SAB + SBA) * PanjangTanggaMiring_1;
  JBA = SBA / (SAB + SBA) * PanjangTanggaMiring_1;
  MLAB = JAB * SAB - BebanTerfaktorTangga_1 * cosa_1 * pow(JAB, 2) / 2 - MAB;
  ListData5();

  var AB = Tulangan();
  AB.hitung(MAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_1 = AB.Jarak.toText();
  Dtul_1 = AB.diameterTulangan.toText();
  Syarat_1 = AB.SM;
  //AB.data();

  var LAB = Tulangan();
  LAB.hitung(MLAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_2 = LAB.Jarak.toText();
  Dtul_2 = LAB.diameterTulangan.toText();
  Syarat_2 = LAB.SM;
  //LAB.data();

  var BA = Tulangan();
  BA.hitung(-MBA, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_3 = BA.Jarak.toText();
  Dtul_3 = BA.diameterTulangan.toText();
  Syarat_3 = BA.SM;

  var GeserAB = TulanganGeser();
  GeserAB.hitung(SAB, fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
  Stul_4 = GeserAB.jarak.toText();
  Dtul_4 = GeserAB.Ds.toText();
  SGT_1 = GeserAB.jarak / 10;
  Syarat_4 = GeserAB.Sv;
  print(SGT_1);

  //BA.data();
  PdfData1 = Data1.map((e) => [
        e.BarisKe,
        e.nama,
        e.rumus,
        e.tanda,
        e.hasil,
        e.satuan,
      ]).toList();
  PdfData2 = Data2.map((e) => [
        e.BarisKe,
        e.nama,
        e.rumus,
        e.tanda,
        e.hasil,
        e.satuan,
      ]).toList();
  PdfData3 = Data3.map((e) => [
        e.BarisKe,
        e.nama,
        e.rumus,
        e.tanda,
        e.hasil,
        e.satuan,
      ]).toList();
  PdfData4 = Data4.map((e) => [
        e.BarisKe,
        e.nama,
        e.rumus,
        e.tanda,
        e.hasil,
        e.satuan,
      ]).toList();
  PdfData5 = Data5.map((e) => [
        e.BarisKe,
        e.nama,
        e.rumus,
        e.tanda,
        e.hasil,
        e.satuan,
      ]).toList();
  // PdfData6 = AB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData7 = LAB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData8 = BA.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();

  final Datan = [];
  PdfDatan = Datan.map((e) => [
        e.BarisKe,
        e.nama,
        e.rumus,
        e.tanda,
        e.hasil,
        e.satuan,
      ]).toList();
}

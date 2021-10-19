import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_U_1B/PDF_Tangga_U_1B.dart';



void Hitung_T_U_1B_1() {
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
      Optrede_1 = OptredeR_1.toRound(0);
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
}
void Hitung_T_U_1B_2() {
  Sudut_2 = atan(TinggiT_2 / PanjangT_2) / pi * 180;
  OptredeNR_2 = TinggiT_2 / Optrede_2;
  OptredeNT_2 = OptredeNR_2.toRound(0);
  AntredeNT_2 = OptredeNT_2;
  AntredeR_2 = PanjangT_2 / AntredeNT_2;
  OptredeR_2 = TinggiT_2 / OptredeNT_2;

  //Antrede
  switch (settingPembagiAntrede) {
    case "0 cm":
      Antrede_2 = AntredeR_2;
      Antrede1N_2 = 0;
      AntredeN1_2 = 0;
      AntredeN_2 = AntredeNT_2;
      break;
    case "1 cm":
      Antrede_2 = AntredeR_2.toRound(0);
      AntredeB_2 = Antrede_2 * AntredeNT_2;
      AntredeS_2 = PanjangT_2 - AntredeB_2;
      if (AntredeS_2 < 0) {
        Antrede1N_2 = -AntredeS_2 / PembagiAntrede;
        AntredeNB_2 = (Antrede1N_2 / 2).toRound(0);
        AntredeNA_2 = (Antrede1N_2 / 2 - 0.2).toRound(0);
      } else {
        AntredeN1_2 = AntredeS_2 / PembagiAntrede;
        AntredeNB_2 = (AntredeN1_2 / 2).toRound(0);
        AntredeNA_2 = (AntredeN1_2 / 2 - 0.2).toRound(0);
      }
      ;
      AntredeN_2 = AntredeNT_2 - AntredeNB_2 - AntredeNA_2;
      break;
  }

  //Optrede
  switch (settingPembagiOptrede) {
    case "0 cm":
      Optrede_2 = OptredeR_2;
      Optrede1N_2 = 0;
      OptredeN1_2 = 0;
      OptredeN_2 = OptredeNT_2;
      break;
    case "1 cm":
      Optrede_2 = OptredeR_2.toRound(0);
      OptredeB_2 = Optrede_2 * OptredeNT_2;
      OptredeS_2 = TinggiT_2 - OptredeB_2;
      if (OptredeS_2 < 0) {
        Optrede1N_2 = -OptredeS_2 / PembagiOptrede;
        OptredeNB_2 = (Optrede1N_2 / 2).toRound(0);
        OptredeNA_2 = (Optrede1N_2 / 2 - 0.2).toRound(0);
      } else {
        OptredeN1_2 = OptredeS_2 / PembagiOptrede;
        OptredeNB_2 = (OptredeN1_2 / 2).toRound(0);
        OptredeNA_2 = (OptredeN1_2 / 2 - 0.2).toRound(0);
      }
      ;
      OptredeN_2 = OptredeNT_2 - OptredeNA_2 - OptredeNB_2;
      break;
  }
}
void Hitung_T_U_1B(){
  ResetValue();
  Hitung_T_U_1B_1();
  Hitung_T_U_1B_2();

  n = OptredeNT_2;
  TinggiCanvasa = (TinggiT_1+TinggiT_2).toT_U_1B_a() + 120;
  TinggiCanvasb = (PanjangB_1).toT_U_1B_b() + 140;
  TinggiCanvasc =  50+430.0 ;
  TinggiCanvasG_1= TinggiT_1.toG_I_1B_c()+100;
  TinggiCanvasG_2= TinggiT_2.toG_U_1B_i()+100;
  //TinggiCanvasm_1 = 0;
  //TinggiCanvasm_2 = 0;
  //TinggiCanvasm_3 = 0;
  //TinggiCanvasG_1 = 0;
  //TinggiCanvasG_2 = 0;
  //TinggiCanvasG_3 = 0;
  TinggiCanvasD_1 = TinggiT_1.toD_U_1B_a()+220;
  TinggiCanvasD_2 = TinggiT_2.toD_U_1B_b()+180;
  TinggiCanvasD_3 = (hB).toD_U_1B_c()+160;
}

void HitungT_T_U_1B_2(){
  //HITUNGAN 1
  sina_2 = sin(Sudut_2 / 180 * pi);
  cosa_2 = cos(Sudut_2 / 180 * pi);
  //data1
  ListData1_2();

  //Hitungan 2
  PanjangTanggaMiring_2 =
      sqrt(pow(PanjangT_2 / 100, 2) + pow(TinggiT_2 / 100, 2));
  TebalPelatTangga_2 = PanjangTanggaMiring_2 / 20 * (0.4 + fy / 700) * 1000;
  TebalPelatTanggaPilih_2 = PanjangTanggaMiring_2 <= 150
      ? 150
      : (TebalPelatTangga_2 / 10 + 0.5).toRound(0) * 10;
  TebalPelatBordes_2 = PanjangB_2 / 20 * (0.4 + fy / 700) * 10;
  TebalPelatBordesPilih_2 = TebalPelatBordes_2 <= 150
      ? 150
      : (TebalPelatBordes_2 / 10 + 0.5).toRound(0) * 10;

  TinggiMiringAnakTangga_2 = Optrede_2 * cosa_2;
  TinggiMiring5AnakTangga_2 = TinggiMiringAnakTangga_2 / 2;
  TinggiMiringTangga_2 = TinggiMiring5AnakTangga_2 + TebalPelatTanggaPilih_2 / 10;
  //beban
  BeratSendiriTangga_2 = TinggiMiringTangga_2 / 100 * beton;
  BeratKeramikTangga_2 = keramik *0.02;
  BeratSpesiTangga_2 = spesi * 0.02;
  BeratHandrailTangga_2 = ralling ;
  BebanMatiTangga_2 = BeratSendiriTangga_2 +
      BeratKeramikTangga_2 +
      BeratSpesiTangga_2 +
      BeratHandrailTangga_2;
  BebanHidupTangga_2 = 3 ;
  BebanTerfaktorTangga_2 = 1.2 * BebanMatiTangga_2 + 1.6 * BebanHidupTangga_2;
  //..bordes
  BeratSendiriBordes_2 = TebalPelatBordesPilih_2 / 1000 * beton;
  BeratKeramikBordes_2 = keramik * 0.02;
  BeratSpesiBordes_2 = spesi * 0.02;
  BeratHandrailBordes_2 = ralling ;
  BebanHidupBordes_2 = 3 ;
  BebanMatiBordes_2 = BeratSendiriBordes_2 +
      BeratKeramikBordes_2 +
      BeratSpesiBordes_2 +
      BeratHandrailBordes_2;
  BebanTerfaktorBordes_2= 1.2 * BebanMatiBordes_2+ 1.6 * BebanHidupBordes_2;

//data2
  ListData2_2();
//data3
  ListData3_2();
  // Hitungan 3
  final x = matrik();
  x.Hitung2(
    A_1:0.05,A_2:0.05,
    E_1:200000000,E_2:200000000,
    I_1:0.0001,I_2:0.0001,
    xi_1:0,yi_1:0,
    xj_1:LebarB_1/100,yj_1:0,
    xi_2:LebarB_1/100,yi_2:0,
    xj_2:LebarB_1/100+PanjangT_2/100,yj_2:TinggiT_2/100,
    Gx_1:0,Gy_1:0,Gm_1:0,
    Gx_2:0,Gy_2:0,Gm_2:0,
    Gx_3:0,Gy_3:0,Gm_3:0,
    Q_1:BebanTerfaktorBordes_2,Q_2:BebanTerfaktorTangga_2,
  );
  print(LebarB_1/100);
  print(PanjangT_2/100);
  print(TinggiT_2/100);
  print(BebanTerfaktorBordes_2);
  print(BebanTerfaktorTangga_2);

//DEF
  NDE = x.Fxi_1;
  SDE = x.Fyi_1;
  MDE = x.Mi_1;
  NED = x.Fxj_1;
  SED = x.Fyj_1;
  MED = x.Mj_1;
  NEF = x.Fxi_2;
  SEF = x.Fyi_2;
  MEF = x.Mi_2;
  NFE = x.Fxj_2;
  SFE = x.Fyj_2;
  MFE = x.Mj_2;
  FHbDE = x.Rxi;
  FVbDE = x.Ryi;
  FHbFE = x.Rxj;
  FVbFE =x.Ryj;
  MaDE = x.Rmi;
  MaFE = x.Rmj;

  //data6
  ListData6_2();

  JEF = SEF / (SEF + SFE) * PanjangTanggaMiring_2;
  JFE = SFE / (SEF + SFE) * PanjangTanggaMiring_2;
  MLEF =-( JEF * SEF - BebanTerfaktorTangga_2 * cosa_2 * pow(JEF, 2) / 2 - MEF);

//data7
  ListData7_2();

  var DE = Tulangan();
  DE.hitung(
      MDE, fy, fc, TebalPelatBordesPilih_2, d, Selimut);
  Stul_4=DE.Jarak.toText();
  Dtul_4=DE.diameterTulangan.toText();
  Syarat_4=DE.SM;
  //BC.data();

  var ED = Tulangan();
  ED.hitung(
      MED, fy, fc, TebalPelatBordesPilih_2, d, Selimut);
  Stul_5=ED.Jarak.toText();
  Dtul_5=ED.diameterTulangan.toText();
  Syarat_5=ED.SM;

  var GDE = TulanganGeser();
  GDE.hitung(max(SED,SDE), fc, fy, TebalPelatTanggaPilih_2, d, ds, Selimut);
  Stul_6=GDE.jarak.toText();
  Dtul_6=GDE.Ds.toText();
  Syarat_6=GDE.Sv;
  SGBa_2=GDE.jarak/10;

  var EF = Tulangan();
  EF.hitung(
      MEF, fy, fc, TebalPelatTanggaPilih_2, d, Selimut);
  Stul_7=EF.Jarak.toText();
  Dtul_7=EF.diameterTulangan.toText();
  Syarat_7=EF.SM;
  //AB.data();

  var FE = Tulangan();
  FE.hitung(
      -MFE, fy, fc, TebalPelatTanggaPilih_2, d, Selimut);
  Stul_8=FE.Jarak.toText();
  Dtul_8=FE.diameterTulangan.toText();
  Syarat_8=FE.SM;
  //BA.data();

  var LEF = Tulangan();
  LEF.hitung(
      -MLEF, fy, fc, TebalPelatTanggaPilih_2, d, Selimut);
  Stul_9=LEF.Jarak.toText();
  Dtul_9=LEF.diameterTulangan.toText();
  Syarat_9=LEF.SM;
  //LAB.data();

  var GEF = TulanganGeser();
  GEF.hitung(max(SEF,SFE), fc, fy, TebalPelatTanggaPilih_2, d, ds, Selimut);
  Stul_10=GEF.jarak.toText();
  Dtul_10=GEF.Ds.toText();
  Syarat_10=GEF.Sv;
  SGT_2=GEF.jarak/10;

  //CB.data();

  // PdfData1 = Data1.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData2 = Data2.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData3 = Data3.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData4 = Data4.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // //PdfData5 = x.Data.map((e) => [e.C0, e.C1, e.C2, e.C3, e.C4,]).toList();
  // PdfData6 = Data6.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData7 = Data7.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData8 = AB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData9 = BA.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData10 = LAB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData11 = BC.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  // PdfData12 = CB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();


  final Datan = [];
  PdfDatan = Datan.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();

}
void HitungT_T_U_1B_1(){

    //HITUNGAN 1
    sina_1 = sin(Sudut_1 / 180 * pi);
    cosa_1 = cos(Sudut_1 / 180 * pi);
    //data1
    ListData1_1();

    //Hitungan 2
    PanjangTanggaMiring_1 =
        sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2));
    TebalPelatTangga_1 = PanjangTanggaMiring_1 / 20 * (0.4 + fy / 700) * 1000;
    TebalPelatTanggaPilih_1 = PanjangTanggaMiring_1 <= 150
        ? 150
        : (TebalPelatTangga_1 / 10 + 0.5).toRound(0) * 10;
    TebalPelatBordes_1 = PanjangB_1 / 20 * (0.4 + fy / 700) * 10;
    TebalPelatBordesPilih_1 = TebalPelatBordes_1 <= 150
        ? 150
        : (TebalPelatBordes_1 / 10 + 0.5).toRound(0) * 10;

    TinggiMiringAnakTangga_1 = Optrede_1 * cosa_1;
    TinggiMiring5AnakTangga_1 = TinggiMiringAnakTangga_1 / 2;
    TinggiMiringTangga_1 = TinggiMiring5AnakTangga_1 + TebalPelatTanggaPilih_1 / 10;
    //beban
    BeratSendiriTangga_1 = TinggiMiringTangga_1 / 100 * beton;
    BeratKeramikTangga_1 = keramik *0.02;
    BeratSpesiTangga_1 = spesi * 0.02;
    BeratHandrailTangga_1 = ralling ;
    BebanMatiTangga_1 = BeratSendiriTangga_1 +
        BeratKeramikTangga_1 +
        BeratSpesiTangga_1 +
        BeratHandrailTangga_1;
    BebanHidupTangga_1 = 3 ;
    BebanTerfaktorTangga_1 = 1.2 * BebanMatiTangga_1 + 1.6 * BebanHidupTangga_1;
    //..bordes
    BeratSendiriBordes_1 = TebalPelatBordesPilih_1 / 1000 * beton;
    BeratKeramikBordes_1 = keramik * 0.02;
    BeratSpesiBordes_1 = spesi * 0.02;
    BeratHandrailBordes_1 = ralling ;
    BebanHidupBordes_1 = 3 ;
    BebanMatiBordes_1 = BeratSendiriBordes_1 +
        BeratKeramikBordes_1 +
        BeratSpesiBordes_1 +
        BeratHandrailBordes_1;
    BebanTerfaktorBordes_1 = 1.2 * BebanMatiBordes_1 + 1.6 * BebanHidupBordes_1;

//data2
    ListData2_1();
//data3
    ListData3_1();
    // Hitungan 3

    final x = matrik();
    x.Hitung2(
      A_1:0.05,A_2:0.05,
      E_1:200000000,E_2:200000000,
      I_1:0.0001,I_2:0.0001,
      xi_1:0,yi_1:0,
      xj_1:PanjangT_1/100,yj_1:TinggiT_1/100,
      xi_2:PanjangT_1/100,yi_2:TinggiT_1/100,
      xj_2:PanjangT_1/100+LebarB_1/100,yj_2:TinggiT_1/100,
      Gx_1:0,Gy_1:0,Gm_1:0,
      Gx_2:0,Gy_2:0,Gm_2:0,
      Gx_3:0,Gy_3:0,Gm_3:0,
      Q_1:BebanTerfaktorTangga_1,Q_2:BebanTerfaktorBordes_1,
    );

    NAB = x.Fxi_1;
    SAB = x.Fyi_1;
    MAB = x.Mi_1;
    NBA = x.Fxj_1;
    SBA = x.Fyj_1;
    MBA = x.Mj_1;
    NBC = x.Fxi_2;
    SBC = x.Fyi_2;
    MBC = x.Mi_2;
    NCB = x.Fxj_2;
    SCB = x.Fyj_2;
    MCB = x.Mj_2;
    FHbAB = x.Rxi;
    FVbAB = x.Ryi;
    FHbCB = x.Rxj;
    FVbCB =x.Ryj;
    MaAB = x.Rmi;
    MaCB = x.Rmj;


    //data6
    ListData6_1();

    JAB = SAB / (SAB + SBA) * PanjangTanggaMiring_1;
    JBA = SBA / (SAB + SBA) * PanjangTanggaMiring_1;
    MLAB =-( JAB * SAB - BebanTerfaktorTangga_1 * cosa_1 * pow(JAB, 2) / 2 - MAB);

//data7
    ListData7_1();

    var AB = Tulangan();
    AB.hitung(
        MAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
    Stul_11=AB.Jarak.toText();
    Dtul_11=AB.diameterTulangan.toText();
    Syarat_11=AB.SM;
    //AB.data();

    var BA = Tulangan();
    BA.hitung(
        -MBA, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
    Stul_12=BA.Jarak.toText();
    Dtul_12=BA.diameterTulangan.toText();
    Syarat_12=BA.SM;
    //BA.data();

    var LAB = Tulangan();
    LAB.hitung(
        -MLAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
    Stul_13=LAB.Jarak.toText();
    Dtul_13=LAB.diameterTulangan.toText();
    Syarat_13=LAB.SM;
    //LAB.data();

    var GAB = TulanganGeser();
    GAB.hitung(max(SAB,SBA), fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
    Stul_14=GAB.jarak.toText();
    Dtul_14=GAB.Ds.toText();
    Syarat_14=GAB.Sv;
    SGT_1=GAB.jarak/10;

    var BC = Tulangan();
    BC.hitung(
        MBC, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
    Stul_15=BC.Jarak.toText();
    Dtul_15=BC.diameterTulangan.toText();
    Syarat_15=BC.SM;
    //BC.data();
    var CB = Tulangan();
    CB.hitung(
        MCB, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
    Stul_16=CB.Jarak.toText();
    Dtul_16=CB.diameterTulangan.toText();
    Syarat_16=CB.SM;

    var GBC = TulanganGeser();
    GBC.hitung(max(SBC,SCB), fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
    Stul_17=GBC.jarak.toText();
    Dtul_17=GBC.Ds.toText();
    Syarat_17=GBC.Sv;
    SGBb_1=GBC.jarak/10;

    //pembebanan balok
    double BeratBalok;
    BeratBalok=hB/100*bB/100*beton;
    double BeratDinding;
    BeratDinding = 0.15*2*dinding;
    double BeratPelat;
    BeratPelat = TebalPelatBordesPilih_1/1000*beton;
    double BeratAdukanPelat;
    BeratAdukanPelat = 0.02*spesi;
    double BeratKeramikPelat;
    BeratKeramikPelat = 0.02*keramik;
    double BeratHandPelat;
    BeratHandPelat=ralling;
    double wdbp;
    wdbp = BeratBalok+BeratDinding+BeratPelat+
        BeratAdukanPelat+BeratKeramikPelat+BeratHandPelat;
    double wlbp;
    wlbp = 3;
    double wup=1.2*wdbp+1.6*wlbp;

    var B = BalokBordes();
    B.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/12*wup*pow(LebarB_1/100,2),);
    Stul_1=B.N.toText();
    Dtul_1=B.D.toText();
    Syarat_1=B.SM;
    NBTa_1=B.N;

    var BL = BalokBordes();
    BL.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup*pow(LebarB_1/100,2),);
    Stul_2=BL.N.toText();
    Dtul_2=BL.D.toText();
    Syarat_2=BL.SM;
    NBLa_1=BL.N;

    var GB = BalokBordesGeser();
    GB.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup*LebarB_1/100/2,);
    Stul_3=GB.jarak.toText();
    Dtul_3=GB.ds.toText();
    Syarat_3=GB.Sv;
    JBGa_1=GB.jarak;
    JBGmina_1=GB.jarakmin;

    //CB.data();

    // PdfData1 = Data1.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData2 = Data2.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData3 = Data3.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData4 = Data4.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // //PdfData5 = x.Data.map((e) => [e.C0, e.C1, e.C2, e.C3, e.C4,]).toList();
    // PdfData6 = Data6.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData7 = Data7.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData8 = AB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData9 = BA.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData10 = LAB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData11 = BC.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
    // PdfData12 = CB.Data.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();


    final Datan = [];
    PdfDatan = Datan.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
}
void HitungT_T_U_1B(){
  HitungT_T_U_1B_1();
  HitungT_T_U_1B_2();
}




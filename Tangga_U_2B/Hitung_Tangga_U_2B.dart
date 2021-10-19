import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_U_2B/PDF_Tangga_U_2B.dart';
void Hitung_T_U_2B_1() {
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
  n = OptredeNT_1;
}
void Hitung_T_U_2B_2() {
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

  n = OptredeNT_2;
}
void Hitung_T_U_2B_3() {
  Sudut_3 = atan(TinggiT_3 / PanjangT_3) / pi * 180;
  OptredeNR_3 = TinggiT_3 / Optrede_3;
  OptredeNT_3 = OptredeNR_3.toRound(0);
  AntredeNT_3 = OptredeNT_3;
  AntredeR_3 = PanjangT_3 / AntredeNT_3;
  OptredeR_3 = TinggiT_3 / OptredeNT_3;

  //Antrede
  switch (settingPembagiAntrede) {
    case "0 cm":
      Antrede_3 = AntredeR_3;
      Antrede1N_3 = 0;
      AntredeN1_3 = 0;
      AntredeN_3 = AntredeNT_3;
      break;
    case "1 cm":
      Antrede_3 = AntredeR_3.toRound(0);
      AntredeB_3 = Antrede_3 * AntredeNT_3;
      AntredeS_3 = PanjangT_3 - AntredeB_3;
      if (AntredeS_3 < 0) {
        Antrede1N_3 = -AntredeS_3 / PembagiAntrede;
        AntredeNB_3 = (Antrede1N_3 / 2).toRound(0);
        AntredeNA_3 = (Antrede1N_3 / 2 - 0.2).toRound(0);
      } else {
        AntredeN1_3 = AntredeS_3 / PembagiAntrede;
        AntredeNB_3 = (AntredeN1_3 / 2).toRound(0);
        AntredeNA_3 = (AntredeN1_3 / 2 - 0.2).toRound(0);
      }
      ;
      AntredeN_3 = AntredeNT_3 - AntredeNB_3 - AntredeNA_3;
      break;
  }

  //Optrede
  switch (settingPembagiOptrede) {
    case "0 cm":
      Optrede_3 = OptredeR_3;
      Optrede1N_3 = 0;
      OptredeN1_3 = 0;
      OptredeN_3 = OptredeNT_3;
      break;
    case "1 cm":
      Optrede_3 = OptredeR_3.toRound(0);
      OptredeB_3 = Optrede_3 * OptredeNT_3;
      OptredeS_3 = TinggiT_3 - OptredeB_3;
      if (OptredeS_3 < 0) {
        Optrede1N_3 = -OptredeS_3 / PembagiOptrede;
        OptredeNB_3 = (Optrede1N_3 / 2).toRound(0);
        OptredeNA_3 = (Optrede1N_3 / 2 - 0.2).toRound(0);
      } else {
        OptredeN1_3 = OptredeS_3 / PembagiOptrede;
        OptredeNB_3 = (OptredeN1_3 / 2).toRound(0);
        OptredeNA_3 = (OptredeN1_3 / 2 - 0.2).toRound(0);
      }
      ;
      OptredeN_3 = OptredeNT_3 - OptredeNA_3 - OptredeNB_3;
      break;
  }

  n = OptredeNT_3;
}
void Hitung_T_U_2B() {
  ResetValue();
  LebarB_1=LebarT;
  LebarB_2=LebarT;
  LebarB_3=LebarT;
  PanjangB_1=LebarT;
  PanjangB_2=LebarT;
  PanjangB_3=LebarT;


  Hitung_T_U_2B_1();
  Hitung_T_U_2B_2();
  Hitung_T_U_2B_3();
  TinggiCanvasa = (TinggiT_1 + TinggiT_2 + TinggiT_3).toT_U_2B_a() + 120;
  TinggiCanvasb = (LebarT * 2 + PanjangT_2).toT_U_2B_a() + 120;
  TinggiCanvasc = 700;
  TinggiCanvasG_1=TinggiT_1.toG_U_2B_c()+160;
  TinggiCanvasG_2=TinggiT_2.toG_U_2B_i()+160;
  TinggiCanvasG_3=TinggiT_3.toG_U_2B_o()+160;
  //TinggiCanvasm_1 = 0;
  //TinggiCanvasm_2 = 0;
  //TinggiCanvasm_3 = 0;
  TinggiCanvasD_1 = TinggiT_3.toD_U_2B_a()+220;
  TinggiCanvasD_2 = (hB).toD_U_2B_b()+160;
  TinggiCanvasD_3 = TinggiT_2.toD_U_2B_c()+220;
  TinggiCanvasD_4 = (hB).toD_U_2B_d()+160;
  TinggiCanvasD_5 = (hB).toD_U_2B_e()+160;
  TinggiCanvasD_6 = TinggiT_1.toD_U_2B_f()+180;
  TinggiCanvasD_7 = (hB).toD_U_2B_g()+160;
}

void HitungT_T_U_2B_3(){
    //HITUNGAN 1
    sina_3 = sin(Sudut_3 / 180 * pi);
    cosa_3 = cos(Sudut_3 / 180 * pi);
    //data1
    ListData1_3();
    //Hitungan 2
    PanjangTanggaMiring_3 =
        sqrt(pow(PanjangT_3 / 100, 2) + pow(TinggiT_3 / 100, 2));
    TebalPelatTangga_3 = PanjangTanggaMiring_3 / 20 * (0.4 + fy / 700) * 1000;
    TebalPelatTanggaPilih_3 = PanjangTanggaMiring_3 <= 150
        ? 150
        : (TebalPelatTangga_3 / 10 + 0.5).toRound(0) * 10;
    TebalPelatBordes_3 = PanjangB_3 / 20 * (0.4 + fy / 700) * 10;
    TebalPelatBordesPilih_3 = TebalPelatBordes_3 <= 150
        ? 150
        : (TebalPelatBordes_3 / 10 + 0.5).toRound(0) * 10;

    TinggiMiringAnakTangga_3 = Optrede_3 * cosa_3;
    TinggiMiring5AnakTangga_3 = TinggiMiringAnakTangga_3 / 2;
    TinggiMiringTangga_3 = TinggiMiring5AnakTangga_3 + TebalPelatTanggaPilih_3 / 10;
    //beban
    BeratSendiriTangga_3 = TinggiMiringTangga_3 / 100 * beton;
    BeratKeramikTangga_3 = keramik *0.02;
    BeratSpesiTangga_3 = spesi * 0.02;
    BeratHandrailTangga_3 = ralling ;
    BebanMatiTangga_3 = BeratSendiriTangga_3 +
        BeratKeramikTangga_3 +
        BeratSpesiTangga_3 +
        BeratHandrailTangga_3;
    BebanHidupTangga_3 = 3 ;
    BebanTerfaktorTangga_3 = 1.2 * BebanMatiTangga_3 + 1.6 * BebanHidupTangga_3;
    //..bordes
    BeratSendiriBordes_3 = TebalPelatBordesPilih_3 / 1000 * beton;
    BeratKeramikBordes_3 = keramik * 0.02;
    BeratSpesiBordes_3 = spesi * 0.02;
    BeratHandrailBordes_3 = ralling ;
    BebanHidupBordes_3 = 3 ;
    BebanMatiBordes_3 = BeratSendiriBordes_3 +
        BeratKeramikBordes_3 +
        BeratSpesiBordes_3 +
        BeratHandrailBordes_3;
    BebanTerfaktorBordes_3= 1.2 * BebanMatiBordes_3+ 1.6 * BebanHidupBordes_3;

//data2
    ListData2_3();
//data3
    ListData3_3();
    // Hitungan 3
  final x = matrik();
  x.Hitung2(
    A_1:0.05,A_2:0.05,
    E_1:200000000,E_2:200000000,
    I_1:0.0001,I_2:0.0001,
    xi_1:0,yi_1:0,
    xj_1:LebarB_2/100,yj_1:0,
    xi_2:LebarB_2/100,yi_2:0,
    xj_2:LebarB_2/100+PanjangT_3/100,yj_2:TinggiT_3/100,
    Gx_1:0,Gy_1:0,Gm_1:0,
    Gx_2:0,Gy_2:0,Gm_2:0,
    Gx_3:0,Gy_3:0,Gm_3:0,
    Q_1:BebanTerfaktorBordes_2,Q_2:BebanTerfaktorTangga_3,
  );
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
    ListData6_3();
    JEF = SEF / (SEF + SFE) * PanjangTanggaMiring_3;
    JFE = SFE / (SEF + SFE) * PanjangTanggaMiring_3;
    MLEF =-( JEF * SEF - BebanTerfaktorTangga_3* cosa_3 * pow(JEF, 2) / 2 - MEF);

//data7
    ListData7_3();
    var DE = Tulangan();
    DE.hitung(
        MDE, fy, fc, TebalPelatBordesPilih_3, d, Selimut);
    Stul_4=DE.Jarak.toText();
    Dtul_4=DE.diameterTulangan.toText();
    Syarat_4=DE.SM;
    //BC.data();


  var ED = Tulangan();
    ED.hitung(
        MED, fy, fc, TebalPelatBordesPilih_3, d, Selimut);
    Stul_5=ED.Jarak.toText();
    Dtul_5=ED.diameterTulangan.toText();
    Syarat_5=ED.SM;

    var GDE = TulanganGeser();
    GDE.hitung(max(SED,SDE), fc, fy, TebalPelatTanggaPilih_3, d, ds, Selimut);
    Stul_6=GDE.jarak.toText();
    Dtul_6=GDE.Ds.toText();
    Syarat_6=GDE.Sv;
    SGBa_3=GDE.jarak/10;

    var EF = Tulangan();
    EF.hitung(
        MEF, fy, fc, TebalPelatTanggaPilih_3, d, Selimut);
    Stul_7=EF.Jarak.toText();
    Dtul_7=EF.diameterTulangan.toText();
    Syarat_7=EF.SM;
    //AB.data();

    var FE = Tulangan();
    FE.hitung(
        -MFE, fy, fc, TebalPelatTanggaPilih_3, d, Selimut);
    Stul_8=FE.Jarak.toText();
    Dtul_8=FE.diameterTulangan.toText();
    Syarat_8=FE.SM;
    //BA.data();

    var LEF = Tulangan();
    LEF.hitung(
        -MLEF, fy, fc, TebalPelatTanggaPilih_3, d, Selimut);
    Stul_9=LEF.Jarak.toText();
    Dtul_9=LEF.diameterTulangan.toText();
    Syarat_9=LEF.SM;
    //LAB.data();

    var GEF = TulanganGeser();
    GEF.hitung(max(SEF,SFE), fc, fy, TebalPelatTanggaPilih_3, d, ds, Selimut);
    Stul_10=GEF.jarak.toText();
    Dtul_10=GEF.Ds.toText();
    Syarat_10=GEF.Sv;
    SGT_3=GEF.jarak/10;
    //CB.data();

  //pembebanan balok
  double BeratBalok;
  BeratBalok=hB/100*bB/100*beton;
  double BeratDinding;
  BeratDinding = 0.15*2*dinding;
  double BeratPelat;
  BeratPelat = TebalPelatBordesPilih_2/1000*beton;
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
  NBTa_3=B.N;

  var BL = BalokBordes();
  BL.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup*pow(LebarB_1/100,2),);
  Stul_2=BL.N.toText();
  Dtul_2=BL.D.toText();
  Syarat_2=BL.SM;
  NBLa_3=BL.N;

  var GB = BalokBordesGeser();
  GB.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup*LebarB_1/100/2,);
  Stul_3=GB.jarak.toText();
  Dtul_3=GB.ds.toText();
  Syarat_3=GB.Sv;
  JBGa_3=GB.jarak;
  JBGmina_3=GB.jarakmin;

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
void HitungT_T_U_2B_2(){
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
  BebanTerfaktorTangga_2= 1.2 * BebanMatiTangga_2 + 1.6 * BebanHidupTangga_2;
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
  BebanTerfaktorBordes_2 = 1.2 * BebanMatiBordes_2 + 1.6 * BebanHidupBordes_2;

//data2
  ListData2_2();
//data3
  ListData3_2();
  // Hitungan 3
  final x = matrik();
  x.Hitung3(
      A_1:0.05,A_2:0.05,A_3: 0.05,
      E_1:200000000,E_2:200000000,E_3:200000000,
      I_1:0.0001,I_2:0.0001,I_3:0.0001,
      xi_1:0,yi_1:0,
      xj_1:PanjangB_1/100,yj_1:0,
      xi_2:PanjangB_1/100,yi_2:0,
      xj_2:PanjangB_1/100+PanjangT_2/100,yj_2:TinggiT_1/100,
      xi_3: PanjangB_1/100+PanjangT_2/100,yi_3: TinggiT_1/100,
      xj_3: PanjangB_1/100+PanjangT_2/100+PanjangB_2/100,yj_3: TinggiT_1/100,
      Gx_1:0,Gy_1:0,Gm_1:0,
      Gx_2:0,Gy_2:0,Gm_2:0,
      Gx_3:0,Gy_3:0,Gm_3:0,
      Gx_4: 0,Gy_4: 0,Gm_4: 0,
      Q_1:BebanTerfaktorBordes_1,Q_2:BebanTerfaktorTangga_2,Q_3: BebanTerfaktorBordes_2);
  //GHIJ
  NGH = x.Fxi_1;
  SGH = x.Fyi_1;
  MGH = x.Mi_1;
  NHG = x.Fxj_1;
  SHG = x.Fyj_1;
  MHG = x.Mj_1;

  NHI = x.Fxi_2;
  SHI = x.Fyi_2;
  MHI = x.Mi_2;
  NIH = x.Fxj_2;
  SIH = x.Fyj_2;
  MIH = x.Mj_2;

  NIJ = x.Fxi_3;
  SIJ = x.Fyi_3;
  MIJ = x.Mi_3;
  NJI = x.Fxj_3;
  SJI = x.Fyj_3;
  MJI = x.Mj_3;

  FHbGH = x.Rxi;
  FVbGH = x.Ryi;
  MaGH = x.Rmi;
  FHbJI = x.Rxj;
  FVbJI =x.Ryj;
  MaJI = x.Rmj;

  //data6
  ListData6_2();

  JHI = SHI / (SHI + SIH) * PanjangTanggaMiring_2;
  JIH = SIH / (SHI + SIH) * PanjangTanggaMiring_2;
  MLHI =-( JHI * SHI - BebanTerfaktorTangga_2 * cosa_2 * pow(JHI, 2) / 2 - MHI);

//data7
  ListData7_2();
//GHIJ
  var GH = Tulangan();
  GH.hitung(
      MGH, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
  Stul_14=GH.Jarak.toText();
  Dtul_14=GH.diameterTulangan.toText();
  Syarat_14=GH.SM;
  //AB.data();

  var HG = Tulangan();
  HG.hitung(
      -MHG, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
  Stul_15=HG.Jarak.toText();
  Dtul_15=HG.diameterTulangan.toText();
  Syarat_15=HG.SM;
  //LAB.data();

  var GGH = TulanganGeser();
  GGH.hitung(max(SGH,SHG), fc, fy, TebalPelatBordesPilih_1, d, ds, Selimut);
  Stul_16=GGH.jarak.toText();
  Dtul_16=GGH.Ds.toText();
  Syarat_16=GGH.Sv;
  SGBa_2=GGH.jarak/10;

  var HI = Tulangan();
  HI.hitung(
      MHI, fy, fc, TebalPelatTanggaPilih_2, d, Selimut);
  Stul_17=HI.Jarak.toText();
  Dtul_17=HI.diameterTulangan.toText();
  Syarat_17=HI.SM;
  //BC.data();

  var IH = Tulangan();
  IH.hitung(
      MIH, fy, fc, TebalPelatTanggaPilih_2, d, Selimut);
  Stul_18=IH.Jarak.toText();
  Dtul_18=IH.diameterTulangan.toText();
  Syarat_18=IH.SM;

  var LHI = Tulangan();
  LHI.hitung(
      MLHI, fy, fc, TebalPelatTanggaPilih_2, d, Selimut);
  Stul_19=HI.Jarak.toText();
  Dtul_19=HI.diameterTulangan.toText();
  Syarat_19=HI.SM;

  var GHI = TulanganGeser();
  GHI.hitung(max(SHI,SIH), fc, fy, TebalPelatTanggaPilih_2, d, ds, Selimut);
  Stul_20=GHI.jarak.toText();
  Dtul_20=GHI.Ds.toText();
  Syarat_20=GHI.Sv;
  SGT_2=GHI.jarak/10;

  var IJ = Tulangan();
  IJ.hitung(
      MIJ, fy, fc, TebalPelatBordesPilih_2, d, Selimut);
  Stul_21=IJ.Jarak.toText();
  Dtul_21=IJ.diameterTulangan.toText();
  Syarat_21=IJ.SM;
  //AB.data();

  var JI = Tulangan();
  JI.hitung(
      -MJI, fy, fc, TebalPelatBordesPilih_2, d, Selimut);
  Stul_22=JI.Jarak.toText();
  Dtul_22=JI.diameterTulangan.toText();
  Syarat_22=JI.SM;
  //LAB.data();

  var GIJ = TulanganGeser();
  GIJ.hitung(max(SIJ,SJI), fc, fy, TebalPelatBordesPilih_2, d, ds, Selimut);
  Stul_23=GIJ.jarak.toText();
  Dtul_23=GIJ.Ds.toText();
  Syarat_23=GIJ.Sv;
  SGBb_2=GIJ.jarak/10;

//pembebanan balok1
  BeratBalok_1=hB/100*bB/100*beton;
  BeratDinding_1 = 0.15*2*dinding;
  BeratPelat_1 = BebanTerfaktorBordes_1*LebarB_1/100;
  wdbp_1 = BeratBalok_1+BeratDinding_1+BeratPelat_1;
  wlbp_1 = 3;
  wup_1=1.2*wdbp_1+1.6*wlbp_1;

  var B_1 = BalokBordes();
  B_1.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/12*wup_1*pow(LebarB_1/100,2),);
  Stul_11=B_1.N.toText();
  Dtul_11=B_1.D.toText();
  Syarat_11=B_1.SM;
  NBTa_2=B_1.N;

  var BL_1 = BalokBordes();
  BL_1.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup_1*pow(LebarB_1/100,2),);
  Stul_12=BL_1.N.toText();
  Dtul_12=BL_1.D.toText();
  Syarat_12=BL_1.SM;
  NBLa_2=BL_1.N;

  var GB_1 = BalokBordesGeser();
  GB_1.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup_1*LebarB_1/100/2,);
  Stul_13=GB_1.jarak.toText();
  Dtul_13=GB_1.ds.toText();
  Syarat_13=GB_1.Sv;
  JBGa_2=GB_1.jarak;
  JBGmina_2=GB_1.jarakmin;

  //pembebanan balok2
  //pembebanan balok
  BeratBalok_2=hB/100*bB/100*beton;
  BeratDinding_2 = 0.15*2*dinding;
  BeratPelat_2 = BebanMatiBordes_2*LebarB_2/100;
  wdbp_2 = BeratBalok_2+BeratDinding_2+BeratPelat_2;
  wlbp_2 = 3;
  wup_2=1.2*wdbp_2+1.6*wlbp_2;

  var B_2 = BalokBordes();
  B_2.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/12*wup_2*pow(LebarB_2/100,2),);
  Stul_24=B_2.N.toText();
  Dtul_24=B_2.D.toText();
  Syarat_24=B_2.SM;
  NBTb_2=B_2.N;

  var BL_2 = BalokBordes();
  BL_2.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup_2*pow(LebarB_2/100,2),);
  Stul_25=BL_2.N.toText();
  Dtul_25=BL_2.D.toText();
  Syarat_25=BL_2.SM;
  NBLb_2=BL_2.N;

  var GB_2 = BalokBordesGeser();
  GB_2.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup_2*LebarB_2/100/2,);
  Stul_26=GB_2.jarak.toText();
  Dtul_26=GB_2.ds.toText();
  Syarat_26=GB_2.Sv;
  JBGb_2=GB_2.jarak;
  JBGminb_2=GB_2.jarakmin;

  //lanjut ceking hitungan

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
void HitungT_T_U_2B_1(){
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
  Stul_27=AB.Jarak.toText();
  Dtul_27=AB.diameterTulangan.toText();
  Syarat_27=AB.SM;
  //AB.data();

  var BA = Tulangan();
  BA.hitung(
      -MBA, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_28=BA.Jarak.toText();
  Dtul_28=BA.diameterTulangan.toText();
  Syarat_28=BA.SM;
  //BA.data();

  var LAB = Tulangan();
  LAB.hitung(
      -MLAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_29=LAB.Jarak.toText();
  Dtul_29=LAB.diameterTulangan.toText();
  Syarat_29=LAB.SM;
  //LAB.data();

  var GAB = TulanganGeser();
  GAB.hitung(max(SAB,SBA), fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
  Stul_30=GAB.jarak.toText();
  Dtul_30=GAB.Ds.toText();
  Syarat_30=GAB.Sv;
  SGT_1=GAB.jarak/10;

  var BC = Tulangan();
  BC.hitung(
      MBC, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
  Stul_31=BC.Jarak.toText();
  Dtul_31=BC.diameterTulangan.toText();
  Syarat_31=BC.SM;
  //BC.data();

  var CB = Tulangan();
  CB.hitung(
      MCB, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
  Stul_32=CB.Jarak.toText();
  Dtul_32=CB.diameterTulangan.toText();
  Syarat_32=CB.SM;

  var GBC = TulanganGeser();
  GBC.hitung(max(SBC,SCB), fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
  Stul_33=GBC.jarak.toText();
  Dtul_33=GBC.Ds.toText();
  Syarat_33=GBC.Sv;
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
  Stul_34=B.N.toText();
  Dtul_34=B.D.toText();
  Syarat_34=B.SM;
  NBTa_1=B.N;

  var BL = BalokBordes();
  BL.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup*pow(LebarB_1/100,2),);
  Stul_35=BL.N.toText();
  Dtul_35=BL.D.toText();
  Syarat_35=BL.SM;
  NBLa_1=BL.N;

  var GB = BalokBordesGeser();
  GB.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup*LebarB_1/100/2,);
  Stul_36=GB.jarak.toText();
  Dtul_36=GB.ds.toText();
  Syarat_36=GB.Sv;
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
void HitungT_T_U_2B(){
  HitungT_T_U_2B_1();
  HitungT_T_U_2B_2();
  HitungT_T_U_2B_3();
}

//hitung pdf
// void HitungT_T_U_2B_1() {
//   //HITUNGAN 1
//   sina_1 = sin(Sudut_1 / 180 * pi);
//   cosa_1 = cos(Sudut_1 / 180 * pi);
//   final Data1 = [
//     buatPDF(nama: 'Kuat Tarik', rumus: 'fy', hasil: fy, satuan: 'Mpa'),
//     buatPDF(nama: 'Kuat Tekan', rumus: 'fc', hasil: fc, satuan: 'Mpa'),
//     buatPDF(nama:'Panjang Tangga', rumus: 'Pt', hasil: PanjangT_1, satuan: 'cm'),
//     buatPDF(nama: 'Lebar Tangga', rumus: 'Lt', hasil: LebarT, satuan: 'cm'),
//     buatPDF(nama: 'Tinggi Tangga', rumus: 'Tt', hasil: TinggiT_1, satuan: 'cm'),
//     buatPDF(nama: 'Panjang Bordes', rumus: 'Pb', hasil: PanjangB_1, satuan: 'cm'),
//     buatPDF(nama: 'Lebar Bordes', rumus: 'Lb', hasil: LebarB_1, satuan: 'cm'),
//     buatPDF(nama: 'Antrede', rumus: 'a', hasil: Antrede_1, satuan: 'cm'),
//     buatPDF(nama: 'Optrede', rumus: 'o', hasil: Optrede_1, satuan: 'cm'),
//     buatPDF(nama: 'Sudut', rumus: '*Alpha = arctg(Tt/Pt)', hasil: Sudut_1.toRound(2), satuan: "°"),
//     buatPDF(nama: 'SinAlpha', rumus: 'sin(*Alpha)', hasil: sina_1.toRound(2), satuan: ''),
//     buatPDF(nama: 'CosAlpha', rumus: 'cos(*Alpha)', hasil: cosa_1.toRound(2), satuan: ''),
//   ];
//   List Data1_ = Data1.map((e) => [
//         e.BarisKe,
//         e.nama,
//         e.rumus,
//         e.tanda,
//         e.hasil,
//         e.satuan,
//       ]).toList();
//
//   //Hitungan 2
//   PanjangTanggaMiring_1 =
//       sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2));
//   TebalPelatTangga_1 = PanjangTanggaMiring_1 / 20 * (0.4 + fy / 700) * 1000;
//   TebalPelatTanggaPilih_1 = PanjangTanggaMiring_1 <= 150
//       ? 150
//       : (TebalPelatTangga_1 / 10 + 0.5).toRound(0) * 10;
//   TebalPelatBordes_1 = PanjangB_1 / 20 * (0.4 + fy / 700) * 10;
//   TebalPelatBordesPilih_1 =
//       PanjangB_1 <= 150 ? 150 : (TebalPelatBordes_1 / 10 + 0.5).toRound(0) * 10;
//   TinggiMiringAnakTangga_1 = Optrede_1 * cosa_1;
//   TinggiMiring5AnakTangga_1 = TinggiMiringAnakTangga_1 / 2;
//   TinggiMiringTangga_1 = TinggiMiring5AnakTangga_1 + TebalPelatTanggaPilih_1 / 10;
//   BeratSendiriTangga_1 = TinggiMiringTangga_1 / 100 * beton * LebarT / 100;
//   BeratKeramikTangga_1 = keramik * LebarT / 100;
//   BeratSpesiTangga_1 = spesi * LebarT / 100;
//   BeratHandrailTangga_1 = ralling * LebarT / 100;
//   BebanMatiTangga_1 = BeratSendiriTangga_1 +
//       BeratKeramikTangga_1 +
//       BeratSpesiTangga_1 +
//       BeratHandrailTangga_1;
//   BebanHidupTangga_1 = 3 * cosa_1 * LebarT / 100;
//   BebanTerfaktorTangga_1 = 1.2 * BebanMatiTangga_1 + 1.6 * BebanHidupTangga_1;
//   BeratSendiriBordes_1 = TebalPelatBordesPilih_1 / 1000 * LebarT / 100 * beton;
//   BeratKeramikBordes_1 = keramik * LebarT / 100;
//   BeratSpesiBordes_1 = spesi * LebarT / 100;
//   BeratHandrailBordes_1 = ralling * LebarT / 100;
//   BebanHidupBordes_1 = 3 * LebarT / 100;
//   BebanMatiBordes_1 = BeratSendiriBordes_1 +
//       BeratKeramikBordes_1 +
//       BeratSpesiBordes_1 +
//       BeratHandrailBordes_1;
//   BebanTerfaktorBordes_1 = 1.2 * BebanMatiBordes_1 + 1.6 * BebanHidupBordes_1;
//
//   final Data2 = [
//     buatPDF(nama: 'panjang Asli Tangga',
//         rumus: """pt' = sqrt(pt^2+Tt^2)""",
//         hasil: PanjangTanggaMiring_1.toRound(2),
//         satuan: 'm'),
//     buatPDF(
//         nama: 'Tebal Pelat Tangga',
//         rumus: """ht = pt'/20.(0,4+fy/700)""",
//         hasil: TebalPelatTangga_1.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Tebal Pelat Tangga Pilih',
//         rumus: """ht' = ht > 150""",
//         hasil: TebalPelatTanggaPilih_1.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Tebal Pelat Bordes',
//         rumus: 'hb = pb/20.(0,4+fy/700)',
//         hasil: TebalPelatBordes_1.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Tebal Pelat Bordes Pilih',
//         rumus: """hb' = hb > 150""",
//         hasil: TebalPelatBordesPilih_1.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Tinggi Miring Anak Tangga',
//         rumus: """t'= o.cos(*Alpha) """,
//         hasil: TinggiMiringAnakTangga_1.toRound(2),
//         satuan: 'cm'),
//     buatPDF(
//         nama: '0,5 Tinggi Miring Anak TAngga',
//         rumus: """1/2t' = 1/2.t' """,
//         hasil: TinggiMiring5AnakTangga_1.toRound(2),
//         satuan: 'cm'),
//     buatPDF(
//         nama: 'Tinggi Hitungan Tangga',
//         rumus: """Tt' = ht'+1/2t' """,
//         hasil: TinggiMiringTangga_1.toRound(2),
//         satuan: 'cm'),
//     buatPDF(
//         nama: 'Berat Pelat + Anak Tangga',
//         rumus: """Wt = Tt'.24.Lt """,
//         hasil: BeratSendiriTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Keramik Tangga',
//         rumus: """Wkt = 0,24.Lt """,
//         hasil: BeratKeramikTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Spesi Tangga',
//         rumus: """Wst = 0,21.Lt""",
//         hasil: BeratSpesiTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Hand Ralling Tangga',
//         rumus: """Wrt = 0,2.Lt """,
//         hasil: BeratHandrailTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Beban Mati Tangga',
//         rumus: 'Wdt = Wt+Wkt+Wst+Wrt',
//         hasil: BebanMatiTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'beban Hidup',
//         rumus: 'Wlt = 3.Lt.cos(*Alpha)',
//         hasil: BebanHidupTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Beban Berfaktor',
//         rumus: 'Wut = 1,2.wdt + 1,6.Wlt',
//         hasil: BebanTerfaktorTangga_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Sendiri Bordes',
//         rumus: """Wb = Tb'.24.Lt """,
//         hasil: BeratSendiriBordes_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Keramik Bordes',
//         rumus: """Wkb = 0,24.Lt """,
//         hasil: BeratKeramikBordes_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Spesi Bordes',
//         rumus: """Wsb = 0,21.Lt""",
//         hasil: BeratSpesiBordes_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Berat Hand Ralling Bordes',
//         rumus: """Wrb = 0,2.Lt """,
//         hasil: BeratHandrailBordes_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Beban Mati Bordes',
//         rumus: 'Wdb = Wb+Wkb+Wsb+Wrb',
//         hasil: BebanMatiBordes_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'beban Hidup',
//         rumus: 'Wlb = 3.pb',
//         hasil: BebanHidupBordes_1.toRound(2),
//         satuan: 'kN/m'),
//     buatPDF(
//         nama: 'Beban Berfaktor',
//         rumus: 'Wub = 1,2.wdb + 1,6.Wlb',
//         hasil: BebanTerfaktorBordes_1,
//         satuan: 'kN/m'),
//   ];
//   List Data2_ = Data2.map((e) => [
//         e.BarisKe,
//         e.nama,
//         e.rumus,
//         e.tanda,
//         e.hasil,
//         e.satuan,
//       ]).toList();
//
//   final Data3 = [
//     buatPDF(
//         nama: 'Beban Berfaktor',
//         rumus: 'Wub = 1,2.wdb + 1,6.Wlb',
//         hasil: BebanTerfaktorBordes_1,
//         satuan: 'kN/m'),
//   ];
//   List Data3_ = Data3.map((e) => [
//         e.BarisKe,
//         e.nama,
//         e.rumus,
//         e.tanda,
//         e.hasil,
//         e.satuan,
//       ]).toList();
//
//   //Hitungan 3
//   Iab = 1 / 12 * LebarT * pow((TebalPelatTanggaPilih_1 / 10), 3);
//   Ibc = 1 / 12 * LebarT * pow((TebalPelatBordesPilih_1 / 10), 3);
//   KAB = 4 / PanjangTanggaMiring_1;
//   KBC = 4 / (PanjangB_1 / 100);
//   miuAB = KAB / (KAB + KBC);
//   miuBC = KBC / (KAB + KBC);
//   MaAB = BebanTerfaktorTangga_1 * cosa_1 * pow(PanjangTanggaMiring_1, 2) / 12;
//   MaBA = -BebanTerfaktorTangga_1 * cosa_1 * pow(PanjangTanggaMiring_1, 2) / 12;
//   MaBC = BebanTerfaktorBordes_1 * pow(PanjangB_1 / 100, 2) / 12;
//   MaCB = -BebanTerfaktorBordes_1 * pow(PanjangB_1 / 100, 2) / 12;
//
//   var x = arr();
//   x.A1 = 'joint';
//   x.B1 = 'A';
//   x.C1 = 'B';
//   x.D1 = 'B';
//   x.E1 = 'C';
//   x.A2 = 'Anggota';
//   x.B2 = 'AB';
//   x.C2 = 'BA';
//   x.D2 = 'BC';
//   x.E2 = 'CB';
//   x.A3 = 'df';
//   x.B3 = 0;
//   x.C3 = miuAB;
//   x.D3 = miuBC;
//   x.E3 = 0;
//   x.A4 = 'FEM';
//   x.B4 = MaAB;
//   x.C4 = MaBA;
//   x.D4 = MaBC;
//   x.E4 = MaCB;
//   x.A5 = 'dist';
//   x.B5 = 0;
//   x.C5 = -(x.D4 + x.C4) * x.C3;
//   x.D5 = -(x.D4 + x.C4) * x.D3;
//   x.E5 = 0;
//   x.A6 = 'co';
//   x.B6 = x.C5 / 2;
//   x.C6 = 0;
//   x.D6 = 0;
//   x.E6 = x.D5 / 2;
//   x.A7 = 'total';
//   x.B7 = x.B6 + x.B5 + x.B4;
//   x.C7 = x.C6 + x.C5 + x.C4;
//   x.D7 = x.D6 + x.D5 + x.D4;
//   x.E7 = x.E6 + x.E5 + x.E4;
//   //x.A8='df'       ;x.B8=0             ;x.C8=0                ;x.D8=0                ;x.E8=0             ;
//   //arr().A3='df';      arr().B3=0;   arr().C3=0;   arr().D3=0; arr().E3=0;
//
//   MbAB = x.B7;
//   MbBA = x.C7;
//   MbBC = x.D7;
//   MbCB = x.E7;
//
//   FVbBC = ((BebanTerfaktorBordes_1 * pow(PanjangB_1 / 100, 2) / 2) + MbBC + MbCB) /
//       (PanjangB_1 / 100);
//   FVbCB = -((BebanTerfaktorBordes_1 * pow(PanjangB_1 / 100, 2) / 2) - MbBC - MbCB) /
//       (PanjangB_1 / 100);
//   FVbBA = FVbBC;
//   FVbAB = FVbBA + BebanTerfaktorTangga_1 * PanjangTanggaMiring_1;
//   FHbAB = (-BebanTerfaktorTangga_1 * PanjangTanggaMiring_1 * (PanjangT_1 / 200) -
//           MbAB -
//           MbBA +
//           FVbAB * (PanjangT_1 / 100)) /
//       2;
//   FHbBA = FHbAB;
//   FHbBC = FHbBA;
//   FHbCB = FHbBC;
//
//   NAB = cosa_1 * FHbAB + sina_1 * FVbAB;
//   NBA = cosa_1 * FHbBA + sina_1 * FVbBA;
//   NBC = FHbBC;
//   NCB = FHbCB;
//   SAB = -sina_1 * FHbAB + cosa_1 * FVbAB;
//   SBA = sina_1 * FHbBA - cosa_1 * FVbBA;
//   SBC = FVbBC;
//   SCB = FVbCB;
//   MAB = MbAB;
//   MBA = MbBA;
//   MBC = MbBC;
//   MCB = MbCB;
//
//   JAB = SAB / (SAB + SBA) * PanjangTanggaMiring_1;
//   JBA = SBA / (SAB + SBA) * PanjangTanggaMiring_1;
//   MLAB = JAB * SAB - BebanTerfaktorTangga_1 * cosa_1 * pow(JAB, 2) / 2 - MAB;
//
//   var AB = Tulangan();
//   AB.hitung(
//       MAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
//   var LAB = Tulangan();
//   LAB.hitung(
//       MLAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
//   var BA = Tulangan();
//   BA.hitung(
//       MBA, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
//   var BC = Tulangan();
//   BC.hitung(
//       MBC, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
//   var CB = Tulangan();
//   CB.hitung(
//       MCB, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
// }



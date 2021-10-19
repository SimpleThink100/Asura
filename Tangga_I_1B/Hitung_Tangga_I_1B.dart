import 'package:flutter/cupertino.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_I_1B/PDF_Tangga_I_1B.dart';


void Hitung_T_I_1B() {
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
        Antrede1N_1 = AntredeS_1 / PembagiAntrede;
        AntredeNB_1 = (Antrede1N_1 / 2).toRound(0);
        AntredeNA_1 = (Antrede1N_1 / 2 - 0.2).toRound(0);
      } else {
        AntredeN1_1 = AntredeS_1 / PembagiAntrede;
        AntredeNB_1 = (AntredeN1_1 / 2).toRound(0);
        AntredeNA_1 = (AntredeN1_1 / 2 - 0.2).toRound(0);
      }
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
        Optrede1N_1 = OptredeS_1 / PembagiOptrede;
        OptredeNB_1 = (Optrede1N_1 / 2).toRound(0);
        OptredeNA_1 = (Optrede1N_1 / 2 - 0.2).toRound(0);
      } else {
        OptredeN1_1 = OptredeS_1 / PembagiOptrede;
        OptredeNB_1 = (OptredeN1_1 / 2).toRound(0);
        OptredeNA_1 = (OptredeN1_1 / 2 - 0.2).toRound(0);
      };
      OptredeN_1 = OptredeNT_1 - OptredeNA_1 - OptredeNB_1;
      break;
  }

  n = OptredeNT_1;
  TinggiCanvasa = TinggiT_1.toT_I_1B_a() + 120;
  TinggiCanvasb = LebarT.toT_I_1B_b() + 100;
  TinggiCanvasc =  50+220.0 ;
  TinggiCanvasm_1 = TinggiT_1.toM_I_1B_a() + 120;
  TinggiCanvasG_1 = TinggiT_1.toG_I_1B_a() + 120;
  TinggiCanvasG_2 = (Optrede_1*2).toG_I_1B_b()+200;
  TinggiCanvasG_3 = TinggiT_1.toG_I_1B_c() + 120;
  //TinggiCanvasG_4 = TinggiT_1.toG_I_1B_d() + 120;
  TinggiCanvasG_5 = TinggiT_1.toG_I_1B_e() + 120;
  TinggiCanvasG_6 = TinggiT_1.toG_I_1B_f() + 120;
  TinggiCanvasG_7 = TinggiT_1.toG_I_1B_g() + 120;

  TinggiCanvasD_1 =  TinggiT_1.toD_I_1B_a() + 120;
  TinggiCanvasD_2 =  hB.toD_I_1B_b() + 160;
}
void HitungT_T_I_1B() {
  //HITUNGAN 1
  sina_1 = sin(Sudut_1 / 180 * pi);
  cosa_1 = cos(Sudut_1 / 180 * pi);
  LebarB_1=LebarT;
 //data1
  ListData1();

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
  ListData2();
//data3
  ListData3();
 // Hitungan 3

  final x = matrik();
  x.Hitung2(
    A_1:0.05,A_2:0.05,
    E_1:200000000,E_2:200000000,
    I_1:0.0001,I_2:0.0001,
    xi_1:0,yi_1:0,
    xj_1:PanjangT_1/100,yj_1:TinggiT_1/100,
    xi_2:PanjangT_1/100,yi_2:TinggiT_1/100,
    xj_2:PanjangT_1/100+PanjangB_1/100,yj_2:TinggiT_1/100,
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
 ListData6();

  JAB = SAB / (SAB + SBA) * PanjangTanggaMiring_1;
  JBA = SBA / (SAB + SBA) * PanjangTanggaMiring_1;
  MLAB =-( JAB * SAB - BebanTerfaktorTangga_1 * cosa_1 * pow(JAB, 2) / 2 - MAB);

//data7
  ListData7();

  var AB = Tulangan();
  AB.hitung(
      MAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_1=AB.Jarak.toText();
  Dtul_1=AB.diameterTulangan.toText();
  Syarat_1=AB.SM;
  //AB.data();

  var LAB = Tulangan();
  LAB.hitung(
      -MLAB, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_2=LAB.Jarak.toText();
  Dtul_2=LAB.diameterTulangan.toText();
  Syarat_2=LAB.SM;
  //LAB.data();

  var BA = Tulangan();
  BA.hitung(
      -MBA, fy, fc, TebalPelatTanggaPilih_1, d, Selimut);
  Stul_3=BA.Jarak.toText();
  Dtul_3=BA.diameterTulangan.toText();
  Syarat_3=BA.SM;
  //BA.data();

  var GAB = TulanganGeser();
  GAB.hitung(max(SAB,SBA), fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
  Stul_4=GAB.jarak.toText();
  Dtul_4=GAB.Ds.toText();
  SGT_1=GAB.jarak/10;
  Syarat_4=GAB.Sv;

  var BC = Tulangan();
  BC.hitung(
      MBC, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
  Stul_5=BC.Jarak.toText();
  Dtul_5=BC.diameterTulangan.toText();
  Syarat_5=BC.SM;
  //BC.data();
  var CB = Tulangan();
  CB.hitung(
      MCB, fy, fc, TebalPelatBordesPilih_1, d, Selimut);
  Stul_6=CB.Jarak.toText();
  Dtul_6=CB.diameterTulangan.toText();
  Syarat_6=CB.SM;

  var GBC = TulanganGeser();
  GBC.hitung(max(SBC,SCB), fc, fy, TebalPelatTanggaPilih_1, d, ds, Selimut);
  Stul_7=GBC.jarak.toText();
  Dtul_7=GBC.Ds.toText();
  Syarat_7=GBC.Sv;
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
  Stul_8=B.N.toText();
  Dtul_8=B.D.toText();
  Syarat_8=B.SM;
  NBTa_1=B.N;

  var BL = BalokBordes();
  BL.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup*pow(LebarB_1/100,2),);
  Stul_9=BL.N.toText();
  Dtul_9=BL.D.toText();
  Syarat_9=BL.SM;
  NBLa_1=BL.N;

 var GB = BalokBordesGeser();
  GB.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup*LebarB_1/100/2,);
  Stul_10=GB.jarak.toText();
  Dtul_10=GB.ds.toText();
  Syarat_10=GB.Sv;
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
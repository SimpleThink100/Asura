
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_L/PDF_Tangga_L.dart';


void Hitung_T_L_1() {
  Sudut_1 = atan(TinggiT_1 / PanjangT_1) / pi * 180;
  OptredeNR_1 = TinggiT_1 / Optrede_1;
  OptredeNT_1 = OptredeNR_1.toRound(0);
  AntredeNT_1 = teratas=='Antrede'?OptredeNT_1:OptredeNT_1-1;
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
        AntredeNB_1 = (Antrede1N_1 / 2).toRound(0).abs();
        AntredeNA_1 = (Antrede1N_1 / 2 - 0.2).toRound(0).abs();
      } else {
        AntredeN1_1 = AntredeS_1 / PembagiAntrede;
        AntredeNB_1 = (AntredeN1_1 / 2).toRound(0).abs();
        AntredeNA_1 = (AntredeN1_1 / 2 - 0.2).toRound(0).abs();
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
        Optrede1N_1 = OptredeS_1 / PembagiOptrede;
        OptredeNB_1 = (Optrede1N_1 / 2).toRound(0).abs();
        OptredeNA_1 = (Optrede1N_1 / 2 - 0.2).toRound(0).abs();
      } else {
        OptredeN1_1 = OptredeS_1 / PembagiOptrede;
        OptredeNB_1 = (OptredeN1_1 / 2).toRound(0).abs();
        OptredeNA_1 = (OptredeN1_1 / 2 - 0.2).toRound(0).abs();
      }
      ;
      OptredeN_1 = OptredeNT_1 - OptredeNA_1 - OptredeNB_1;
      break;
  }
}
void Hitung_T_L_2() {
  Sudut_2 = atan(TinggiT_2 / PanjangT_2) / pi * 180;
  OptredeNR_2 = TinggiT_2 / Optrede_2;
  OptredeNT_2 = OptredeNR_2.toRound(0);
  AntredeNT_2 = teratas=='Antrede'?OptredeNT_2:OptredeNT_2-1;
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
        Antrede1N_2 = AntredeS_2 / PembagiAntrede;
        AntredeNB_2 = (Antrede1N_2 / 2).toRound(0).abs();
        AntredeNA_2 = (Antrede1N_2 / 2 - 0.2).toRound(0).abs();
      } else {
        AntredeN1_2 = AntredeS_2 / PembagiAntrede;
        AntredeNB_2 = (AntredeN1_2 / 2).toRound(0).abs();
        AntredeNA_2 = (AntredeN1_2 / 2 - 0.2).toRound(0).abs();
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
        Optrede1N_2 = OptredeS_2 / PembagiOptrede;
        OptredeNB_2 = (Optrede1N_2 / 2).toRound(0).abs();
        OptredeNA_2 = (Optrede1N_2 / 2 - 0.2).toRound(0).abs();
      } else {
        OptredeN1_2 = OptredeS_2 / PembagiOptrede;
        OptredeNB_2 = (OptredeN1_2 / 2).toRound(0).abs();
        OptredeNA_2 = (OptredeN1_2 / 2 - 0.2).toRound(0).abs();
      }
      ;
      OptredeN_2 = OptredeNT_2 - OptredeNA_2 - OptredeNB_2;
      break;
  }
}
void Hitung_T_L(){
  PanjangB_2 = PanjangB_1;
  PanjangB_1 = LebarT;
  LebarB_1 = LebarT;
  LebarB_2 = LebarT;
  Hitung_T_L_1();
  Hitung_T_L_2();
  sina_2 = sin(Sudut_2 / 180 * pi);
  cosa_2 = cos(Sudut_2 / 180 * pi);
  sina_1 = sin(Sudut_1 / 180 * pi);
  cosa_1 = cos(Sudut_1 / 180 * pi);

  n = OptredeNT_2;
  TinggiCanvasa = (TinggiT_1+TinggiT_2).toT_L_a()*2 + 170;
  TinggiCanvasb = (PanjangT_1+LebarT).toT_L_b() + 110;
  TinggiCanvasc =  50+430.0 ;

  TinggiCanvasm_1 =(TinggiT_2).toM_L_a() + 120;
  TinggiCanvasm_2 =(TinggiT_1).toM_L_b() + 120;

  TinggiCanvasG_1 = (TinggiT_2+TinggiT_1).toG_L_a()*2+170;

  TinggiCanvasG_2 = (Optrede_2*2).toG_L_b()+200;
  TinggiCanvasG_3 = (TinggiT_2).toG_L_c()+150;
 // TinggiCanvasG_4 = 0;
  TinggiCanvasG_5 = (TinggiT_2).toG_L_e()+120;
  TinggiCanvasG_6 = (TinggiT_2).toG_L_f()+120;
  TinggiCanvasG_7 = (TinggiT_2).toG_L_g()+120;

  TinggiCanvasG_8 = (Optrede_1*2).toG_L_h()+200;
  TinggiCanvasG_9 = (TinggiT_1).toG_L_i()+140;
  //TinggiCanvasG_10 = 0;
  TinggiCanvasG_11 = (TinggiT_1).toG_L_k()+120;
  TinggiCanvasG_12 = (TinggiT_1).toG_L_l()+120;
  TinggiCanvasG_13 = (TinggiT_1).toG_L_m()+120;

  TinggiCanvasD_1 = (TinggiT_2).toD_L_a()+200;
  TinggiCanvasD_2 = (hB).toD_L_b()+140;
  TinggiCanvasD_3 = (hB).toD_L_c()+140;
  TinggiCanvasD_4 = (TinggiT_1).toD_L_d()+130;
  TinggiCanvasD_5 = (hB).toD_L_e()+140;

  TinggiCanvasP = (TinggiT_1+TinggiT_2).toT_L_a()*2 + 140;

}

void HitungT_T_L_2(){
  //HITUNGAN 1
  //data1

  //Hitungan 2
  PanjangTanggaMiring_2 = sqrt(pow(PanjangT_2 / 100, 2) + pow(TinggiT_2 / 100, 2));
  // TebalPelatTangga_2 = PanjangTanggaMiring_2 / 20 * (0.4 + fy / 700) * 1000;
  // TebalPelatTanggaPilih_2 = PanjangTanggaMiring_2 <= 150
  //     ? 150
  //     : (TebalPelatTangga_2 / 10 + 0.5).toRound(0) * 10;
   TebalPelatBordes_2 = PanjangB_2 / 20 * (0.4 + fy / 700) * 10;
  // TebalPelatBordesPilih_2 = TebalPelatBordes_2 <= 150
  //     ? 150
  //     : (TebalPelatBordes_2 / 10 + 0.5).toRound(0) * 10;

  TinggiMiringAnakTangga_2 = Optrede_2 * cosa_2;
  TinggiMiring5AnakTangga_2 = TinggiMiringAnakTangga_2 / 2;
  TinggiMiringTangga_2 = TinggiMiring5AnakTangga_2 + TebalPelatTanggaPilih_2 ;

  //beban
  BeratSendiriTangga_2 = TinggiMiringTangga_2 / 100 * beton*(LebarT/100);
  BeratKeramikTangga_2 = keramik *tkeramik/100*(LebarT/100);
  BeratSpesiTangga_2 = spesi * tspesi/100*(LebarT/100);
  BeratHandrailTangga_2 = ralling ;
  BebanMatiTangga_2 = BeratSendiriTangga_2 +
      BeratKeramikTangga_2 +
      BeratSpesiTangga_2 +
      BeratHandrailTangga_2;
  BebanHidupTangga_2 = hidup*(LebarT/100);
  BebanTerfaktorTangga_2= 1.2 * BebanMatiTangga_2 + 1.6 * BebanHidupTangga_2;
  //..bordes
  BeratSendiriBordes_2 = TebalPelatBordesPilih_2 / 100* beton/(LebarT/100);
  BeratKeramikBordes_2 = keramik * tkeramik/100*(LebarT/100);
  BeratSpesiBordes_2 = spesi * tspesi/100*(LebarT/100);
  BeratHandrailBordes_2 = ralling ;
  BebanHidupBordes_2 = hidup*(LebarT/100);
  BebanMatiBordes_2 = BeratSendiriBordes_2 +
      BeratKeramikBordes_2 +
      BeratSpesiBordes_2 +
      BeratHandrailBordes_2;
  BebanTerfaktorBordes_2 = 1.2 * BebanMatiBordes_2 + 1.6 * BebanHidupBordes_2;

//data2

//data3

  // Hitungan 3
  final double E=1.0*pow(10.0,6);
  final double A_T=(TebalPelatTanggaPilih_2*10*(LebarT*10))/pow(10.0,6);
  final double I_T=(1/12*(LebarT*10)*pow(TebalPelatTanggaPilih_2*10,3))/pow(10.0,12);
  final double A_Ba=(TebalPelatBordesPilih_1*10*(LebarT*10))/pow(10.0,6);
  final double I_Ba=(1/12*(LebarT*10)*pow(TebalPelatBordesPilih_1*10,3))/pow(10.0,12);
  final double A_Bb=(TebalPelatBordesPilih_2*10*(LebarT*10))/pow(10.0,6);
  final double I_Bb=(1/12*(LebarT*10)*pow(TebalPelatBordesPilih_2*10,3))/pow(10.0,12);

  final x = matrik();
  x.Hitung3(
    //A_1:0.05,A_2:0.05,A_3: 0.05,
    //E_1:200000000,E_2:200000000,E_3:200000000,
    //I_1:0.0001,I_2:0.0001,I_3:0.0001,
      A_1:A_Ba, A_2:A_T,  A_3:A_Bb,
      E_1:E,    E_2:E,    E_3:E,
      I_1:I_Ba, I_2:I_T,  I_3:I_Bb,
    xi_1:0,yi_1:0,
    xj_1:PanjangB_1/100,yj_1:0,
    xi_2:PanjangB_1/100,yi_2:0,
    xj_2:PanjangB_1/100+PanjangT_2/100,yj_2:TinggiT_2/100,
    xi_3: PanjangB_1/100+PanjangT_2/100,yi_3: TinggiT_2/100,
    xj_3: PanjangB_1/100+PanjangT_2/100+PanjangB_2/100,yj_3: TinggiT_2/100,
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


  JHI = SHI / (SHI + SIH) * PanjangTanggaMiring_2;
  JIH = SIH / (SHI + SIH) * PanjangTanggaMiring_2;
  MLHI =-( JHI * SHI - BebanTerfaktorTangga_2 * cosa_2 * pow(JHI, 2) / 2 - MHI);

//data7

//GHIJ
  var GH = Tulangan();
  GH.hitung(
      MGH/(LebarT/100), fy, fc, TebalPelatBordesPilih_1*10, d, Selimut);
  Stul_4=GH.Jarak.toText();
  Dtul_4=GH.diameterTulangan.toText();
  Syarat_4=GH.SM;
  //AB.data();

  var HG = Tulangan();
  HG.hitung(
      -MHG/(LebarT/100), fy, fc, TebalPelatBordesPilih_1*10, d, Selimut);
  Stul_5=HG.Jarak.toText();
  Dtul_5=HG.diameterTulangan.toText();
  Syarat_5=HG.SM;
  //LAB.data();

  var GGH = TulanganGeser();
  GGH.hitung(max(SGH,SHG), fc, fy, TebalPelatBordesPilih_1*10, d, ds, Selimut);
  Stul_6=GGH.jarak.toText();
  Dtul_6=GGH.Ds.toText();
  Syarat_6=GGH.Sv;
  SGBa_2=GGH.jarak/10;

  var HI = Tulangan();
  HI.hitung(
      MHI/(LebarT/100), fy, fc, TebalPelatTanggaPilih_2*10, d, Selimut);
  Stul_7=HI.Jarak.toText();
  Dtul_7=HI.diameterTulangan.toText();
  Syarat_7=HI.SM;
  //BC.data();

  var IH = Tulangan();
  IH.hitung(
      MIH/(LebarT/100), fy, fc, TebalPelatTanggaPilih_2*10, d, Selimut);
  Stul_8=IH.Jarak.toText();
  Dtul_8=IH.diameterTulangan.toText();
  Syarat_8=IH.SM;

  var LHI = Tulangan();
  LHI.hitung(
      MLHI/(LebarT/100), fy, fc, TebalPelatTanggaPilih_2*10, d, Selimut);
  Stul_9=HI.Jarak.toText();
  Dtul_9=HI.diameterTulangan.toText();
  Syarat_9=HI.SM;

  var GHI = TulanganGeser();
  GHI.hitung(max(SHI,SIH), fc, fy, TebalPelatTanggaPilih_2*10, d, ds, Selimut);
  Stul_10=GHI.jarak.toText();
  Dtul_10=GHI.Ds.toText();
  Syarat_10=GHI.Sv;
  SGT_2=GHI.jarak/10;

  var IJ = Tulangan();
  IJ.hitung(
      MIJ/(LebarT/100), fy, fc, TebalPelatBordesPilih_2*10, d, Selimut);
  Stul_11=IJ.Jarak.toText();
  Dtul_11=IJ.diameterTulangan.toText();
  Syarat_11=IJ.SM;
  //AB.data();

  var JI = Tulangan();
  JI.hitung(
      -MJI/(LebarT/100), fy, fc, TebalPelatBordesPilih_2*10, d, Selimut);
  Stul_12=JI.Jarak.toText();
  Dtul_12=JI.diameterTulangan.toText();
  Syarat_12=JI.SM;
  //LAB.data();

  var GIJ = TulanganGeser();
  GIJ.hitung(max(SIJ,SJI), fc, fy, TebalPelatBordesPilih_2*10, d, ds, Selimut);
  Stul_13=GIJ.jarak.toText();
  Dtul_13=GIJ.Ds.toText();
  Syarat_13=GIJ.Sv;
  SGBb_2=GIJ.jarak/10;

//pembebanan balok1
  BBeratBalok_1=hB/100*bB/100*beton;
  BBeratDinding_1 = 2*dinding;
  BBeratPelat_1 = TebalPelatBordesPilih_1/100*beton*PanjangB_1/100;
  BBeratAdukanPelat_1 = spesi*tspesi/100*PanjangB_1/100;
  BBeratKeramikPelat_1 = keramik*tkeramik/100*PanjangB_1/100;
  BBeratHandPelat_1 =ralling;
  wdbp_1 = BBeratBalok_1+BBeratDinding_1+BBeratPelat_1+
      BBeratAdukanPelat_1+BBeratKeramikPelat_1+BBeratHandPelat_1;
  wlbp_1 = hidup*(PanjangB_1/100);
  wup_1=1.2*wdbp_1+1.6*wlbp_1;


  var B_1 = BalokBordes();
  B_1.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/12*wup_1*pow(LebarB_1/100,2),);
  Stul_1=B_1.N.toText();
  Dtul_1=B_1.D.toText();
  Syarat_1=B_1.SM;
  NBTa_2=B_1.N;

  var BL_1 = BalokBordes();
  BL_1.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup_1*pow(LebarB_1/100,2),);
  Stul_2=BL_1.N.toText();
  Dtul_2=BL_1.D.toText();
  Syarat_2=BL_1.SM;
  NBLa_2=BL_1.N;

  var GB_1 = BalokBordesGeser();
  GB_1.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup_1*LebarB_1/100/2,);
  Stul_3=GB_1.jarak.toText();
  Dtul_3=GB_1.ds.toText();
  Syarat_3=GB_1.Sv;
  JBGa_2=GB_1.jarak;
  JBGmina_2=GB_1.jarakmin;
  //pembebanan balok2
  //pembebanan balok

  BBeratBalok_2=hB/100*bB/100*beton;
  BBeratDinding_2 = 2*dinding;
  BBeratPelat_2 = TebalPelatBordesPilih_2/100*beton*PanjangB_2/100;
  BBeratAdukanPelat_2 = spesi*tspesi/100*PanjangB_2/100;
  BBeratKeramikPelat_2 = keramik*tkeramik/100*PanjangB_2/100;
  BBeratHandPelat_2 =ralling;
  wdbp_2 = BBeratBalok_2+BBeratDinding_2+BBeratPelat_2+
      BBeratAdukanPelat_2+BBeratKeramikPelat_2+BBeratHandPelat_2;
  wlbp_2 = hidup*(PanjangB_2/100);
  wup_2=1.2*wdbp_2+1.6*wlbp_2;

  var B_2 = BalokBordes();
  B_2.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/12*wup_2*pow(LebarB_2/100,2),);
  Stul_14=B_2.N.toText();
  Dtul_14=B_2.D.toText();
  Syarat_14=B_2.SM;
  NBTb_2=B_2.N;

  var BL_2 = BalokBordes();
  BL_2.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup_2*pow(LebarB_2/100,2),);
  Stul_15=BL_2.N.toText();
  Dtul_15=BL_2.D.toText();
  Syarat_15=BL_2.SM;
  NBLb_2=BL_2.N;

  var GB_2 = BalokBordesGeser();
  GB_2.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup_2*LebarB_2/100/2,);
  Stul_16=GB_2.jarak.toText();
  Dtul_16=GB_2.ds.toText();
  Syarat_16=GB_2.Sv;
  JBGb_2=GB_2.jarak;
  JBGminb_2=GB_2.jarakmin;



  final Datan = [];
  PdfDatan = Datan.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
}
void HitungT_T_L_1(){
  //HITUNGAN 1

  LebarB_1=LebarT;
  //data1
  //Hitungan 2
  PanjangTanggaMiring_1 = sqrt(pow(PanjangT_1 / 100, 2) + pow(TinggiT_1 / 100, 2));
  // TebalPelatTangga_1 = PanjangTanggaMiring_1 / 20 * (0.4 + fy / 700) * 1000;
  // TebalPelatTanggaPilih_1 = PanjangTanggaMiring_1 <= 150
  //     ? 150
  //     : (TebalPelatTangga_1 / 10 + 0.5).toRound(0) * 10;
   TebalPelatBordes_1 = PanjangB_1 / 20 * (0.4 + fy / 700) * 10;
  // TebalPelatBordesPilih_1 = TebalPelatBordes_1 <= 150
  //     ? 150
  //     : (TebalPelatBordes_1 / 10 + 0.5).toRound(0) * 10;

  TinggiMiringAnakTangga_1 = Optrede_1 * cosa_1;
  TinggiMiring5AnakTangga_1 = TinggiMiringAnakTangga_1 / 2;
  TinggiMiringTangga_1 = TinggiMiring5AnakTangga_1 + TebalPelatTanggaPilih_1 ;
  //beban
  BeratSendiriTangga_1 = TinggiMiringTangga_1 / 100 * beton*(LebarT/100);
  BeratKeramikTangga_1 = keramik *tkeramik/100*(LebarT/100);
  BeratSpesiTangga_1 = spesi * tspesi/100*(LebarT/100);
  BeratHandrailTangga_1 = ralling ;
  BebanMatiTangga_1 = BeratSendiriTangga_1 +
      BeratKeramikTangga_1 +
      BeratSpesiTangga_1 +
      BeratHandrailTangga_1;
  BebanHidupTangga_1 = hidup*(LebarT/100);
  BebanTerfaktorTangga_1 = 1.2 * BebanMatiTangga_1 + 1.6 * BebanHidupTangga_1;
  //..bordes
  BeratSendiriBordes_1 = TebalPelatBordesPilih_1 / 100 * beton*(LebarT/100);
  BeratKeramikBordes_1 = keramik * tkeramik/100*(LebarT/100);
  BeratSpesiBordes_1 = spesi * tspesi/100*(LebarT/100);
  BeratHandrailBordes_1 = ralling ;
  BebanHidupBordes_1 = hidup*(LebarT/100);
  BebanMatiBordes_1 = BeratSendiriBordes_1 +
      BeratKeramikBordes_1 +
      BeratSpesiBordes_1 +
      BeratHandrailBordes_1;
  BebanTerfaktorBordes_1 = 1.2 * BebanMatiBordes_1 + 1.6 * BebanHidupBordes_1;

//data2

//data3

  // Hitungan 3
  final double E=1.0*pow(10.0,6);
  final double A_T=(TebalPelatTanggaPilih_1*10*(LebarT*10))/pow(10.0,6);
  final double I_T=(1/12*(LebarT*10)*pow(TebalPelatTanggaPilih_1*10,3))/pow(10.0,12);
  final double A_Ba=(TebalPelatBordesPilih_1*10*(LebarT*10))/pow(10.0,6);
  final double I_Ba=(1/12*(LebarT*10)*pow(TebalPelatBordesPilih_1*10,3))/pow(10.0,12);
  final x = matrik();
  x.Hitung2(
    //A_1:0.05,A_2:0.05,
    //E_1:200000000,E_2:200000000,
    //I_1:0.0001,I_2:0.0001,
    A_1:A_T,A_2:A_Ba,
    E_1:E,E_2:E,
    I_1:I_T,I_2:I_Ba,
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


  JAB = SAB / (SAB + SBA) * PanjangTanggaMiring_1;
  JBA = SBA / (SAB + SBA) * PanjangTanggaMiring_1;
  MLAB =-( JAB * SAB - BebanTerfaktorTangga_1 * cosa_1 * pow(JAB, 2) / 2 - MAB);

//data7


  var AB = Tulangan();
  AB.hitung(
      MAB/(LebarT/100), fy, fc, TebalPelatTanggaPilih_1*10, d, Selimut);
  Stul_17=AB.Jarak.toText();
  Dtul_17=AB.diameterTulangan.toText();
  Syarat_17=AB.SM;
  //AB.data();


  var LAB = Tulangan();
  LAB.hitung(
      -MLAB/(LebarT/100), fy, fc, TebalPelatTanggaPilih_1*10, d, Selimut);
  Stul_18=LAB.Jarak.toText();
  Dtul_18=LAB.diameterTulangan.toText();
  Syarat_18=LAB.SM;
  //LAB.data();

  var BA = Tulangan();
  BA.hitung(
      -MBA/(LebarT/100), fy, fc, TebalPelatTanggaPilih_1*10, d, Selimut);
  Stul_19=BA.Jarak.toText();
  Dtul_19=BA.diameterTulangan.toText();
  Syarat_19=BA.SM;
  //BA.data();

  var GAB = TulanganGeser();
  GAB.hitung(max(SAB,SBA), fc, fy, TebalPelatTanggaPilih_1*10, d, ds, Selimut);
  Stul_20=GAB.jarak.toText();
  Dtul_20=GAB.Ds.toText();
  Syarat_20=GAB.Sv;
  SGT_1=GAB.jarak/10;

  var BC = Tulangan();
  BC.hitung(
      MBC/(LebarT/100), fy, fc, TebalPelatBordesPilih_1*10, d, Selimut);
  Stul_21=BC.Jarak.toText();
  Dtul_21=BC.diameterTulangan.toText();
  Syarat_21=BC.SM;
  //BC.data();
  var CB = Tulangan();
  CB.hitung(
      MCB/(LebarT/100), fy, fc, TebalPelatBordesPilih_1*10, d, Selimut);
  Stul_22=CB.Jarak.toText();
  Dtul_22=CB.diameterTulangan.toText();
  Syarat_22=CB.SM;

  var GBC = TulanganGeser();
  GBC.hitung(max(SBC,SCB), fc, fy, TebalPelatTanggaPilih_1*10, d, ds, Selimut);
  Stul_23=GBC.jarak.toText();
  Dtul_23=GBC.Ds.toText();
  Syarat_23=GBC.Sv;
  SGBb_1=GBC.jarak/10;

  //pembebanan balok
  double BeratBalok =hB/100*bB/100*beton;
  double BeratDinding = 2*dinding;
  double BeratPelat =  TebalPelatBordesPilih_1/100*beton*PanjangB_1/100;
  double BeratAdukanPelat = spesi*tspesi/100*PanjangB_1/100;
  double BeratKeramikPelat = keramik*tkeramik/100*PanjangB_1/100;
  double BeratHandPelat = ralling;
  double wdbp;
  wdbp = BeratBalok+BeratDinding+BeratPelat+
      BeratAdukanPelat+BeratKeramikPelat+BeratHandPelat;
  double wlbp;
  wlbp = hidup*(PanjangB_1/100);
  double wup=1.2*wdbp+1.6*wlbp;

  var B = BalokBordes();
  B.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/12*wup*pow(LebarB_1/100,2),);
  Stul_24=B.N.toText();
  Dtul_24=B.D.toText();
  Syarat_24=B.SM;
  NBTa_1=B.N;
  var BL = BalokBordes();
  BL.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,1/24*wup*pow(LebarB_1/100,2),);
  Stul_25=BL.N.toText();
  Dtul_25=BL.D.toText();
  Syarat_25=BL.SM;
  NBLa_1=BL.N;
  var GB = BalokBordesGeser();
  GB.hitung(hB*10, bB*10, fyB, fcB, selimutB, dB, dsB,wup*LebarB_1/100/2,);
  Stul_26=GB.jarak.toText();
  Dtul_26=GB.ds.toText();
  Syarat_26=GB.Sv;
  JBGa_1=GB.jarak;
  JBGmina_1=GB.jarakmin;

  final Datan = [];
  PdfDatan = Datan.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
}

void HitungT_T_L(){
  HitungT_T_L_1();
  HitungT_T_L_2();
  ListData1();
  ListData3();
  ListData5();
  ListData2();
  ListData4();
  ListData6();

  PdfData2 = Data2.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  PdfData4 = Data4.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  PdfData6 = Data6.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  PdfData1 = Data1.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  PdfData3 = Data3.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
  PdfData5 = Data5.map((e) => [e.BarisKe, e.nama, e.rumus, e.tanda, e.hasil, e.satuan,]).toList();
}
import 'package:flutter/cupertino.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_I/Hitungan_Tangga_I.dart';

List Data1 = [];
List Data2 = [];
List Data3 = [];
List Data4 = [];
List Data5 = [];
List Data6 = [];
List Data7 = [];
void ListData1(){
  Data1 = [
    buatPDF(
        nama: 'Kuat Tarik',
        rumus: 'fy',
        hasil: fy,
        satuan: 'Mpa'),
    buatPDF(
        nama: 'Kuat Tekan',
        rumus: 'fc',
        hasil: fc,
        satuan: 'Mpa'),
    buatPDF(
        nama: 'Panjang Tangga',
        rumus: 'Pt',
        hasil: PanjangT_1,
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Tangga',
        rumus: 'Lt',
        hasil: LebarT,
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Tangga',
        rumus: 'Tt',
        hasil: TinggiT_1,
        satuan: 'cm'),
    buatPDF(
        nama: 'Panjang Bordes',
        rumus: 'Pb',
        hasil: PanjangB_1,
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Bordes',
        rumus: 'Lb',
        hasil: LebarB_1,
        satuan: 'cm'),
    buatPDF(
        nama: 'Antrede',
        rumus: 'A',
        hasil: Antrede_1,
        satuan: 'cm'),
    buatPDF(
        nama: 'Optrede',
        rumus: 'O',
        hasil: Optrede_1,
        satuan: 'cm'),
    buatPDF(
        nama: 'Sudut',
        rumus: 'a = arctg(Tt/Pt)',
        hasil: Sudut_1.toRound(2),
        satuan: "°"),
    buatPDF(
        nama: 'Sina',
        rumus: 'sin(a)',
        hasil: sina_1.toRound(2),
        satuan: ''),
    buatPDF(
        nama: 'Cosa',
        rumus: 'cos(a)',
        hasil: cosa_1.toRound(2),
        satuan: ''),
  ];
}
void ListData2(){
  Data2 = [
    buatPDF(
        nama: 'panjang Asli Tangga',
        rumus: """pt' = sqrt(pt^2+Tt^2)""",
        hasil: PanjangTanggaMiring_1.toRound(2),
        satuan: 'm'),
    buatPDF(
        nama: 'Tebal Pelat Tangga',
        rumus: """ht = pt'/20.(0,4+fy/700)""",
        hasil: TebalPelatTangga_1.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Tebal Pelat Tangga Pilih',
        rumus: """ht' = ht > 150""",
        hasil: TebalPelatTanggaPilih_1.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Tebal Pelat Bordes',
        rumus: 'hb = pb/20.(0,4+fy/700)',
        hasil: TebalPelatBordes_1.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Tebal Pelat Bordes Pilih',
        rumus: """hb' = hb > 150""",
        hasil: TebalPelatBordesPilih_1.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Tinggi Miring Anak Tangga',
        rumus: """t'= o.cos(*Alpha) """,
        hasil: TinggiMiringAnakTangga_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: '0,5 Tinggi Miring Anak TAngga',
        rumus: """1/2t' = 1/2.t' """,
        hasil: TinggiMiring5AnakTangga_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Hitungan Tangga',
        rumus: """Tt' = ht'+1/2t' """,
        hasil: TinggiMiringTangga_1.toRound(2),
        satuan: 'cm'),

  ];
}
void ListData3(){
  Data3 = [
    buatPDF(
        nama: 'Berat Pelat + Anak Tangga',
        rumus: """Wt = Tt'.24.Lt """,
        hasil: BeratSendiriTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Keramik Tangga',
        rumus: """Wkt = 0,24.Lt """,
        hasil: BeratKeramikTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Spesi Tangga',
        rumus: """Wst = 0,21.Lt""",
        hasil: BeratSpesiTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Hand Ralling Tangga',
        rumus: """Wrt = 0,2.Lt """,
        hasil: BeratHandrailTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Beban Mati Tangga',
        rumus: 'Wdt = Wt+Wkt+Wst+Wrt',
        hasil: BebanMatiTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'beban Hidup',
        rumus: 'Wlt = 3.Lt.cos(*Alpha)',
        hasil: BebanHidupTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Beban Berfaktor Tangga',
        rumus: 'Wut = 1,2.wdt + 1,6.Wlt',
        hasil: BebanTerfaktorTangga_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Sendiri Bordes',
        rumus: """Wb = Tb'.24.Lt """,
        hasil: BeratSendiriBordes_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Keramik Bordes',
        rumus: """Wkb = 0,24.Lt """,
        hasil: BeratKeramikBordes_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Spesi Bordes',
        rumus: """Wsb = 0,21.Lt""",
        hasil: BeratSpesiBordes_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Berat Hand Ralling Bordes',
        rumus: """Wrb = 0,2.Lt """,
        hasil: BeratHandrailBordes_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Beban Mati Bordes',
        rumus: 'Wdb = Wb+Wkb+Wsb+Wrb',
        hasil: BebanMatiBordes_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Beban Hidup',
        rumus: 'Wlb = 3.pb',
        hasil: BebanHidupBordes_1.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Beban Berfaktor Bordes' ,
        rumus: 'Wub = 1,2.wdb + 1,6.Wlb',
        hasil: BebanTerfaktorBordes_1,
        satuan: 'kN/m'),
  ];
}
void ListData6(){
  Data6 = [
    buatPDF(
        nama: 'Gaya Vertikal BC',
        rumus: 'FVBC = ((Wub.Pb^2)/2+MBC+MCB)/Pb',
        hasil: FVbBC.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Vertikal CB',
        rumus: 'FVCB = -((Wub.Pb^2)/2-MBC-MCB)/Pb',
        hasil: FVbCB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Vertikal BA',
        rumus: 'FVBA = =FVBC',
        hasil: FVbBA.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Vertikal AB',
        rumus: '''FVAB = FVBA + Wut.pt' ''',
        hasil: FVbAB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Horisontal AB',
        rumus: '''FHAB = (-Wut.pt'.(Pt/2)-MAB-MBA+FVAB.Pt/2 ''',
        hasil: FHbAB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Horisontal BA',
        rumus: 'FHBA = FHAB',
        hasil: FHbBA.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Horisontal BC',
        rumus: 'FHBC = FHBA',
        hasil: FHbBC.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Horisontal CB',
        rumus: 'FHCB = FHBC',
        hasil: FHbCB.toRound(2),
        satuan: 'kN'),
  ];
}
void ListData7(){Data7 = [
  buatPDF(
      nama: 'Gaya Normal AB ',
      rumus: 'NAB = cosa.FHAB+sina.FVAB',
      hasil: NAB.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Normal BA ',
      rumus: 'NBA = cosa.FHBA+sina.FVBA',
      hasil: NBA.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Normal BC ',
      rumus: 'NBC = FHBC',
      hasil: NBC.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Normal BC ',
      rumus: 'NCB = FHCB',
      hasil: NCB.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Lintang AB ',
      rumus: 'SAB = -sina.FHBA+cosa.FVAB',
      hasil: SAB.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Lintang BA ',
      rumus: 'SAB = sina.FHBA-cosa.FVBA',
      hasil: SBA.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Lintang BC ',
      rumus: 'SBC = FVAB',
      hasil: SBC.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Gaya Lintang CB ',
      rumus: 'SCB = FVCB',
      hasil: SCB.toRound(2),
      satuan: 'kN'),
  buatPDF(
      nama: 'Panjang Titik Momen Lapang AB',
      rumus: '''PMAB = SAB/(SAB+SBA).pt' ''',
      hasil: JAB.toRound(2),
      satuan: 'm'),
  buatPDF(
      nama: 'Gaya Momen Lapang AB ',
      rumus: '''PMAB.SAB-Wut.cosa.JAB^2/2-MAB''',
      hasil: MLAB.toRound(2),
      satuan: 'kNm'),
];}
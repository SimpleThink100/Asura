import 'package:flutter/cupertino.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'dart:math';
import 'package:perancangan_tangga_app/Main/hitungan_tangga.dart';
import 'package:perancangan_tangga_app/Tangga_I/Hitungan_Tangga_I.dart';

//1
List Data1 = [];
List Data2 = [];
List Data3 = [];
List Data4 = [];
List Data5 = [];
List Data6 = [];
List Data7 = [];
List Data8 = [];
List Data9 = [];

//desain
void ListData1(){
  Data1 = [
    buatPDF(
        nama: 'Panjang Tangga',
        rumus: 'Pt',
        hasil: PanjangT_3.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Tangga',
        rumus: 'Tt',
        hasil: TinggiT_3.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Tangga',
        rumus: 'Lt',
        hasil: LebarT.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Sudut',
        rumus: 'a',
        hasil: Sudut_3.toRound(2),
        satuan: "°"),
    buatPDF(
        nama: 'Tebal Pelat Tangga',
        rumus: 'Ht',
        hasil: TebalPelatTanggaPilih_3.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Panjang Bordes',
        rumus: 'Pb',
        hasil: PanjangB_3.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Balok Bordes',
        rumus: 'Hbb',
        hasil: hB.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Balok Bordes',
        rumus: 'Lbb',
        hasil: bB.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tebal Pelat Bordes',
        rumus: 'Hb',
        hasil: TebalPelatBordesPilih_3.toRound(2),
        satuan: "cm"),
    buatPDF(
        nama: 'Antrede',
        rumus: 'A',
        hasil: Antrede_3.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Antrede total',
        rumus: '',
        hasil: AntredeNT_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede Biasa',
        rumus: '',
        hasil: AntredeN_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede + 1cm',
        rumus: '',
        hasil: AntredeN1_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede - 1cm',
        rumus: '',
        hasil: Antrede1N_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede',
        rumus: 'O',
        hasil: Optrede_3.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Optrede total',
        rumus: '',
        hasil: OptredeNT_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede Biasa',
        rumus: '',
        hasil: OptredeN_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede + 1cm',
        rumus: '',
        hasil: OptredeN1_3.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede - 1cm',
        rumus: '',
        hasil: Optrede1N_3.toRound(2),
        satuan: 'buah'),
  ];
}
void ListData2(){
  Data2 = [
    buatPDF(
        nama: 'Panjang Tangga',
        rumus: 'Pt',
        hasil: PanjangT_2.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Tangga',
        rumus: 'Tt',
        hasil: TinggiT_2.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Tangga',
        rumus: 'Lt',
        hasil: LebarT.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Sudut',
        rumus: 'a',
        hasil: Sudut_2.toRound(2),
        satuan: "°"),
    buatPDF(
        nama: 'Tebal Pelat Tangga',
        rumus: 'Ht',
        hasil: TebalPelatTanggaPilih_2.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Panjang Bordes',
        rumus: 'Pb',
        hasil: PanjangB_2.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Balok Bordes',
        rumus: 'Hbb',
        hasil: hB.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Balok Bordes',
        rumus: 'Lbb',
        hasil: bB.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tebal Pelat Bordes',
        rumus: 'Hb',
        hasil: TebalPelatBordesPilih_2.toRound(2),
        satuan: "cm"),
    buatPDF(
        nama: 'Antrede',
        rumus: 'A',
        hasil: Antrede_2.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Antrede total',
        rumus: '',
        hasil: AntredeNT_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede Biasa',
        rumus: '',
        hasil: AntredeN_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede + 1cm',
        rumus: '',
        hasil: AntredeN1_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede - 1cm',
        rumus: '',
        hasil: Antrede1N_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede',
        rumus: 'O',
        hasil: Optrede_2.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Optrede total',
        rumus: '',
        hasil: OptredeNT_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede Biasa',
        rumus: '',
        hasil: OptredeN_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede + 1cm',
        rumus: '',
        hasil: OptredeN1_2.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede - 1cm',
        rumus: '',
        hasil: Optrede1N_2.toRound(2),
        satuan: 'buah'),

  ];
}
void ListData3(){
  Data3 = [
    buatPDF(
        nama: 'Panjang Tangga',
        rumus: 'Pt',
        hasil: PanjangT_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Tangga',
        rumus: 'Tt',
        hasil: TinggiT_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Tangga',
        rumus: 'Lt',
        hasil: LebarT.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Sudut',
        rumus: 'a',
        hasil: Sudut_1.toRound(2),
        satuan: "°"),
    buatPDF(
        nama: 'Tebal Pelat Tangga',
        rumus: 'Ht',
        hasil: TebalPelatTanggaPilih_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Panjang Bordes',
        rumus: 'Pb',
        hasil: PanjangB_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tinggi Balok Bordes',
        rumus: 'Hbb',
        hasil: hB.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Lebar Balok Bordes',
        rumus: 'Lbb',
        hasil: bB.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Tebal Pelat Bordes',
        rumus: 'Hb',
        hasil: TebalPelatBordesPilih_1.toRound(2),
        satuan: "cm"),
    buatPDF(
        nama: 'Antrede',
        rumus: 'A',
        hasil: Antrede_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Antrede total',
        rumus: '',
        hasil: AntredeNT_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede Biasa',
        rumus: '',
        hasil: AntredeN_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede + 1cm',
        rumus: '',
        hasil: AntredeN1_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Antrede - 1cm',
        rumus: '',
        hasil: Antrede1N_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede',
        rumus: 'O',
        hasil: Optrede_1.toRound(2),
        satuan: 'cm'),
    buatPDF(
        nama: 'Optrede total',
        rumus: '',
        hasil: OptredeNT_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede Biasa',
        rumus: '',
        hasil: OptredeN_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede + 1cm',
        rumus: '',
        hasil: OptredeN1_1.toRound(2),
        satuan: 'buah'),
    buatPDF(
        nama: 'Optrede - 1cm',
        rumus: '',
        hasil: Optrede1N_1.toRound(2),
        satuan: 'buah'),

  ];
}
//analisis
void ListData4(){
  Data4 = [
    //input
    buatPDF(
        nama: 'Beton',
        rumus: '',
        hasil: beton.toRound(2),
        satuan: 'kN/m3'),
    buatPDF(
        nama: 'Keramik',
        rumus: '',
        hasil: keramik.toRound(2),
        satuan: 'kN/m3'),
    buatPDF(
        nama: 'Spesi',
        rumus: '',
        hasil: spesi.toRound(2),
        satuan: 'kN/m3'),
    buatPDF(
        nama: 'Hand Ralling',
        rumus: '',
        hasil: ralling.toRound(2),
        satuan: 'kN/m'),
    buatPDF(
        nama: 'Dinding',
        rumus: '',
        hasil: dinding.toRound(2),
        satuan: 'kN/m2'),
    //HIJ->DEF
    buatPDF(
        nama: 'Gaya Normal HI',
        rumus: 'N HI',
        hasil: NDE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal IH',
        rumus: 'N IH',
        hasil: NED.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser HI',
        rumus: 'S HI',
        hasil: SDE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser IH',
        rumus: 'S IH',
        hasil: SED.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen HI',
        rumus: 'MHIE',
        hasil: MDE.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen IH',
        rumus: 'M IH',
        hasil: -MED.toRound(2),
        satuan: 'kNm'),
    //IJ->EF
    buatPDF(
        nama: 'Gaya Normal IJ',
        rumus: 'N IJ',
        hasil: NEF.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal JI',
        rumus: 'N JI',
        hasil: NFE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser IJ',
        rumus: 'S IJ',
        hasil: SEF.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser JI',
        rumus: 'S JI',
        hasil: SFE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen IJ',
        rumus: 'M IJ',
        hasil: MEF.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen LIJ',
        rumus: 'M LIJ',
        hasil: -MLEF.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen JI',
        rumus: 'M JI',
        hasil: -MFE.toRound(2),
        satuan: 'kNm'),
  ];}
void ListData5(){
  Data5 = [
    // DEFG->GHIJ
    // DE->GH
    buatPDF(
        nama: 'Gaya Normal DE',
        rumus: 'N DE',
        hasil: NGH.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal ED',
        rumus: 'N ED',
        hasil: NHG.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser DE',
        rumus: 'S DE',
        hasil: SGH.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser ED',
        rumus: 'S ED',
        hasil: SHG.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen DE',
        rumus: 'M DE',
        hasil: MGH.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen ED',
        rumus: 'M ED',
        hasil: -MHG.toRound(2),
        satuan: 'kNm'),
    // EF->HI
    buatPDF(
        nama: 'Gaya Normal EF',
        rumus: 'N EF',
        hasil: NHI.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal FE',
        rumus: 'N FE',
        hasil: NIH.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser EF',
        rumus: 'S EF',
        hasil: SHI.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser FE',
        rumus: 'S FE',
        hasil: SIH.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen EF',
        rumus: 'M EF',
        hasil: MHI.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen LEF',
        rumus: 'M LEF',
        hasil: MLHI.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen FE',
        rumus: 'M FE',
        hasil: -MIH.toRound(2),
        satuan: 'kNm'),
    // FG->IJ
    buatPDF(
        nama: 'Gaya Normal FG',
        rumus: 'N FG',
        hasil: NIJ.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal GF',
        rumus: 'N GF',
        hasil: NJI.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser FG',
        rumus: 'S FG',
        hasil: SIJ.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser GF',
        rumus: 'S GF',
        hasil: SJI.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen FG',
        rumus: 'M FG',
        hasil: MIJ.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen GF',
        rumus: 'M GF',
        hasil: -MJI.toRound(2),
        satuan: 'kNm'),
  ];}
void ListData6(){
  Data6 = [
    buatPDF(
        nama: 'Gaya Normal AB',
        rumus: 'N AB',
        hasil: NAB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal BA',
        rumus: 'N BA',
        hasil: NBA.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser AB',
        rumus: 'S AB',
        hasil: SAB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser BA',
        rumus: 'S BA',
        hasil: SBA.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen AB',
        rumus: 'M AB',
        hasil: MAB.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen LAB',
        rumus: 'M LAB',
        hasil: MLAB.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen BA',
        rumus: 'M BA',
        hasil: -MBA.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Gaya Normal BC',
        rumus: 'N BC',
        hasil: NBC.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal CB',
        rumus: 'N CB',
        hasil: NCB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser BC',
        rumus: 'S BC',
        hasil: SBC.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser CB',
        rumus: 'S CB',
        hasil: SCB.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen BC',
        rumus: 'M BC',
        hasil: MBC.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen CB',
        rumus: 'M CB',
        hasil: -MCB.toRound(2),
        satuan: 'kNm'),
  ];}
//penulangan
void ListData7(){
  Data7 = [
    buatPDF(
        nama: 'Kuat Tekan Beton Tangga',
        rumus: "fc'",
        hasil: fc.toRound(2),
        satuan: 'Mpa'),
    buatPDF(
        nama: 'Kuat Tarik Baja Tangga',
        rumus: 'fy',
        hasil: fy.toRound(2),
        satuan: 'Mpa'),
    buatPDF(
        nama: 'Diameter Tulangan Utama Tangga',
        rumus: '',
        hasil: d.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Diameter Tulangan Pembagi Tangga',
        rumus: '',
        hasil: ds.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Tebal Selimut Tangga',
        rumus: '',
        hasil: Selimut.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Kuat Tekan Beton Balok',
        rumus: "fc'B",
        hasil: fcB.toRound(2),
        satuan: 'Mpa'),
    buatPDF(
        nama: 'Kuat Tarik Baja Balok',
        rumus: 'fyB',
        hasil: fyB.toRound(2),
        satuan: 'Mpa'),
    buatPDF(
        nama: 'Diameter Tulangan Utama Balok',
        rumus: '',
        hasil: d.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Diameter Tulangan Pembagi Balok',
        rumus: '',
        hasil: ds.toRound(2),
        satuan: 'mm'),
    buatPDF(
        nama: 'Tebal Selimut Balok',
        rumus: '',
        hasil: Selimut.toRound(2),
        satuan: 'mm'),
    //tulangan
    buatPDFT(
        nama: 'Balok H Tumpu',
        rumus: '',
        hasil: '$Stul_1 D-$Dtul_1',
        satuan: ''),
    buatPDFT(
        nama: 'Balok H Lapang',
        rumus: '',
        hasil: '$Stul_2 D-$Dtul_2',
        satuan: ''),
    buatPDFT(
        nama: 'Balok H Pembagi',
        rumus: '',
        hasil: 'D$Dtul_3-$Stul_3',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu HI',
        rumus: '',
        hasil: 'D$Dtul_4-$Stul_4',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu IH',
        rumus: '',
        hasil: 'D$Dtul_5-$Stul_5',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi HI',
        rumus: '',
        hasil: 'D$Dtul_6-$Stul_6',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu IJ',
        rumus: '',
        hasil: 'D$Dtul_7-$Stul_7',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu JI',
        rumus: '',
        hasil: 'D$Dtul_8-$Stul_8',
        satuan: ''),
    buatPDFT(
        nama: 'Lapang IJ',
        rumus: '',
        hasil: 'D$Dtul_9-$Stul_9',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi IJ',
        rumus: '',
        hasil: 'D$Dtul_10-$Stul_10',
        satuan: ''),
  ];}
void ListData8(){
  Data8 = [
    buatPDFT(
        nama: 'Balok D Tumpu',
        rumus: '',
        hasil: '$Stul_11 D-$Dtul_11',
        satuan: ''),
    buatPDFT(
        nama: 'Balok D Lapang',
        rumus: '',
        hasil: '$Stul_12 D-$Dtul_12',
        satuan: ''),
    buatPDFT(
        nama: 'Balok D Pembagi',
        rumus: '',
        hasil: 'D$Dtul_13-$Stul_13',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu DE',
        rumus: '',
        hasil: 'D$Dtul_14-$Stul_14',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu ED',
        rumus: '',
        hasil: 'D$Dtul_15-$Stul_15',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi DE',
        rumus: '',
        hasil: 'D$Dtul_16-$Stul_16',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu EF',
        rumus: '',
        hasil: 'D$Dtul_17-$Stul_17',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu FE',
        rumus: '',
        hasil: 'D$Dtul_18-$Stul_18',
        satuan: ''),
    buatPDFT(
        nama: 'Lapang EF',
        rumus: '',
        hasil: 'D$Dtul_19-$Stul_19',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi EF',
        rumus: '',
        hasil: 'D$Dtul_20-$Stul_20',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu FG',
        rumus: '',
        hasil: 'D$Dtul_21-$Stul_21',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu GF',
        rumus: '',
        hasil: 'D$Dtul_22-$Stul_22',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi FG',
        rumus: '',
        hasil: 'D$Dtul_23-$Stul_23',
        satuan: ''),
    buatPDFT(
        nama: 'Balok G Tumpu',
        rumus: '',
        hasil: '$Stul_24 D-$Dtul_24',
        satuan: ''),
    buatPDFT(
        nama: 'Balok G Lapang',
        rumus: '',
        hasil: '$Stul_25 D-$Dtul_25',
        satuan: ''),
    buatPDFT(
        nama: 'Balok G Pembagi',
        rumus: '',
        hasil: 'D$Dtul_26-$Stul_26',
        satuan: ''),
  ];}
void ListData9(){
  Data9 = [
    buatPDFT(
        nama: 'Tumpu AB',
        rumus: '',
        hasil: 'D$Dtul_27-$Stul_27',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu BA',
        rumus: '',
        hasil: 'D$Dtul_28-$Stul_28',
        satuan: ''),
    buatPDFT(
        nama: 'Lapang AB',
        rumus: '',
        hasil: 'D$Dtul_29-$Stul_29',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi AB',
        rumus: '',
        hasil: 'D$Dtul_30-$Stul_30',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu BC',
        rumus: '',
        hasil: 'D$Dtul_31-$Stul_31',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu CB',
        rumus: '',
        hasil: 'D$Dtul_32-$Stul_32',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi BC',
        rumus: '',
        hasil: 'D$Dtul_33-$Stul_33',
        satuan: ''),
    buatPDFT(
        nama: 'Balok C Tumpu',
        rumus: '',
        hasil: '$Stul_34 D-$Dtul_34',
        satuan: ''),
    buatPDFT(
        nama: 'Balok C Lapang',
        rumus: '',
        hasil: '$Stul_35 D-$Dtul_35',
        satuan: ''),
    buatPDFT(
        nama: 'Balok C Pembagi',
        rumus: '',
        hasil: 'D$Dtul_36-$Stul_36',
        satuan: ''),
  ];}

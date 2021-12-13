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
List Data7_1 = [];

void ListData1_1a(){}
void ListData2_1a(){}
void ListData3_1a(){}
void ListData4_1a(){}
void ListData5_1a(){}
void ListData6_1a(){}
void ListData7_1a(){}

//2
List Data1_2 = [];
List Data2_2 = [];
List Data3_2 = [];
List Data4_2 = [];
List Data5_2 = [];
List Data6_2 = [];
List Data7_2 = [];

void ListData1_2a(){}
void ListData2_2a(){}
void ListData3_2a(){}
void ListData4_2a(){}
void ListData5_2a(){}
void ListData6_2a(){}
void ListData7_2a(){}

//desain
void ListData1(){
  Data1 = [
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
void ListData2(){
  Data2 = [
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
void ListData3(){
  Data3 = [
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
    //DEF
    buatPDF(
        nama: 'Gaya Normal DE',
        rumus: 'N DE',
        hasil: NDE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal ED',
        rumus: 'N ED',
        hasil: NED.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser DE',
        rumus: 'S DE',
        hasil: SDE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser ED',
        rumus: 'S ED',
        hasil: SED.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen DE',
        rumus: 'M DE',
        hasil: MDE.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen ED',
        rumus: 'M ED',
        hasil: -MED.toRound(2),
        satuan: 'kNm'),
    //EF
    buatPDF(
        nama: 'Gaya Normal EF',
        rumus: 'N EF',
        hasil: NEF.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Normal FE',
        rumus: 'N FE',
        hasil: NFE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser EF',
        rumus: 'S EF',
        hasil: SEF.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Gaya Geser FE',
        rumus: 'S FE',
        hasil: SFE.toRound(2),
        satuan: 'kN'),
    buatPDF(
        nama: 'Momen EF',
        rumus: 'M EF',
        hasil: MEF.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen LEF',
        rumus: 'M LEF',
        hasil: -MLEF.toRound(2),
        satuan: 'kNm'),
    buatPDF(
        nama: 'Momen FE',
        rumus: 'M FE',
        hasil: -MFE.toRound(2),
        satuan: 'kNm'),

  ];}
void ListData4(){
  Data4 = [
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
void ListData5(){
  Data5 = [
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
    buatPDFT(
        nama: 'Balok D = C Tumpu',
        rumus: '',
        hasil: '$Stul_1 D-$Dtul_1',
        satuan: ''),
    buatPDFT(
        nama: 'Balok D = C Lapang',
        rumus: '',
        hasil: '$Stul_2 D-$Dtul_2',
        satuan: ''),
    buatPDFT(
        nama: 'Balok D = C Pembagi',
        rumus: '',
        hasil: 'D$Dtul_3-$Stul_3',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu DE',
        rumus: '',
        hasil: 'D$Dtul_4-$Stul_4',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu ED',
        rumus: '',
        hasil: 'D$Dtul_5-$Stul_5',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi DE',
        rumus: '',
        hasil: 'D$Dtul_6-$Stul_6',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu EF',
        rumus: '',
        hasil: 'D$Dtul_7-$Stul_7',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu FE',
        rumus: '',
        hasil: 'D$Dtul_8-$Stul_8',
        satuan: ''),
    buatPDFT(
        nama: 'Lapang EF',
        rumus: '',
        hasil: 'D$Dtul_9-$Stul_9',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi EF',
        rumus: '',
        hasil: 'D$Dtul_10-$Stul_10',
        satuan: ''),
  ];}
void ListData6(){
  Data6 = [
    buatPDFT(
        nama: 'Tumpu AB',
        rumus: '',
        hasil: 'D$Dtul_11-$Stul_11',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu BA',
        rumus: '',
        hasil: 'D$Dtul_12-$Stul_12',
        satuan: ''),
    buatPDFT(
        nama: 'Lapang AB',
        rumus: '',
        hasil: 'D$Dtul_13-$Stul_13',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi AB',
        rumus: '',
        hasil: 'D$Dtul_14-$Stul_14',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu BC',
        rumus: '',
        hasil: 'D$Dtul_15-$Stul_15',
        satuan: ''),
    buatPDFT(
        nama: 'Tumpu CB',
        rumus: '',
        hasil: 'D$Dtul_16-$Stul_16',
        satuan: ''),
    buatPDFT(
        nama: 'Pembagi BC',
        rumus: '',
        hasil: 'D$Dtul_17-$Stul_17',
        satuan: ''),

  ];}
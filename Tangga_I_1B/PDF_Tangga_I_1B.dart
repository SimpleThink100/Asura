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

//desain
void ListData1(){
  Data1 = [
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
void ListData2(){
  Data2 = [
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
void ListData3(){Data3 = [
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
      nama: 'Tumpu AB',
      rumus: '',
      hasil: 'D$Dtul_1-$Stul_1',
      satuan: ''),
  buatPDFT(
      nama: 'Lapang AB',
      rumus: '',
      hasil: 'D$Dtul_2-$Stul_2',
      satuan: ''),
  buatPDFT(
      nama: 'Tumpu BA',
      rumus: '',
      hasil: 'D$Dtul_3-$Stul_3',
      satuan: ''),
  buatPDFT(
      nama: 'Pembagi AB',
      rumus: '',
      hasil: 'D$Dtul_4-$Stul_4',
      satuan: ''),
  buatPDFT(
      nama: 'Tumpu BC',
      rumus: '',
      hasil: 'D$Dtul_5-$Stul_5',
      satuan: ''),
  buatPDFT(
      nama: 'Tumpu CB',
      rumus: '',
      hasil: 'D$Dtul_6-$Stul_6',
      satuan: ''),
  buatPDFT(
      nama: 'Pembagi BC',
      rumus: '',
      hasil: 'D$Dtul_7-$Stul_7',
      satuan: ''),
  buatPDFT(
      nama: 'Balok C Tumpu',
      rumus: '',
      hasil: '$Stul_8 D-$Dtul_8',
      satuan: ''),
  buatPDFT(
      nama: 'Balok C Lapang',
      rumus: '',
      hasil: '$Stul_9 D-$Dtul_9',
      satuan: ''),
  buatPDFT(
      nama: 'Balok C Pembagi',
      rumus: '',
      hasil: 'D$Dtul_10-$Stul_10',
      satuan: ''),
];}
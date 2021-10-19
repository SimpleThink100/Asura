import 'dart:io';
import 'dart:typed_data';
import 'package:charcode/charcode.dart';
import 'package:flutter/services.dart';

//variable save
//String NamaTabel;
int numtabel =0;
//Variabel R=rata N=jumlah T=total B=benar S=sisa
double n = 0;
double Optrede_1 = 0;
double OptredeR_1 = 0;
double OptredeNT_1 = 0;
double OptredeN_1 = 0;
double OptredeNR_1 = 0;
double OptredeN1_1 = 0;
double Optrede1N_1 = 0;
double OptredeB_1 = 0;
double OptredeS_1= 0 ;
double OptredeNB_1 = 0;
double OptredeNA_1 =0;
double Antrede_1 = 0;
double AntredeR_1 = 0;
double AntredeNT_1 = 0;
double AntredeN_1 = 0;
double AntredeNR_1 = 0;
double AntredeN1_1 = 0;
double Antrede1N_1 = 0;
double AntredeB_1 = 0;
double AntredeS_1 = 0;
double AntredeNB_1 = 0;
double AntredeNA_1 = 0;
double TinggiT_1 = 0;
double PanjangT_1 = 0;
double Sudut_1 = 0;
double LebarT = 0;

double Optrede_2 = 0;
double OptredeR_2 = 0;
double OptredeNT_2 = 0;
double OptredeN_2 = 0;
double OptredeNR_2 = 0;
double OptredeN1_2 = 0;
double Optrede1N_2 = 0;
double OptredeB_2 = 0;
double OptredeS_2= 0 ;
double OptredeNB_2 = 0;
double OptredeNA_2 =0;
double Antrede_2 = 0;
double AntredeR_2 = 0;
double AntredeNT_2 = 0;
double AntredeN_2 = 0;
double AntredeNR_2 = 0;
double AntredeN1_2 = 0;
double Antrede1N_2 = 0;
double AntredeB_2 = 0;
double AntredeS_2 = 0;
double AntredeNB_2 = 0;
double AntredeNA_2 = 0;
double TinggiT_2 = 0;
double PanjangT_2 = 0;
double Sudut_2 = 0;

double Optrede_3 = 0;
double OptredeR_3 = 0;
double OptredeNT_3 = 0;
double OptredeN_3 = 0;
double OptredeNR_3 = 0;
double OptredeN1_3 = 0;
double Optrede1N_3 = 0;
double OptredeB_3 = 0;
double OptredeS_3= 0 ;
double OptredeNB_3 = 0;
double OptredeNA_3 =0;
double Antrede_3 = 0;
double AntredeR_3 = 0;
double AntredeNT_3 = 0;
double AntredeN_3 = 0;
double AntredeNR_3 = 0;
double AntredeN1_3 = 0;
double Antrede1N_3 = 0;
double AntredeB_3 = 0;
double AntredeS_3 = 0;
double AntredeNB_3 = 0;
double AntredeNA_3 = 0;
double TinggiT_3 = 0;
double PanjangT_3 = 0;
double Sudut_3 = 0;

double PanjangTanggaMiring_1 = 0;
double PanjangB_1 = 0;
double LebarB_1 = 0;
double sina_1 = 0;
double cosa_1 = 0;

double PanjangTanggaMiring_2 = 0;
double PanjangB_2 = 0;
double LebarB_2 = 0;
double sina_2 = 0;
double cosa_2 = 0;

double PanjangTanggaMiring_3 = 0;
double PanjangB_3 = 0;
double LebarB_3 = 0;
double sina_3 = 0;
double cosa_3 = 0;

double TebalPelatTangga_1 = 0;
double TebalPelatTanggaPilih_1 = 0;
double TebalPelatBordes_1 = 0;
double TebalPelatBordesPilih_1 = 0;
double TinggiMiringAnakTangga_1 = 0;
double TinggiMiring5AnakTangga_1 = 0;
double TinggiMiringTangga_1 = 0;

double TebalPelatTangga_2 = 0;
double TebalPelatTanggaPilih_2 = 0;
double TebalPelatBordes_2 = 0;
double TebalPelatBordesPilih_2 = 0;
double TinggiMiringAnakTangga_2 = 0;
double TinggiMiring5AnakTangga_2 = 0;
double TinggiMiringTangga_2 = 0;

double TebalPelatTangga_3 = 0;
double TebalPelatTanggaPilih_3 = 0;
double TebalPelatBordes_3 = 0;
double TebalPelatBordesPilih_3 = 0;
double TinggiMiringAnakTangga_3 = 0;
double TinggiMiring5AnakTangga_3 = 0;
double TinggiMiringTangga_3 = 0;

double BeratSendiriTangga_1 = 0;
double BeratKeramikTangga_1 = 0;
double BeratSpesiTangga_1 = 0;
double BeratHandrailTangga_1 = 0;
double BebanMatiTangga_1 = 0;
double BebanHidupTangga_1 = 0;
double BebanTerfaktorTangga_1 = 0;

double BeratSendiriTangga_2 = 0;
double BeratKeramikTangga_2 = 0;
double BeratSpesiTangga_2 = 0;
double BeratHandrailTangga_2 = 0;
double BebanMatiTangga_2 = 0;
double BebanHidupTangga_2 = 0;
double BebanTerfaktorTangga_2 = 0;

double BeratSendiriTangga_3 = 0;
double BeratKeramikTangga_3 = 0;
double BeratSpesiTangga_3 = 0;
double BeratHandrailTangga_3 = 0;
double BebanMatiTangga_3 = 0;
double BebanHidupTangga_3 = 0;
double BebanTerfaktorTangga_3 = 0;

double BeratSendiriBordes_1 = 0;
double BeratKeramikBordes_1 = 0;
double BeratSpesiBordes_1 = 0;
double BeratHandrailBordes_1 = 0;
double BebanMatiBordes_1 = 0;
double BebanHidupBordes_1 = 0;
double BebanTerfaktorBordes_1 = 0;

double BeratSendiriBordes_2 = 0;
double BeratKeramikBordes_2 = 0;
double BeratSpesiBordes_2 = 0;
double BeratHandrailBordes_2 = 0;
double BebanMatiBordes_2 = 0;
double BebanHidupBordes_2 = 0;
double BebanTerfaktorBordes_2 = 0;

double BeratSendiriBordes_3 = 0;
double BeratKeramikBordes_3 = 0;
double BeratSpesiBordes_3 = 0;
double BeratHandrailBordes_3 = 0;
double BebanMatiBordes_3 = 0;
double BebanHidupBordes_3 = 0;
double BebanTerfaktorBordes_3 = 0;

//balok
double BeratBalok_1;
double BeratDinding_1;
double BeratPelat_1;
double wdbp_1;
double wlbp_1;
double wup_1;

double BeratBalok_2;
double BeratDinding_2;
double BeratPelat_2;
double wdbp_2;
double wlbp_2;
double wup_2;

double BeratBalok_3;
double BeratDinding_3;
double BeratPelat_3;
double wdbp_3;
double wlbp_3;
double wup_3;

//ABC
double Iab = 0;
double Ibc = 0;
double KAB = 0;
double KBC = 0;
double miuAB = 0;
double miuBC = 0;
double MaAB = 0;
double MaBA = 0;
double MaBC = 0;
double MaCB = 0;
double MbAB = 0;
double MbBA = 0;
double MbBC = 0;
double MbCB = 0;
double FHbAB = 0;
double FHbBA = 0;
double FHbBC = 0;
double FHbCB = 0;
double FVbAB = 0;
double FVbBA = 0;
double FVbBC = 0;
double FVbCB = 0;
double NAB = 0;
double NBA = 0;
double NBC = 0;
double NCB = 0;
double SAB = 0;
double SBA = 0;
double SBC = 0;
double SCB = 0;
double MAB = 0;
double MBA = 0;
double MBC = 0;
double MCB = 0;

//DEF
double Ide = 0;
double Ief = 0;
double KDE = 0;
double KEF = 0;
double miuDE = 0;
double miuEF = 0;
double MaDE = 0;
double MaED = 0;
double MaEF = 0;
double MaFE = 0;
double MbDE = 0;
double MbED = 0;
double MbEF = 0;
double MbFE = 0;
double FHbDE = 0;
double FHbED = 0;
double FHbEF = 0;
double FHbFE = 0;
double FVbDE = 0;
double FVbED = 0;
double FVbEF = 0;
double FVbFE = 0;
double NDE = 0;
double NED = 0;
double NEF = 0;
double NFE = 0;
double SDE = 0;
double SED = 0;
double SEF = 0;
double SFE = 0;
double MDE = 0;
double MED = 0;
double MEF = 0;
double MFE = 0;

//GHIJ
double NGH = 0;
double NHG = 0;
double NHI = 0;
double NIH = 0;
double NIJ = 0;
double NJI = 0;
double SGH = 0;
double SHG = 0;
double SHI = 0;
double SIH = 0;
double SIJ = 0;
double SJI = 0;
double MGH = 0;
double MHG = 0;
double MHI = 0;
double MIH = 0;
double MIJ = 0;
double MJI = 0;
double FHbGH = 0;
double FVbGH = 0;
double MaGH = 0;
double FHbJI = 0;
double FVbJI = 0;
double MaJI = 0;

double fy = 0;
double fc = 0;
double Selimut = 0;
double d = 0;
double ds = 0;

double JAB = 0;
double JBA = 0;
double MLAB = 0;

double JFE = 0;
double JEF = 0;
double MLEF = 0;

double JHI = 0;
double JIH = 0;
double MLHI = 0;

//balok
double fcB=0;
double fyB=0;
double selimutB=0;
double dB = 0;
double dsB = 0;

//analisis
double A=0;
double I=0;
double L=0;

//OutputGambar
double SGT_1;
double SGBa_1;
double SGBb_1;

double SGT_2;
double SGBa_2;
double SGBb_2;

double SGT_3;
double SGBa_3;
double SGBb_3;

double NBTa_1;
double NBLa_1;
double JBGa_1;
double JBGmina_1;

double NBTb_1;
double NBLb_1;
double JBGb_1;
double JBGminb_1;

double NBTa_2;
double NBLa_2;
double JBGa_2;
double JBGmina_2;

double NBTb_2;
double NBLb_2;
double JBGb_2;
double JBGminb_2;

double NBTa_3;
double NBLa_3;
double JBGa_3;
double JBGmina_3;

double NBTb_3;
double NBLb_3;
double JBGb_3;
double JBGminb_3;

//output
String Stul_1;
String Dtul_1;
String Syarat_1;
String Stul_2;
String Dtul_2;
String Syarat_2;
String Stul_3;
String Dtul_3;
String Syarat_3;
String Stul_4;
String Dtul_4;
String Syarat_4;
String Stul_5;
String Dtul_5;
String Syarat_5;
String Stul_6;
String Dtul_6;
String Syarat_6;
String Stul_7;
String Dtul_7;
String Syarat_7;
String Stul_8;
String Dtul_8;
String Syarat_8;
String Stul_9;
String Dtul_9;
String Syarat_9;
String Stul_10;
String Dtul_10;
String Syarat_10;
String Stul_11;
String Dtul_11;
String Syarat_11;
String Stul_12;
String Dtul_12;
String Syarat_12;
String Stul_13;
String Dtul_13;
String Syarat_13;
String Stul_14;
String Dtul_14;
String Syarat_14;
String Stul_15;
String Dtul_15;
String Syarat_15;
String Stul_16;
String Dtul_16;
String Syarat_16;
String Stul_17;
String Dtul_17;
String Syarat_17;
String Stul_18;
String Dtul_18;
String Syarat_18;
String Stul_19;
String Dtul_19;
String Syarat_19;
String Stul_20;
String Dtul_20;
String Syarat_20;
String Stul_21;
String Dtul_21;
String Syarat_21;
String Stul_22;
String Dtul_22;
String Syarat_22;
String Stul_23;
String Dtul_23;
String Syarat_23;
String Stul_24;
String Dtul_24;
String Syarat_24;
String Stul_25;
String Dtul_25;
String Syarat_25;
String Stul_26;
String Dtul_26;
String Syarat_26;
String Stul_27;
String Dtul_27;
String Syarat_27;
String Stul_28;
String Dtul_28;
String Syarat_28;
String Stul_29;
String Dtul_29;
String Syarat_29;
String Stul_30;
String Dtul_30;
String Syarat_30;
String Stul_31;
String Dtul_31;
String Syarat_31;
String Stul_32;
String Dtul_32;
String Syarat_32;
String Stul_33;
String Dtul_33;
String Syarat_33;
String Stul_34;
String Dtul_34;
String Syarat_34;
String Stul_35;
String Dtul_35;
String Syarat_35;
String Stul_36;
String Dtul_36;
String Syarat_36;
String Stul_37;
String Dtul_37;
String Syarat_37;
String Stul_38;
String Dtul_38;
String Syarat_38;
String Stul_39;
String Dtul_39;
String Syarat_39;
String Stul_40;
String Dtul_40;
String Syarat_40;


ByteData PdfGambar1;
ByteData PdfGambar2;
ByteData PdfGambar3;
ByteData PdfGambar4;
ByteData PdfGambar5;
ByteData PdfGambar6;
ByteData PdfGambar7;

List PdfData1 = [];
List PdfData2 = [];
List PdfData3 = [];
List PdfData4 = [];
List PdfData5 = [];
List PdfData6 = [];
List PdfData7 = [];
List PdfData8 = [];
List PdfData9 = [];
List PdfData10 = [];
List PdfData11 = [];
List PdfData12 = [];


List PdfDatan = [];

String Alpha =String.fromCharCode($alpha);
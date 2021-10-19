import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:perancangan_tangga_app/Main/pdf_api.darf.dart';
import 'package:perancangan_tangga_app/Main/Variable.dart';
import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';
import 'package:linalg/linalg.dart';

//setting
String settingSatuan = "cm";
String UkuranTangga = "Sama";
String settingPembagiAntrede = "1 cm";
String settingPembagiOptrede = "1 cm";

// variabelsimpan
int ProjekN = 1;

String TanggalString;
double M = 0;
double MV = 1;

double beton = 24;
double keramik = 0.24;
double spesi = 0.21;
double ralling = 0.2;
double dinding = 2.5;

double hB;

double bB;

double LebarCanvas = 320;
double TinggiCanvasa = 0;
double TinggiCanvasb = 0;
double TinggiCanvasc = 0;
double TinggiCanvasm_1=0;
double TinggiCanvasm_2=0;
double TinggiCanvasm_3=0;
double TinggiCanvasG_1 = 0;
double TinggiCanvasG_2 = 0;
double TinggiCanvasG_3 = 0;
double TinggiCanvasG_4 = 0;
double TinggiCanvasG_5 = 0;
double TinggiCanvasG_6 = 0;
double TinggiCanvasG_7 = 0;
double TinggiCanvasG_8 = 0;
double TinggiCanvasG_9 = 0;
double TinggiCanvasG_10 = 0;
double TinggiCanvasG_11= 0;
double TinggiCanvasG_12 = 0;
double TinggiCanvasG_13 = 0;

double TinggiCanvasD_1 = 0;
double TinggiCanvasD_2 = 0;
double TinggiCanvasD_3 = 0;
double TinggiCanvasD_4 = 0;
double TinggiCanvasD_5 = 0;
double TinggiCanvasD_6 = 0;
double TinggiCanvasD_7 = 0;
double TinggiCanvasD_8 = 0;
double TinggiCanvasD_9 = 0;

double JA = 20; //jarak awal
double JB = 40; //jarak bawah
double JK = 10; //jarak
double PembagiAntrede = 1;
double PembagiOptrede = 1;

// variabel keterangan
String Ket33;
String Ket35;
String Ket36;
String Ket38;
String Ket39;
String Ket311;
String Ket333;
String Ket355;
String Ket366;
String Ket388;
String Ket399;
String Ket3111;
String Ket3333;
String Ket3553;
String Ket3663;
String Ket3883;
String Ket3993;
String Ket31113;

RegExp regex = RegExp(r"([.]*0)(?!.*\d)");

//Tangga I
extension Ex on double {
  double toRound(int n) => double.parse(toStringAsFixed(n)); //pembulatan
  String toText() => toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
  double toMirror(double M, double MV) => M + this * MV; //mirror gambar
  double toNaN() => this.isNaN ? 0 : this;

//tangga I
  double toT_I_a() => this * 1 / PanjangT_1 * 250; //panjang tangga + 1 keterangan
  double toT_I_b() => this * 1 / PanjangT_1 * 250; //gambar 2

  double toM_I_a() => this * 1 / PanjangT_1 * 250;

  double toG_I_a() => this * 1 / PanjangT_1 * 250; //gambar pdf1
  double toG_I_b() => this * 1 / Antrede_1 * 25; //gambar pdf2
  double toG_I_c() => this * 1 / PanjangT_1 * 180; //gambar pdf3
 // double toG_I_d() => this * 1 / PanjangT_1 * 180; //gambar pdf3
  double toG_I_e() => this * 1 / PanjangT_1 * 220; //gambar pdf3
  double toG_I_f() => this * 1 / PanjangT_1 * 220; //gambar pdf3
  double toG_I_g() => this * 1 / PanjangT_1 * 220; //gambar pdf3

  double toD_I_a() => this * 1 / PanjangT_1 * 250; //gambar pdf3

  //Tangga I_1B
  double toT_I_1B_a() => this * 1 / (PanjangT_1 + PanjangB_1) * 250; //gambar 1
  double toT_I_1B_b() => this * 1 / (PanjangT_1 + PanjangB_1) * 250; //gambar 2

  double toM_I_1B_a() => this * 1 / (PanjangT_1 + PanjangB_1) * 250; //gambar 1

  double toG_I_1B_a() => this * 1 / (PanjangT_1 + PanjangB_1) * 250; //gambar 1
  double toG_I_1B_b() =>  this * 1 / Antrede_1 * 25; //gambar pdf2
  double toG_I_1B_c() => this * 1 / (PanjangT_1 + PanjangB_1) * 180; //gambar 2
  //double toG_I_1B_d() => this * 1 / (PanjangT_1 + PanjangB_1) * 250; //gambar 2
  double toG_I_1B_e() => this * 1 / (PanjangT_1 + PanjangB_1) * 200; //gambar 2
  double toG_I_1B_f() => this * 1 / (PanjangT_1 + PanjangB_1) * 200; //gambar 2
  double toG_I_1B_g() => this * 1 / (PanjangT_1 + PanjangB_1) * 200; //gambar 2
  //diameter
  double toD_I_1B_a() => this * 1 / (PanjangT_1 + PanjangB_1) * 230; //gambar 1
  double toD_I_1B_b() => this * 1 / (bB) * 55; //gambar 1

  //TanggaL
  double toT_L_a() => this * 1 /
      (PanjangT_1 > PanjangT_2 ? PanjangT_1 + LebarT : PanjangT_2 + LebarT+PanjangB_2) * 250; //gambar 1
  double toT_L_b() => this * 1 / ( PanjangT_2 + LebarT+PanjangB_2) * 250; //gambar 2

  double toM_L_a() => this * 1 / (PanjangT_2 + LebarT+PanjangB_2) * 250;//gambar pdf 1
  double toM_L_b() => this * 1 / (PanjangT_1 + LebarT) * 250;//gambar pdf 1

  double toG_L_a() => this * 1 / (PanjangT_2 + LebarT+PanjangB_2) * 250;//gambar pdf 1
  // atas
  double toG_L_b() => this * 1 / (Antrede_2) * 25;//gambar pdf 2
  double toG_L_c() => this * 1 / (PanjangT_2 + PanjangB_1+PanjangB_2) * 180;//gambar pdf 3
  //double toG_L_d() => this * 1 / (PanjangT_2 + PanjangB_1+PanjangB_2) * 200;//gambar pdf 4
  double toG_L_e() => this * 1 / (PanjangT_2 + PanjangB_1+PanjangB_2) * 200;//gambar pdf 5
  double toG_L_f() => this * 1 / (PanjangT_2 + PanjangB_1+PanjangB_2) * 200;//gambar pdf 6
  double toG_L_g() => this * 1 / (PanjangT_2 + PanjangB_1+PanjangB_2) * 200;//gambar pdf 7
  //bawah
  double toG_L_h() => this * 1 / (Antrede_1) * 25;//gambar pdf 8
  double toG_L_i() => this * 1 / (PanjangT_1 + LebarT) * 180;//gambar pdf 9
  //double toG_L_j() => this * 1 / (PanjangT_1 + LebarT) * 250;//gambar pdf 10
  double toG_L_k() => this * 1 / (PanjangT_1 + LebarT) * 200;//gambar pdf 11
  double toG_L_l() => this * 1 / (PanjangT_1 + LebarT) * 200;//gambar pdf 12
  double toG_L_m() => this * 1 / (PanjangT_1 + LebarT) * 200;//gambar pdf 13
  //diameter
  double toD_L_a() => this * 1 / (PanjangT_2 + LebarT+PanjangB_2) * 240;//gambar pdf 13
  double toD_L_b() => this * 1 / (bB) * 55; //gambar 1
  double toD_L_c() => this * 1 /  (bB) * 55;//gambar pdf 13
  double toD_L_d() => this * 1 / (PanjangT_1 + LebarT) * 200;//gambar pdf 13
  double toD_L_e() => this * 1 /  (bB) * 55;//gambar pdf 13

  //Tangga U_1B
  double toT_U_1B_a() =>
      this * 1 / ([PanjangT_2, PanjangT_2].reduce(max) + LebarB_1) * 220; //gambar 1
  double toT_U_1B_b() =>
      this * 1 / ([PanjangT_2, PanjangT_2].reduce(max) + LebarB_1) * 220; //gambar 2
  double toG_U_1B_a() => this * 1 / (PanjangT_2 + LebarB_1) * 220; //gambar pdf 1
  //atas
  double toG_U_1B_b() => this * 1 / (Antrede_2) * 25; //gambar pdf 2
  double toG_U_1B_c() => this * 1 / (PanjangT_2 + LebarB_1) * 180; //gambar pdf 11
  //double toG_U_1B_d() => this * 1 / (PanjangT_1 + LebarB_1) * 220; //gambar pdf 11
  double toG_U_1B_e() => this * 1 / (PanjangT_2 + LebarB_1) * 180; //gambar pdf 11
  double toG_U_1B_f() => this * 1 / (PanjangT_2 + LebarB_1) * 180; //gambar pdf 11
  double toG_U_1B_g() => this * 1 / (PanjangT_2 + LebarB_1) * 180; //gambar pdf 11
 //bawah
  double toG_U_1B_h() => this * 1 / (Antrede_1) * 25; //gambar pdf 21
  double toG_U_1B_i() => this * 1 / (PanjangT_1 + LebarB_1) * 180; //gambar pdf 22
 // double toG_U_1B_j() => this * 1 / (PanjangT_2 + LebarB_1) * 220; //gambar pdf 23
  double toG_U_1B_k() => this * 1 / (PanjangT_1 + LebarB_1) * 180; //gambar pdf 24
  double toG_U_1B_l() => this * 1 / (PanjangT_1 + LebarB_1) * 180; //gambar pdf 25
  double toG_U_1B_m() => this * 1 / (PanjangT_1 + LebarB_1) * 180; //gambar pdf 26
  //diameter
  double toD_U_1B_a()=> this * 1 / (PanjangT_2 + LebarB_1) * 240; //gambar pdf 24
  double toD_U_1B_b()=> this * 1 / (PanjangT_1 + LebarB_1) * 220; //gambar pdf 24
  double toD_U_1B_c()=>  this * 1 /  (bB) * 55;//gambar pdf 13

  //Tangga U_2B
  double toT_U_2B_a() => this * 1 /
      ([PanjangT_1, PanjangT_2, PanjangT_3].reduce(max) + LebarT) * 220; //gambar 1
  double toT_U_2B_b() => this * 1 /
      ([PanjangT_1, PanjangT_2, PanjangT_3].reduce(max) + LebarT) * 220; //gambar 2
  double toG_U_2B_aa() => this * 1 /
      ([PanjangT_1, PanjangT_2, PanjangT_3].reduce(max) + LebarT) * 220; //gambar pdf1
  double toG_U_2B_ab() => this * 1 /
      ([PanjangT_1, PanjangT_2, PanjangT_3].reduce(max) + LebarT) * 220; //gambar pdf11
//atas
  double toG_U_2B_b() => this * 1 / (Antrede_3) * 25; //gambar pdf12
  double toG_U_2B_c() => this * 1 / (PanjangT_3 + LebarT) * 180; //gambar pdf13
  //double toG_U_2B_d() => this * 1 / (PanjangT_3 + LebarT) * 180; //gambar pdf14
  double toG_U_2B_e() => this * 1 / (PanjangT_3 + LebarT) * 180; //gambar pdf15
  double toG_U_2B_f() => this * 1 / (PanjangT_3 + LebarT) * 180; //gambar pdf16
  double toG_U_2B_g() => this * 1 / (PanjangT_3 + LebarT) * 180; //gambar pdf17
//tengah
  double toG_U_2B_h() => this * 1 / (Antrede_2) * 25; //gambar pdf21
  double toG_U_2B_i() => this * 1 / (PanjangT_2 + LebarT) * 150; //gambar pdf22
  //double toG_U_2B_j() => this * 1 / (PanjangT_2 + LebarT) * 150; //gambar pdf23
  double toG_U_2B_k() => this * 1 / (PanjangT_2 + LebarT) * 150; //gambar pdf24
  double toG_U_2B_l() => this * 1 / (PanjangT_2 + LebarT) * 150; //gambar pdf25
  double toG_U_2B_m() => this * 1 / (PanjangT_2 + LebarT) * 150; //gambar pdf26
//bawah
  double toG_U_2B_n() => this * 1 / (Antrede_1) * 25; //gambar pdf27
  double toG_U_2B_o() => this * 1 / (PanjangT_1 + LebarT) * 180; //gambar pdf31
  //double toG_U_2B_p() => this * 1 / (PanjangT_1 + LebarT) * 180; //gambar pdf32
  double toG_U_2B_q() => this * 1 / (PanjangT_1 + LebarT) * 180; //gambar pdf33
  double toG_U_2B_r() => this * 1 / (PanjangT_1 + LebarT) * 180; //gambar pdf34
  double toG_U_2B_s() => this * 1 / (PanjangT_1 + LebarT) * 180; //gambar pdf35
//diameter
  double toD_U_2B_a()=> this * 1 / (PanjangT_3 + LebarB_2) * 240; //gambar pdf 24
  double toD_U_2B_b()=>  this * 1 /  (bB) * 55;//gambar pdf 13
  double toD_U_2B_c()=> this * 1 / (PanjangT_2 + LebarB_1+LebarB_2) * 240; //gambar pdf 24
  double toD_U_2B_d()=>  this * 1 /  (bB) * 55;//gambar pdf 13
  double toD_U_2B_e()=>  this * 1 /  (bB) * 55;//gambar pdf 13
  double toD_U_2B_f()=> this * 1 / (PanjangT_1 + LebarB_1) * 220; //gambar pdf 24
  double toD_U_2B_g()=>  this * 1 /  (bB) * 55;//gambar pdf 13

}

class matrik {
  double Fxi_1;
  double Fyi_1;
  double Mi_1;
  double Fxj_1;
  double Fyj_1;
  double Mj_1;
  double Fxi_2;
  double Fyi_2;
  double Mi_2;
  double Fxj_2;
  double Fyj_2;
  double Mj_2;
  double Fxi_3;
  double Fyi_3;
  double Mi_3;
  double Fxj_3;
  double Fyj_3;
  double Mj_3;
  double Rxi;
  double Ryi;
  double Rmi;
  double Rxj;
  double Ryj;
  double Rmj;

  Hitung2({
    double A_1,
    double A_2,
    double E_1,
    double E_2,
    double I_1,
    double I_2,
    double xi_1,
    double yi_1,
    double xj_1,
    double yj_1,
    double xi_2,
    double yi_2,
    double xj_2,
    double yj_2,
    double Gx_1,
    double Gy_1,
    double Gm_1,
    double Gx_2,
    double Gy_2,
    double Gm_2,
    double Gx_3,
    double Gy_3,
    double Gm_3,
    double Q_1,
    double Q_2,
  }) {
    //input
    // batang 1
    final L_1 = sqrt(pow(xj_1 - xi_1, 2) + pow(yj_1 - yi_1, 2));
    final cos_1 = (xj_1 - xi_1) / L_1;
    final sin_1 = (yj_1 - yi_1) / L_1;
    final AE_1 = A_1 * E_1 / L_1;
    final x12EI_1 = 12 * E_1 * I_1 / pow(L_1, 3);
    final x6EI_1 = 6 * E_1 * I_1 / pow(L_1, 2);
    final x4EI_1 = 4 * E_1 * I_1 / pow(L_1, 1);
    final x2EI_1 = 2 * E_1 * I_1 / pow(L_1, 1);

    final FEMxi_1 = Q_1 * sin_1 * L_1 / 2;
    final FEMyi_1 = Q_1 * cos_1 * L_1 / 2;
    final FEMmi_1 = Q_1 * cos_1 * L_1 * L_1 / 12;
    final FEMxj_1 = Q_1 * sin_1 * L_1 / 2;
    final FEMyj_1 = Q_1 * cos_1 * L_1 / 2;
    final FEMmj_1 = -Q_1 * cos_1 * L_1 * L_1 / 12;

    // batang 2
    final L_2 = sqrt(pow(xj_2 - xi_2, 2) + pow(yj_2 - yi_2, 2));
    final cos_2 = (xj_2 - xi_2) / L_2;
    final sin_2 = (yj_2 - yi_2) / L_2;
    final AE_2 = A_2 * E_2 / L_2;
    final x12EI_2 = 12 * E_2 * I_2 / pow(L_2, 3);
    final x6EI_2 = 6 * E_2 * I_2 / pow(L_2, 2);
    final x4EI_2 = 4 * E_2 * I_2 / pow(L_2, 1);
    final x2EI_2 = 2 * E_2 * I_2 / pow(L_2, 1);
    final FEMmi_2 = Q_2 * cos_2 * L_2 * L_2 / 12;
    final FEMmj_2 = -Q_2 * cos_2 * L_2 * L_2 / 12;
    final FEMxi_2 = Q_2 * sin_2 * L_2 / 2;
    final FEMxj_2 = Q_2 * sin_2 * L_2 / 2;
    final FEMyi_2 = Q_2 * cos_2 * L_2 / 2;
    final FEMyj_2 = Q_2 * cos_2 * L_2 / 2;

    //make matrik
    //..transformasi
    final T_1 = Matrix([
      [cos_1, sin_1, 0, 0, 0, 0],
      [-sin_1, cos_1, 0, 0, 0, 0],
      [0, 0, 1, 0, 0, 0],
      [0, 0, 0, cos_1, sin_1, 0],
      [0, 0, 0, -sin_1, cos_1, 0],
      [0, 0, 0, 0, 0, 1],
    ]);
    final TT_1 = T_1.transpose();

    final T_2 = Matrix([
      [cos_2, sin_2, 0, 0, 0, 0],
      [-sin_2, cos_2, 0, 0, 0, 0],
      [0, 0, 1, 0, 0, 0],
      [0, 0, 0, cos_2, sin_2, 0],
      [0, 0, 0, -sin_2, cos_2, 0],
      [0, 0, 0, 0, 0, 1],
    ]);

    final TT_2 = T_2.transpose();
    //..Matrik stifnes
    final Matrix K_1 = Matrix([
      [AE_1, 0, 0, -AE_1, 0, 0],
      [0, x12EI_1, x6EI_1, 0, -x12EI_1, x6EI_1],
      [0, x6EI_1, x4EI_1, 0, -x6EI_1, x2EI_1],
      [-AE_1, 0, 0, AE_1, 0, 0],
      [0, -x12EI_1, -x6EI_1, 0, x12EI_1, -x6EI_1],
      [0, x6EI_1, x2EI_1, 0, -x6EI_1, x4EI_1],
    ]);

    final Kg_1 = (TT_1 * K_1) * T_1;

    final Matrix K_2 = Matrix([
      [AE_2, 0, 0, -AE_2, 0, 0],
      [0, x12EI_2, x6EI_2, 0, -x12EI_2, x6EI_2],
      [0, x6EI_2, x4EI_2, 0, -x6EI_2, x2EI_2],
      [-AE_2, 0, 0, AE_2, 0, 0],
      [0, -x12EI_2, -x6EI_2, 0, x12EI_2, -x6EI_2],
      [0, x6EI_2, x2EI_2, 0, -x6EI_2, x4EI_2],
    ]);
    final Kg_2 = (TT_2 * K_2) * T_2;

    //..fem
    final fem_1 = Matrix([
      [FEMxi_1],
      [FEMyi_1],
      [FEMmi_1],
      [FEMxj_1],
      [FEMyj_1],
      [FEMmj_1],
    ]);

    final femg_1 = TT_1 * fem_1;

    final fem_2 = Matrix([
      [FEMxi_2],
      [FEMyi_2],
      [FEMmi_2],
      [FEMxj_2],
      [FEMyj_2],
      [FEMmj_2],
    ]);

    final femg_2 = TT_2 * fem_2;
    final FEM = Matrix([
      [femg_1[3][0] + femg_2[0][0]],
      [femg_1[4][0] + femg_2[1][0]],
      [femg_1[5][0] + femg_2[2][0]],
    ]);
    final FEMT = Matrix([
      [femg_1[0][0]],
      [femg_1[1][0]],
      [femg_1[2][0]],
      [femg_2[3][0]],
      [femg_2[4][0]],
      [femg_2[5][0]],
    ]);

    final GAYA = Matrix([
      [Gx_2],
      [Gy_2],
      [Gm_2],
    ]);

    //pengambilan nilai dan pembuatan matrik baru
    final kgc_1 = Matrix([
      [Kg_1[3][3], Kg_1[3][4], Kg_1[3][5]],
      [Kg_1[4][3], Kg_1[4][4], Kg_1[4][5]],
      [Kg_1[5][3], Kg_1[5][4], Kg_1[5][5]],
    ]);
    final kgc_2 = Matrix([
      [Kg_2[0][0], Kg_2[0][1], Kg_2[0][2]],
      [Kg_2[1][0], Kg_2[1][1], Kg_2[1][2]],
      [Kg_2[2][0], Kg_2[2][1], Kg_2[2][2]],
    ]);
    final Matrix K = kgc_1 + kgc_2;

    //menghitung Displacement
    final D = K.inverse() * (GAYA - FEM);

    final tumpuc = Matrix([
      [Kg_1[0][3], Kg_1[0][4], Kg_1[0][5]],
      [Kg_1[1][3], Kg_1[1][4], Kg_1[1][5]],
      [Kg_1[2][3], Kg_1[2][4], Kg_1[2][5]],
      [Kg_2[3][0], Kg_2[3][1], Kg_2[3][2]],
      [Kg_2[4][0], Kg_2[4][1], Kg_2[4][2]],
      [Kg_2[5][0], Kg_2[5][1], Kg_2[5][2]],
    ]);

    final Tumpu = tumpuc * D + FEMT;

    final D_1 = Matrix([
      [0],
      [0],
      [0],
      [D[0][0]],
      [D[1][0]],
      [D[2][0]],
    ]);

    final D_2 = Matrix([
      [D[0][0]],
      [D[1][0]],
      [D[2][0]],
      [0],
      [0],
      [0],
    ]);

    //menghitung gaya tiap member
    //..1
    final f_1 = T_1 * Kg_1 * D_1 + fem_1;
    final f_2 = T_2 * Kg_2 * D_2 + fem_2;

    Fxi_1 = f_1[0][0];
    Fyi_1 = f_1[1][0];
    Mi_1 = f_1[2][0];
    Fxj_1 = f_1[3][0];
    Fyj_1 = f_1[4][0];
    Mj_1 = f_1[5][0];
    Fxi_2 = f_2[0][0];
    Fyi_2 = f_2[1][0];
    Mi_2 = f_2[2][0];
    Fxj_2 = f_2[3][0];
    Fyj_2 = f_2[4][0];
    Mj_2 = f_2[5][0];
    Rxi = Tumpu[0][0];
    Ryi = Tumpu[1][0];
    Rmi = Tumpu[2][0];
    Rxj = Tumpu[3][0];
    Ryj = Tumpu[4][0];
    Rmj = Tumpu[5][0];
  }

  Hitung3({
    double A_1,
    double A_2,
    double A_3,
    double I_1,
    double I_2,
    double I_3,
    double E_1,
    double E_2,
    double E_3,
    double xi_1,
    double yi_1,
    double xj_1,
    double yj_1,
    double xi_2,
    double yi_2,
    double xj_2,
    double yj_2,
    double xi_3,
    double yi_3,
    double xj_3,
    double yj_3,
    double Gx_1,
    double Gy_1,
    double Gm_1,
    double Gx_2,
    double Gy_2,
    double Gm_2,
    double Gx_3,
    double Gy_3,
    double Gm_3,
    double Gx_4,
    double Gy_4,
    double Gm_4,
    double Q_1,
    double Q_2,
    double Q_3,
  }) {
    //input
    // batang 1
    final L_1 = sqrt(pow(xj_1 - xi_1, 2) + pow(yj_1 - yi_1, 2));
    final cos_1 = (xj_1 - xi_1) / L_1;
    final sin_1 = (yj_1 - yi_1) / L_1;
    final AE_1 = A_1 * E_1 / L_1;
    final x12EI_1 = 12 * E_1 * I_1 / pow(L_1, 3);
    final x6EI_1 = 6 * E_1 * I_1 / pow(L_1, 2);
    final x4EI_1 = 4 * E_1 * I_1 / pow(L_1, 1);
    final x2EI_1 = 2 * E_1 * I_1 / pow(L_1, 1);

    final FEMmi_1 = Q_1 * cos_1 * L_1 * L_1 / 12;
    final FEMmj_1 = -Q_1 * cos_1 * L_1 * L_1 / 12;
    final FEMxi_1 = Q_1 * sin_1 * L_1 / 2;
    final FEMxj_1 = Q_1 * sin_1 * L_1 / 2;
    final FEMyi_1 = Q_1 * cos_1 * L_1 / 2;
    final FEMyj_1 = Q_1 * cos_1 * L_1 / 2;

    // batang 2
    final L_2 = sqrt(pow(xj_2 - xi_2, 2) + pow(yj_2 - yi_2, 2));
    final cos_2 = (xj_2 - xi_2) / L_2;
    final sin_2 = (yj_2 - yi_2) / L_2;
    final AE_2 = A_2 * E_2 / L_2;
    final x12EI_2 = 12 * E_2 * I_2 / pow(L_2, 3);
    final x6EI_2 = 6 * E_2 * I_2 / pow(L_2, 2);
    final x4EI_2 = 4 * E_2 * I_2 / pow(L_2, 1);
    final x2EI_2 = 2 * E_2 * I_2 / pow(L_2, 1);
    final FEMmi_2 = Q_2 * cos_2 * L_2 * L_2 / 12;
    final FEMmj_2 = -Q_2 * cos_2 * L_2 * L_2 / 12;
    final FEMxi_2 = Q_2 * sin_2 * L_2 / 2;
    final FEMxj_2 = Q_2 * sin_2 * L_2 / 2;
    final FEMyi_2 = Q_2 * cos_2 * L_2 / 2;
    final FEMyj_2 = Q_2 * cos_2 * L_2 / 2;

    // batang 3
    final L_3 = sqrt(pow(xj_3 - xi_3, 2) + pow(yj_3 - yi_3, 2));
    final cos_3 = (xj_3 - xi_3) / L_3;
    final sin_3 = (yj_3 - yi_3) / L_3;
    final AE_3 = A_3 * E_3 / L_3;
    final x12EI_3 = 12 * E_3 * I_3 / pow(L_3, 3);
    final x6EI_3 = 6 * E_3 * I_3 / pow(L_3, 2);
    final x4EI_3 = 4 * E_3 * I_3 / pow(L_3, 1);
    final x2EI_3 = 2 * E_3 * I_3 / pow(L_3, 1);
    final FEMmi_3 = Q_3 * cos_3 * L_3 * L_3 / 12;
    final FEMmj_3 = -Q_3 * cos_3 * L_3 * L_3 / 12;
    final FEMxi_3 = Q_3 * sin_3 * L_3 / 2;
    final FEMxj_3 = Q_3 * sin_3 * L_3 / 2;
    final FEMyi_3 = Q_3 * cos_3 * L_3 / 2;
    final FEMyj_3 = Q_3 * cos_3 * L_3 / 2;

    //make matrik
    //..transformasi
    final T_1 = Matrix([
      [cos_1, sin_1, 0, 0, 0, 0],
      [-sin_1, cos_1, 0, 0, 0, 0],
      [0, 0, 1, 0, 0, 0],
      [0, 0, 0, cos_1, sin_1, 0],
      [0, 0, 0, -sin_1, cos_1, 0],
      [0, 0, 0, 0, 0, 1],
    ]);
    final TT_1 = T_1.transpose();

    final T_2 = Matrix([
      [cos_2, sin_2, 0, 0, 0, 0],
      [-sin_2, cos_2, 0, 0, 0, 0],
      [0, 0, 1, 0, 0, 0],
      [0, 0, 0, cos_2, sin_2, 0],
      [0, 0, 0, -sin_2, cos_2, 0],
      [0, 0, 0, 0, 0, 1],
    ]);

    final TT_2 = T_2.transpose();
    final T_3 = Matrix([
      [cos_3, sin_3, 0, 0, 0, 0],
      [-sin_3, cos_3, 0, 0, 0, 0],
      [0, 0, 1, 0, 0, 0],
      [0, 0, 0, cos_3, sin_3, 0],
      [0, 0, 0, -sin_3, cos_3, 0],
      [0, 0, 0, 0, 0, 1],
    ]);
    final TT_3 = T_3.transpose();
    //..Matrik stifnes
    final Matrix K_1 = Matrix([
      [AE_1, 0, 0, -AE_1, 0, 0],
      [0, x12EI_1, x6EI_1, 0, -x12EI_1, x6EI_1],
      [0, x6EI_1, x4EI_1, 0, -x6EI_1, x2EI_1],
      [-AE_1, 0, 0, AE_1, 0, 0],
      [0, -x12EI_1, -x6EI_1, 0, x12EI_1, -x6EI_1],
      [0, x6EI_1, x2EI_1, 0, -x6EI_1, x4EI_1],
    ]);

    final Kg_1 = (TT_1 * K_1) * T_1;

    final Matrix K_2 = Matrix([
      [AE_2, 0, 0, -AE_2, 0, 0],
      [0, x12EI_2, x6EI_2, 0, -x12EI_2, x6EI_2],
      [0, x6EI_2, x4EI_2, 0, -x6EI_2, x2EI_2],
      [-AE_2, 0, 0, AE_2, 0, 0],
      [0, -x12EI_2, -x6EI_2, 0, x12EI_2, -x6EI_2],
      [0, x6EI_2, x2EI_2, 0, -x6EI_2, x4EI_2],
    ]);
    final Kg_2 = TT_2 * K_2 * T_2;

    final Matrix K_3 = Matrix([
      [AE_3, 0, 0, -AE_3, 0, 0],
      [0, x12EI_3, x6EI_3, 0, -x12EI_3, x6EI_3],
      [0, x6EI_3, x4EI_3, 0, -x6EI_3, x2EI_3],
      [-AE_3, 0, 0, AE_3, 0, 0],
      [0, -x12EI_3, -x6EI_3, 0, x12EI_3, -x6EI_3],
      [0, x6EI_3, x2EI_3, 0, -x6EI_3, x4EI_3],
    ]);
    final Kg_3 = TT_3 * K_3 * T_3;

    //..fem
    final fem_1 = Matrix([
      [FEMxi_1],
      [FEMyi_1],
      [FEMmi_1],
      [FEMxj_1],
      [FEMyj_1],
      [FEMmj_1],
    ]);
    final femg_1 = TT_1 * fem_1;
    final fem_2 = Matrix([
      [FEMxi_2],
      [FEMyi_2],
      [FEMmi_2],
      [FEMxj_2],
      [FEMyj_2],
      [FEMmj_2],
    ]);
    final femg_2 = TT_2 * fem_2;
    final fem_3 = Matrix([
      [FEMxi_3],
      [FEMyi_3],
      [FEMmi_3],
      [FEMxj_3],
      [FEMyj_3],
      [FEMmj_3],
    ]);
    final femg_3 = TT_3 * fem_3;
    final FEM = Matrix([
      [femg_1[3][0] + femg_2[0][0]],
      [femg_1[4][0] + femg_2[1][0]],
      [femg_1[5][0] + femg_2[2][0]],
      [femg_2[3][0] + femg_3[0][0]],
      [femg_2[4][0] + femg_3[1][0]],
      [femg_2[5][0] + femg_3[2][0]],
    ]);
    final FEMT_1 = Matrix([
      [femg_1[0][0]],
      [femg_1[1][0]],
      [femg_1[2][0]],
    ]);
    final FEMT_2 = Matrix([
      [femg_3[3][0]],
      [femg_3[4][0]],
      [femg_3[5][0]],
    ]);

    final GAYA = Matrix([
      [Gx_2],
      [Gy_2],
      [Gm_2],
      [Gx_3],
      [Gy_3],
      [Gm_3],
    ]);

    //pengambilan nilai dan pembuatan matrik baru
    final kgc_1 = Matrix([
      [Kg_1[3][3], Kg_1[3][4], Kg_1[3][5], 0, 0, 0],
      [Kg_1[4][3], Kg_1[4][4], Kg_1[4][5], 0, 0, 0],
      [Kg_1[5][3], Kg_1[5][4], Kg_1[5][5], 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
    ]);
    final kgc_2 = Kg_2;
    final kgc_3 = Matrix([
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, Kg_3[0][0], Kg_3[0][1], Kg_3[0][2]],
      [0, 0, 0, Kg_3[1][0], Kg_3[1][1], Kg_3[1][2]],
      [0, 0, 0, Kg_3[2][0], Kg_3[2][1], Kg_3[2][2]],
    ]);
    final K = kgc_1 + kgc_2 + kgc_3;

    //menghitung Displacement
    final D = K.inverse() * (GAYA - FEM);
    final Dc_1 = Matrix([
      [D[0][0]],
      [D[1][0]],
      [D[2][0]],
    ]);
    final Dc_2 = Matrix([
      [D[3][0]],
      [D[4][0]],
      [D[5][0]],
    ]);
    final tumpuc_1 = Matrix([
      [Kg_1[0][3], Kg_1[0][4], Kg_1[0][5]],
      [Kg_1[1][3], Kg_1[1][4], Kg_1[1][5]],
      [Kg_1[2][3], Kg_1[2][4], Kg_1[2][5]],
    ]);
    final tumpuc_2 = Matrix([
      [Kg_3[3][0], Kg_3[3][1], Kg_3[3][2]],
      [Kg_3[4][0], Kg_3[4][1], Kg_3[4][2]],
      [Kg_3[5][0], Kg_3[5][1], Kg_3[5][2]],
    ]);
    final Tumpu_1 = tumpuc_1 * Dc_1 + FEMT_1;
    final Tumpu_2 = tumpuc_2 * Dc_2 + FEMT_2;

    final D_1 = Matrix([
      [0],
      [0],
      [0],
      [D[0][0]],
      [D[1][0]],
      [D[2][0]],
    ]);

    final D_2 = Matrix([
      [D[0][0]],
      [D[1][0]],
      [D[2][0]],
      [D[3][0]],
      [D[4][0]],
      [D[5][0]],
    ]);

    final D_3 = Matrix([
      [D[3][0]],
      [D[4][0]],
      [D[5][0]],
      [0],
      [0],
      [0],
    ]);

    //menghitung gaya tiap member
    //..1
    final f_1 = T_1 * Kg_1 * D_1 + fem_1;
    final f_2 = T_2 * Kg_2 * D_2 + fem_2;
    final f_3 = T_3 * Kg_3 * D_3 + fem_3;

    Fxi_1 = f_1[0][0];
    Fyi_1 = f_1[1][0];
    Mi_1 = f_1[2][0];
    Fxj_1 = f_1[3][0];
    Fyj_1 = f_1[4][0];
    Mj_1 = f_1[5][0];

    Fxi_2 = f_2[0][0];
    Fyi_2 = f_2[1][0];
    Mi_2 = f_2[2][0];
    Fxj_2 = f_2[3][0];
    Fyj_2 = f_2[4][0];
    Mj_2 = f_2[5][0];

    Fxi_3 = f_3[0][0];
    Fyi_3 = f_3[1][0];
    Mi_3 = f_3[2][0];
    Fxj_3 = f_3[3][0];
    Fyj_3 = f_3[4][0];
    Mj_3 = f_3[5][0];
    Rxi = Tumpu_1[0][0];
    Ryi = Tumpu_1[1][0];
    Rmi = Tumpu_1[2][0];
    Rxj = Tumpu_2[0][0];
    Ryj = Tumpu_2[1][0];
    Rmj = Tumpu_2[2][0];
  }
}

void ResetValue() {
  n = 0;
  OptredeR_1 = 0;
  OptredeNT_1 = 0;
  OptredeN_1 = 0;
  OptredeNR_1 = 0;
  OptredeN1_1 = 0;
  Optrede1N_1 = 0;
  OptredeB_1 = 0;
  OptredeS_1 = 0;
  OptredeNB_1 = 0;
  OptredeNA_1 = 0;
  AntredeR_1 = 0;
  AntredeNT_1 = 0;
  AntredeN_1 = 0;
  AntredeNR_1 = 0;
  AntredeN1_1 = 0;
  Antrede1N_1 = 0;
  AntredeB_1 = 0;
  AntredeS_1 = 0;
  AntredeNB_1 = 0;
  AntredeNA_1 = 0;
  Sudut_1 = 0;
}

class Tulangan {
  double diameterTulangan;
  double Jarak;
  String SM;

  //
  // double M;
  // double fy;
  // double fc;
  // double Selimut;
  // double TebalPelatTanggaPilih;
  // double S;
  // double D;
  // //tulangan AB
  // double Faktor;
  // double Rn;
  // double m;
  // double ro;
  // double As;
  // double AsPilih;
  // double AsSyarat;
  // double s;
  //
  // double SPembagi;
  //
  // //syarat
  // String SyaratVu;
  // String Syarat2;
  // double AsPakai;
  // double Alpha;
  // double Mr;
  // double Muteta;
  List Data;

  Tulangan({
    this.diameterTulangan,
    this.Jarak,
    this.SM,
    //   this.M,
    // this.fy,
    // this.fc,
    // this.TebalPelatTanggaPilih,
    //
    // this.Selimut,
    // this.D,
    //
    // this.Faktor,
    // this.Rn,
    // this.m,
    // this.ro,
    // this.As,
    // this.AsSyarat,
    // this.AsPilih,
    // this.s,
    //
    // this.SyaratVu,
    // this.Syarat2,
    // this.AsPakai,
    // this.Alpha,
    // this.Mr,
    // this.Muteta,
    // this.SPembagi
  });

  hitung(
    double M,
    double fy,
    double fc,
    double TebalPelatTanggaPilih,
    double diameterTulangan,
    double Selimut,
  ) {
    double D = TebalPelatTanggaPilih - Selimut - diameterTulangan / 2;
    //tulangan AB
    double Rn = M * 1000000 / 0.8 / 1000 / pow(D, 2);
    double m = fy / 0.85 / fc;
    double ro = 1 / m * (1 - sqrt(1 - 2 * m * Rn / fy));
    double romin1 = 0.25 * sqrt(fc) / fy;
    double romin2 = 1.4 / fy;
    double beta = 0;
    if (fc < 28) {
      beta = 8.5;
    } else if (fc < 55) {
      beta = 0.85 - 0.05 * (fc - 28) / 7;
    } else {
      beta = 0.65;
    }
    double romax1 = 0.75 * 0.85 * beta * fc / fy * (600 / (600 + fy));
    double romax2 = 0.025;
    double ropakai = 0;
    if (ro < max(romin1, romin2)) {
      ropakai = max(romin1, romin2);
    } else if (ro > min(romax1, romax2)) {
      ropakai = min(romax1, romax2);
    } else {
      ropakai = ro;
    }
    double As = ropakai * 1000 * D;
    double AsSyarat = 0;
    if (fy <= 420) {
      AsSyarat = 0.002 * 1000 * TebalPelatTanggaPilih;
    } else {
      AsSyarat = max(0.0018 * 420 / fy * TebalPelatTanggaPilih * 1000,
          0.0014 * 1000 * TebalPelatTanggaPilih);
    }
    double AsPilih = As > AsSyarat ? As : AsSyarat;
    double s = 1000 * 0.25 * pi * pow(diameterTulangan, 2) / AsPilih;
    double sPilih = (s / 10 - 0.5).toRound(0) * 10;
    //syarat
    sPilih = sPilih < 3 * TebalPelatTanggaPilih ? sPilih : 3 * TebalPelatTanggaPilih;
    sPilih = sPilih < 450 ? sPilih : 450;
    double AsPakai = 1000 / sPilih * pi * 0.25 * pow(diameterTulangan, 2);
    double Alpha = AsPakai * fy / (0.85 * fc * 1000);
    double Mr = AsPakai * fy * (D - Alpha / 2) / 1000000;
    double Muteta = (M / 0.9).abs();
    String Syarat3 = Mr > Muteta ? 'M' : 'TM';

    this.diameterTulangan = diameterTulangan;
    this.Jarak = sPilih;
    this.SM = Syarat3;
    // this.M = M;
    // this.fy = fy;
    // this.fc = fc;
    // this.Selimut = Selimut;
    // this.TebalPelatTanggaPilih = TebalPelatTanggaPilih;
    //
    // this.D = D;
    // this.Faktor = Faktor;
    // this.Rn = Rn;
    // this.m = m;
    // this.ro = ro;
    // this.As = As;
    // this.AsSyarat = AsSyarat;
    // this.AsPilih = AsPilih;
    // this.s = s;
    //
    // this.AsPakai = AsPakai;
    // this.Alpha = Alpha;
    // this.Mr = Mr;
    // this.Muteta = Muteta;
  }
// data() {
//   this.Data = [
//     buatPDF(
//         nama: 'Tebal Pelat Tangga',
//         rumus: 'H',
//         hasil: this.TebalPelatTanggaPilih.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Tebal Selimut Tangga',
//         rumus: 'S',
//         hasil: this.Selimut.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Kuat Tarik',
//         rumus: 'fy',
//         hasil: this.fy.toRound(2),
//         satuan: 'Mpa'),
//     buatPDF(
//         nama: 'Kuat Tekan',
//         rumus: 'fc',
//         hasil: this.fc.toRound(2),
//         satuan: 'Mpa'),
//     buatPDF(
//         nama: 'Diameter Tulangan',
//         rumus: 'd',
//         hasil: this.diameterTulangan.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Jarak Tulangan dari Selimut Terluar',
//         rumus: 'D',
//         hasil: this.D.toRound(2),
//         satuan: 'Mpa'),
//     buatPDF(
//         nama: 'Momen yang ditahan',
//         rumus: 'Mu',
//         hasil: this.M.toRound(2),
//         satuan: 'kNm'),
//     buatPDF(
//         nama: 'Faktor ketahanan',
//         rumus: 'fr',
//         hasil: this.Faktor.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'Rasio Tulangan',
//         rumus: 'Rn=Mu/fr.b.D^2',
//         hasil: this.Rn.toRound(2),
//         satuan: 'kN/m^2'),
//     buatPDF(
//         nama: 'm',
//         rumus: 'm=fy/0,85fc',
//         hasil: this.m.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'ro',
//         rumus: 'ro=1/m(1-sqrt(1-2m.Rn/fy))',
//         hasil: this.ro.toRound(4),
//         satuan: ''),
//     buatPDF(
//         nama: 'Luas Tulangan',
//         rumus: 'As=ro.b.D',
//         hasil: this.As.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Batas Minimum Luas',
//         rumus: 'As>0,002.Ag',
//         hasil: this.AsSyarat.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Luas Tulangan Pilih',
//         rumus: 'As',
//         hasil: this.AsPilih.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Jarak Tulangan',
//         rumus: 's = 1000.1/4.pi.d^2/As',
//         hasil: this.s.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Jarak Tulangan Pakai',
//         rumus: '''s''',
//         hasil: this.Jarak.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Syarat Jarak Tulangan 1',
//         rumus: 's < 3h',
//         hasil: this.TebalPelatTanggaPilih.toRound(2) * 3,
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Syarat Jarak Tulangan 2',
//         rumus: 's < 450',
//         hasil: 450,
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Luas Tulagan Pakai',
//         rumus: '''As' = 1000/s'.1/4.pi.D^2 ''',
//         hasil: this.AsPakai.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: '''a' ''',
//         rumus: '''a' = As'.fy/(0.85*fc*1000) ''',
//         hasil: this.Alpha.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: '''Mr''',
//         rumus: '''Mr = As'.fy.(D-a'/2) ''',
//         hasil: this.Mr.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'Kontrol Momen Lentur',
//         rumus: '''Mr > Mu/0.9''',
//         hasil: this.Muteta.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'Digunakan Tulangan',
//         rumus: 'D -',
//         hasil: this.Jarak,
//         satuan: ''),
//   ];
// }
}

class TulanganGeser {
  double Ds;
  double jarak;
  String Sv;

  TulanganGeser({this.Ds, this.Sv, this.jarak});

  hitung(
    double Sheer,
    double fc,
    double fy,
    double TebalPelatTanggaPilih,
    double d,
    double ds,
    double Selimut,
  ) {
    double D = TebalPelatTanggaPilih - Selimut - d / 2;
    double vc = 1 / 6 * sqrt(fc) * 1000 * D / 1000;
    double Vuteta = Sheer / 0.75;
    double vs = Vuteta - vc;
    double S1 = pi / 4 * pow(ds, 2) * fy * D / (vs * 1000);
    double S2 = 1000 * pi / 4 * pow(ds, 2) / (0.002 * 1000 * TebalPelatTanggaPilih);
    double Spakai =
        Vuteta < vc ? (S2 / 10 - 0.5).toRound(0) * 10 : (S1 / 10 - 0.5).toRound(0) * 10;

    this.Ds = ds;
    this.Sv = "M";
    this.jarak = Spakai;
  }
}

class BalokBordes {
  double D;
  double N;
  String SM;

  hitung(
    double h,
    double b,
    double fy,
    double fc,
    double s,
    double d,
    double ds,
    double momen,
  ) {
    double D = h - s - ds - d / 2;
    double Rn = M * 1000000 / 0.9 / b / pow(D, 2);
    double m = fy / 0.85 / fc;
    double ro = 1 / m * (1 - sqrt(1 - 2 * m * Rn / fy));
    double romin1 = 0.25 * sqrt(fc) / fy;
    double romin2 = 1.4 / fy;
    double beta = 0;
    if (fc < 28) {
      beta = 8.5;
    } else if (fc < 55) {
      beta = 0.85 - 0.05 * (fc - 28) / 7;
    } else {
      beta = 0.65;
    }
    double romax1 = 0.75 * 0.85 * beta * fc / fy * (600 / (600 + fy));
    double romax2 = 0.025;
    double ropakai = 0;
    if (ro < max(romin1, romin2)) {
      ropakai = max(romin1, romin2);
    } else if (ro > min(romax1, romax2)) {
      ropakai = min(romax1, romax2);
    } else {
      ropakai = ro;
    }
    double As = ropakai * b * D;
    double N =max( As / (pi / 4 * d * d),2);
    double Npakai = (N + 0.5).toRound(0);
    double Aspakai = pi / 4 * d * d * Npakai;
    double Alpha = Aspakai * fy / (0.85 * fc * b);
    double Mr = Aspakai * fy * (D - Alpha / 2) / 1000000;
    double Muteta = (M / 0.9).abs();
    String SyaratMu = Mr > Muteta ? 'M' : 'TM';
    this.D = d;
    this.N = Npakai;
    this.SM = SyaratMu;
  }
}

class BalokBordesGeser {
  double ds;
  double jarak;
  String Sv;
  double jarakmin;

  hitung(
    double h,
    double b,
    double fy,
    double fc,
    double s,
    double d,
    double ds,
    double geser,
  ) {
    double D = h - s - ds - d / 2;
    double Vc = 0.17 * sqrt(fc) * b * D / 1000;

    double tetaVc = Vc * 0.75;
    double teta5Vc = tetaVc / 2;
    double Vs = geser / 0.75;
    double Av = pi / 4 * ds * ds * 2;
    double Sn = Av * fy * D / Vs;
    double Sm = 0;
    if (Vs < 0.33 * sqrt(fy) * b * D) {
      Sm = min(D / 2, 600);
    } else {
      Sm = min(D / 4, 300);
    }
    double Spakai = geser < tetaVc
        ? (Sm / 10 - 0.5).toRound(0) * 10
        : (Sn / 10 - 0.5).toRound(0) * 10;

    this.ds = ds;
    this.jarak = Spakai;
    this.Sv = 'M';
    this.jarakmin=(Sm / 10 - 0.5).toRound(0) * 10;
  }
}

class arr {
  List Data;

  String A1 = '';
  String B1 = '';
  String C1 = '';
  String D1 = '';
  String E1 = '';
  String A2 = '';
  String B2 = '';
  String C2 = '';
  String D2 = '';
  String E2 = '';
  String A3 = '';
  dynamic B3 = 0;
  dynamic C3 = 0;
  dynamic D3 = 0;
  dynamic E3 = 0;
  String A4 = '';
  dynamic B4 = 0;
  dynamic C4 = 0;
  dynamic D4 = 0;
  dynamic E4 = 0;
  String A5 = '';
  dynamic B5 = 0;
  dynamic C5 = 0;
  dynamic D5 = 0;
  dynamic E5 = 0;
  String A6 = '';
  dynamic B6 = 0;
  dynamic C6 = 0;
  dynamic D6 = 0;
  dynamic E6 = 0;
  String A7 = '';
  dynamic B7 = 0;
  dynamic C7 = 0;
  dynamic D7 = 0;
  dynamic E7 = 0;
  String A8 = '';
  dynamic B8 = 0;
  dynamic C8 = 0;
  dynamic D8 = 0;
  dynamic E8 = 0;

  arr({
    this.A1,
    this.B1,
    this.C1,
    this.D1,
    this.E1,
    this.A2,
    this.B2,
    this.C2,
    this.D2,
    this.E2,
    this.A3,
    this.B3,
    this.C3,
    this.D3,
    this.E3,
    this.A4,
    this.B4,
    this.C4,
    this.D4,
    this.E4,
    this.A5,
    this.B5,
    this.C5,
    this.D5,
    this.E5,
    this.A6,
    this.B6,
    this.C6,
    this.D6,
    this.E6,
    this.A7,
    this.B7,
    this.C7,
    this.D7,
    this.E7,
    this.A8,
    this.B8,
    this.C8,
    this.D8,
    this.E8,
  });

  arr.Cler() {
    arr().A1 = '';
    arr().B1 = '';
    arr().C1 = '';
    arr().D1 = '';
    arr().E1 = '';
    arr().A2 = '';
    arr().B2 = '';
    arr().C2 = '';
    arr().D2 = '';
    arr().E2 = '';
    arr().A3 = '';
    arr().B3 = 0;
    arr().C3 = 0;
    arr().D3 = 0;
    arr().E3 = 0;
    arr().A4 = '';
    arr().B4 = 0;
    arr().C4 = 0;
    arr().D4 = 0;
    arr().E4 = 0;
    arr().A5 = '';
    arr().B5 = 0;
    arr().C5 = 0;
    arr().D5 = 0;
    arr().E5 = 0;
    arr().A6 = '';
    arr().B6 = 0;
    arr().C6 = 0;
    arr().D6 = 0;
    arr().E6 = 0;
    arr().A7 = '';
    arr().B7 = 0;
    arr().C7 = 0;
    arr().D7 = 0;
    arr().E7 = 0;
    arr().A8 = '';
    arr().B8 = 0;
    arr().C8 = 0;
    arr().D8 = 0;
    arr().E8 = 0;
  }

  data() {
    this.Data = [
      buatMomen(C0: this.A1, C1: this.B1, C2: this.C1, C3: this.D1, C4: this.E1),
      buatMomen(C0: this.A2, C1: this.B2, C2: this.C2, C3: this.D2, C4: this.E2),
      buatMomen(
          C0: this.A3,
          C1: this.B3.toStringAsFixed(2),
          C2: this.C3.toStringAsFixed(2),
          C3: this.D3.toStringAsFixed(2),
          C4: this.E3.toStringAsFixed(2)),
      buatMomen(
          C0: this.A4,
          C1: this.B4.toStringAsFixed(2),
          C2: this.C4.toStringAsFixed(2),
          C3: this.D4.toStringAsFixed(2),
          C4: this.E4.toStringAsFixed(2)),
      buatMomen(
          C0: this.A5,
          C1: this.B5.toStringAsFixed(2),
          C2: this.C5.toStringAsFixed(2),
          C3: this.D5.toStringAsFixed(2),
          C4: this.E5.toStringAsFixed(2)),
      buatMomen(
          C0: this.A6,
          C1: this.B6.toStringAsFixed(2),
          C2: this.C6.toStringAsFixed(2),
          C3: this.D6.toStringAsFixed(2),
          C4: this.E6.toStringAsFixed(2)),
      buatMomen(
          C0: this.A7,
          C1: this.B7.toStringAsFixed(2),
          C2: this.C7.toStringAsFixed(2),
          C3: this.D7.toStringAsFixed(2),
          C4: this.E7.toStringAsFixed(2)),
    ];
  }
}
// datatull(Tulangan tull, List awal, List akhir) {
//   awal = [
//     buatPDF(
//         nama: 'Tebal Pelat Tangga',
//         rumus: 'H',
//         hasil: tull.TebalPelatTanggaPilih.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Tebal Selimut Tangga',
//         rumus: 'S',
//         hasil: tull.Selimut.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Kuat Tarik',
//         rumus: 'fy',
//         hasil: tull.fy.toRound(2),
//         satuan: 'Mpa'),
//     buatPDF(
//         nama: 'Kuat Tekan',
//         rumus: 'fc',
//         hasil: tull.fc.toRound(2),
//         satuan: 'Mpa'),
//     buatPDF(
//         nama: 'Diameter Tulangan',
//         rumus: 'd',
//         hasil: tull.diameterTulangan.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Jarak Tulangan dari Selimut Terluar',
//         rumus: 'D',
//         hasil: tull.D.toRound(2),
//         satuan: 'Mpa'),
//     buatPDF(
//         nama: 'Momen yang ditahan',
//         rumus: 'Mu',
//         hasil: tull.M.toRound(2),
//         satuan: 'kNm'),
//     buatPDF(
//         nama: 'Faktor ketahanan',
//         rumus: 'fr',
//         hasil: tull.Faktor.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'Rasio Tulangan',
//         rumus: 'Rn=Mu/fr.b.D^2',
//         hasil: tull.Rn.toRound(2),
//         satuan: 'kN/m^2'),
//     buatPDF(
//         nama: 'm', rumus: 'm=fy/0,85fc', hasil: tull.m.toRound(2), satuan: ''),
//     buatPDF(
//         nama: 'ro',
//         rumus: 'ro=1/m(1-sqrt(1-2m.Rn/fy))',
//         hasil: tull.ro.toRound(4),
//         satuan: ''),
//     buatPDF(
//         nama: 'Luas Tulangan',
//         rumus: 'As=ro.b.D',
//         hasil: tull.As.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Batas Minimum Luas',
//         rumus: 'As>0,002.Ag',
//         hasil: tull.AsSyarat.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Luas Tulangan Pilih',
//         rumus: 'As',
//         hasil: tull.AsPilih.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Jarak Tulangan',
//         rumus: 's = 1000.1/4.pi.d^2/As',
//         hasil: tull.s.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Jarak Tulangan Pakai',
//         rumus: '''s''',
//         hasil: tull.Jarak.toRound(2),
//         satuan: 'mm'),
//     buatPDF(
//         nama: 'Syarat Jarak Tulangan 1',
//         rumus: 's < 3h',
//         hasil: tull.TebalPelatTanggaPilih.toRound(2) * 3,
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Syarat Jarak Tulangan 2',
//         rumus: 's < 450',
//         hasil: 450,
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: 'Luas Tulagan Pakai',
//         rumus: '''As' = 1000/s'.1/4.pi.D^2 ''',
//         hasil: tull.AsPakai.toRound(2),
//         satuan: 'mm^2'),
//     buatPDF(
//         nama: '''a' ''',
//         rumus: '''a' = As'.fy/(0.85*fc*1000) ''',
//         hasil: tull.Alpha.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: '''Mr''',
//         rumus: '''Mr = As'.fy.(D-a'/2) ''',
//         hasil: tull.Mr.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'Kontrol Momen Lentur',
//         rumus: '''Mr > Mu/0.9''',
//         hasil: tull.Muteta.toRound(2),
//         satuan: ''),
//     buatPDF(
//         nama: 'Digunakan Tulangan',
//         rumus: 'D -',
//         hasil: tull.Jarak,
//         satuan: ''),
//   ];
//   akhir = awal
//       .map((e) => [
//             e.BarisKe,
//             e.nama,
//             e.rumus,
//             e.tanda,
//             e.hasil,
//             e.satuan,
//           ])
//       .toList();
// }

//hitungan

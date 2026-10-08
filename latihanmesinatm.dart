import 'dart:io';

void main(){
  var ceklogin = true;
  var jalan = true;
  var pin = 112233;
  var saldo = 2000000;

  login(){
     stdout.writeln('Masukkan pin anda');
     var inputpinuser = int.parse(stdin.readLineSync()!);

     if (inputpinuser == pin){
       ceklogin = false;
     } else {
      print('Password anda salah');
     }

  }

  tampilmenu(){
    print('==========================');
    print('Bank Serba Ada');
    print('==========================');
    print('1. Cek saldo');
    print('2. Setor uang');
    print('3. Tarik uang');
    print('4. keluar');
  }

  ceksaldo(){
    print('Saldo anda $saldo');
  }

  setor(){
    stdout.writeln('Masukkan nominal setor');
     var inputsetor = int.parse(stdin.readLineSync()!);
     saldo = saldo + inputsetor;
  }

  tarik(){
    stdout.writeln('Masukkan nominal penarikan');
     var inputpenarikan = int.parse(stdin.readLineSync()!);
    stdout.writeln('Pilih pecahan penarikan');
    print('1. Rp. 100.000');
    print('2. Rp. 50.000');
     var jenispecahan = int.parse(stdin.readLineSync()!);
     var pecahan1 = 100000;
     var pecahan2 = 50000;
     var hasil = 0;
     var sisa = 0;
     var sisa2 = 0;
    if (jenispecahan == 1) {
      var hasil = inputpenarikan ~/ pecahan1;
      print('Rp. 100.000 = $hasil lembar');
    if (pecahan1 * hasil != inputpenarikan){
      sisa = inputpenarikan - (pecahan1 * hasil);
      sisa2 = sisa ~/ pecahan2;
      print('Rp. 50.000 = $sisa2 lembar');
    saldo = saldo - inputpenarikan;
    }} else {
      var hasil = inputpenarikan ~/ pecahan2;
      print('Rp. 50.000 = $hasil lembar');
    saldo = saldo - inputpenarikan;
    }

    
    
  }

  keluar(){
    exit(0);
  }

while (jalan == true){
    if (ceklogin == true){
      login();
    } else {
        tampilmenu();
        stdout.writeln('Silahkan pilih menu');
      var inputuser = int.parse(stdin.readLineSync()!);
      switch(inputuser) {
         case 1:
             ceksaldo();
             break;
         case 2:
             setor();
             break;
         case 3:
             tarik();
             break;
         case 4:
         keluar();
        //switch case tergantung pilihan
        //case 1: ceksaldo();
        //case 2: setor();
        //case 3: tarik();
    }
    }
    // jika ceklogin == true
    // maka jalankan sebaliknya jalankan menu
}}
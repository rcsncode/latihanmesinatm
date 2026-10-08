void main() {
  var ceklogin = true;
  var jalan = true;
  var pin = 112233;
  var saldo = 2000000;

  login(){
    //tanya user pin anda?
    //inputpinuser
    //jika pin sama dengan inputpinuser
    //cek login jadikan false
    //
  }

  tampilmenu(){
    //tampil 3 jenis menu
    //
  }

  ceksaldo(){
    //tampilkan saldo
  }

  setor(){
    //tanya user mau setor berapa
    //saldonya ditambahkan dengan input user
  }

  tarik(){
    //tanya user mau tarik berapa
    //tanya user pecahannya berapa 50rb atau 100rb
    // ~/ kalau 250rb / 100 rb = 2.5 kalau pakai simbol ini jadi 2
    //contoh 250 ~/ 100 = 2
  }

  while (jalan == true){
    if (ceklogin == true){
      login();
    } else {
        tampilmenu();
        //tanya user menu yang mana yang mau dipilih
        //switch case tergantung pilihan
        //case 1: ceksaldo();
        //case 2: setor();
        //case 3: tarik();
    }
    }
    // jika ceklogin == true
    // maka jalankan sebaliknya jalankan menu
  }
<?php
  if ($_POST) {
    include("../veritabani.php");
    $grupadi=$_POST["grupadi"];
    session_start();
    $id=$_SESSION["id"];
    $dosya_uzantisi=explode(".",$_FILES["gruplogo"]["name"]);
    $dosya_uzantisi=$dosya_uzantisi[count($dosya_uzantisi)-1];
    $kabul_edilen_uzantilar=array("jpg","jpeg","png","");
    $sorgugetir=mysqli_query($baglanti,"SELECT * FROM kullanicilar where kullanici_id!=$id");

    $ek_dosya_adi=$grupadi.".".$dosya_uzantisi;
    $dizin="../images/gruplogolari/".$ek_dosya_adi;
    if (in_array(mb_strtolower($dosya_uzantisi),$kabul_edilen_uzantilar)) {
      if (empty($_FILES["grup_logo"]["name"])) {
        $ek_dosya_adi = "grup.png";
        $sorgu=mysqli_query($baglanti,"INSERT INTO gruplar(grup_kuran_id,grup_adi,grup_logo) VALUES('$id','$grupadi','$ek_dosya_adi')");
        if($sorgu){
          $baslik=$grupadi;
          $metin="Grubu Kurulmuştur";
          $grupduyurusu=mysqli_query($baglanti,"INSERT INTO duyurular(duyuru_yapan_id,duyuru_basligi,duyuru_icerigi) VALUES($id,'$baslik','$metin')");
          if($grupduyurusu)
          {
            while($getir=mysqli_fetch_array($sorgugetir)){
              $alici_id=$getir['kullanici_id'];
              $konu="Grup Oluşturuldu!";
              $bildirim=mysqli_query($baglanti,"INSERT INTO grup_bildirimi(alici_id,gonderici_id,konu) values('$alici_id','$id','$konu')");
            }
          }
          $sonGrup = mysqli_query($baglanti,"SELECT * FROM gruplar ORDER BY grup_id DESC LIMIT 0,1");
          $sonGrupGetir= mysqli_fetch_array($sonGrup);
          $grup_id = $sonGrupGetir["grup_id"];
          $uyelik=  mysqli_query($baglanti,"INSERT INTO grupuyeleri(grup_id,kullanici_id,izin) VALUES($grup_id,$id,2)");
          header("Location:gruplar.php");

        }
      }
        if (move_uploaded_file($_FILES["gruplogo"]["tmp_name"],$dizin)) {
          $sorgu=mysqli_query($baglanti,"INSERT INTO gruplar(grup_kuran_id,grup_adi,grup_logo) VALUES('$id','$grupadi','$ek_dosya_adi')");
          if($sorgu){
            $baslik=$grupadi;
            $metin="Grubu Kurulmuştur";
            $grupduyurusu=mysqli_query($baglanti,"INSERT INTO duyurular(duyuru_yapan_id,duyuru_basligi,duyuru_icerigi) VALUES($id,'$baslik','$metin')");
            if($grupduyurusu)
            {
              while($getir=mysqli_fetch_array($sorgugetir)){
                $alici_id=$getir['kullanici_id'];
                $konu="Grup Oluşturuldu!";
                $bildirim=mysqli_query($baglanti,"INSERT INTO grup_bildirimi(alici_id,gonderici_id,konu) values('$alici_id','$id','$konu')");
              }
              header("Location:gruplar.php");
            }
            header("Location:gruplar.php");
          }
        }
    }
  }
 ?>

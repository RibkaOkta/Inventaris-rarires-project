@extends('dashboard')

@section('content')
<html>
<head>
<center><h1><i class="fas fa-book me-3"></i>Pedoman Inventaris BN<h1></center>
    <style type="text/css">
    *{
        margin:0;
        padding:0;
        font-family: sans-serif;
}
.container{
    display:flex;
    justify-content:center;
    align-items:center;
    flex-wrap:wrap;
    max-width: 1100px;
}
.container .kotak{
    position: relative;
    width: 30px;
    height: 40px;
    background:	#aaa1a1;
    margin:0 20px;

}
        
 </style>
</head>
<br>
<body>
        <div class="container">
        <div class="kotak">
            <h2>1</h2>
        </div>
        <div class="kotak">
            <h2>2</h2>
        </div>

        <div class="kotak">
            <h2>3</h2>
        </div>
        <div class="kotak">
            <h2>4</h2>
        </div>
        <div class="kotak">
            <h2>5</h2>
        </div>
        <div class="kotak">
            <h2>6</h2>
        </div>
        <div class="kotak">
            <h2>7</h2>
        </div>
        <div class="kotak">
            <h2>8</h2>
        </div>
        <div class="kotak">
            <h2>9</h2>
        </div>
        <div class="kotak">
            <h2>10</h2>
        </div>
        <div class="kotak">
            <h2>11</h2>
        </div>
        <div class="kotak">
            <h2>12</h2>
        </div>
        <div class="kotak">
            <h2>13</h2>
        </div>
    

</div> 
    <center>
    <br>
    <table width="745" border="1" cellspacing="0" cellpadding="5" align="center">
    <tr align="center" bgcolor="#35a9db">
    <td width="174">KOTAK</td>
    <td width="353">KODE</td>
    <td width="232">KETERANGAN</td>
    </tr>
    <tr>
    <td>Kotak 1</td>
    <td>Kode Bidang Barang</td>
    <td>1 Barang umum<br>
        2 Barang Alat Lab<br>
        3 Barang Koperasi<br>
        4 Barang UKS<br>
        5 Barang TU<br>
        6 Barang Ruang Guru<br>
        7 Barang Ruang Perpustakaan<br>
        8 Barang Ruang Satpam
    </td>
    </tr>

    <tr>
    <td>Kotak 2, 3, & 4</td>
    <td>Kode lokasi</td>
    <td></td>
    </tr>

    <tr>
    <td>Kotak 5 & 6</td>
    <td>Kode tahun perolehan</td>
    <td></td>
    </tr>

    <tr>
    <td>Kotak 7</td>
    <td>Kode kelompok alat</td>
    <td>1 Member<br>
        2 Elektronik<br>
        3 Alat Ukur<br>
        4 Alat Praktek<br>
        5 Alat Trainer<br>
        6 Alat Musik<br>
        7 Kendaraan<br>
    </td>
    </tr>

    <tr>
    <td>Kotak 8, 9 & 10</td>
    <td>Kode nama barang</td>
    <td></td>
    </tr>

    <tr>
    <td>Kotak 11,12 & 13</td>
    <td>kode urutan barang	
    </td>
    <td></td>
    </tr>

    </table><br>
    </body>
@endsection
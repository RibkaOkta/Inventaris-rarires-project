<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DatabarangnController extends Controller
{
    public function index(){
        $kelompokalat = DB::table('klmpk_alat')->get();
        $lokasi = DB::table('lokasi')->get();
        $barang = DB::table('barang')->get();

        return view('databarang', compact('kelompokalat','lokasi','barang'));
    }

    public function tambah(){
        $kelompokalat = DB::table('klmpk_alat')->get();
        $lokasi = DB::table('lokasi')->get();
        $barang = DB::table('barang')->get();

        return view('form.tambahdata', compact('kelompokalat','lokasi','barang'));
    }

    public function store(Request $req){
        $kbd = $req->input('kodebidangbarang');
        $kl = $req->input('kodelokasi');
        $kkl = $req->input('kodekelompokalat');
        $knb = $req->input('kodenamabarang');
        $nb = $req->input('namabarang');
        $merk = $req->input('merek');
        $tgl = $req->input('tanggal');
        $kb = $req->input('kondisi');
        $sd = $req->input('sumberdana');
        $ket = $req->input('ketbarang');
        $tglnew = date('y', strtotime($tgl));

        //mencari urutan barang
        $data = DB::table('barang')->where('kode_brg', $knb)->where('klmpk_alat',$kkl)->count();
        $data += 1;
       
        $nomor = str_pad((string)$data, 3, "0", STR_PAD_LEFT); 

        $kode = $kbd.".".$kl.".".$tglnew.".".$kkl.".".$knb.".".$nomor;

        $insert = DB::table('barang')->insert(['no' => $kode, 'kode_brg' => $knb, 'nama_brg' => $nb, 'merk_brg' => $merk, "kondisi_brg" => $kb, "sumber_dana" => $sd,"ket_brg"=>$ket,'klmpk_alat'=>$kkl, 'kode_bidang' => $kbd, 'kode_lokasi' => $kl, 'tanggal' => $tgl ]);
        return redirect()->route('databarang');
    }
    public function edit($no)
    {
        $kelompokalat = DB::table('klmpk_alat')->get();
        $lokasi = DB::table('lokasi')->get();
        $barang = DB::table('barang')->get();

        list($kdb, $kl, $ktp,  $kkl, $knb, $kub) = explode('.', $no);
      
        $data = DB::table('barang')->join('bidang_brg', 'bidang_brg.kode_bidang_brg', '=', "barang.kode_bidang")->join('klmpk_alat', 'klmpk_alat.kode_klmpk_alat', '=', 'barang.klmpk_alat')->where('no', $no)->get();
        return view ('databarang',compact('kelompokalat','lokasi','barang','data'));
        ;
    }
    public function update(Request $req){
        $kodelama = $req->input('idb');
        $kbd = $req->input('kodebidangbarang');
        $kl = $req->input('kodelokasi');
        $kkl = $req->input('kodekelompokalat');
        $knb = $req->input('kodenamabarang');
        $nb = $req->input('namabarang');
        $merk = $req->input('merek');
        $tgl = $req->input('tanggal');
        $kb = $req->input('kondisi');
        $sd = $req->input('sumberdana');
        $ket = $req->input('ketbarang');
        $tglnew = date('y', strtotime($tgl));

        $data = DB::table('barang')->where('kode_brg', $knb)->where('klmpk_alat',$kkl)->count();
        $data += 1;

        $nomor = str_pad((string)$data, 3, "0", STR_PAD_LEFT); 

        $kodebaru = $kbd.".".$kl.".".$tglnew.".".$kkl.".".$knb.".".$nomor;

        $update = DB::table('barang')->where('no', $kodelama)->update(['no' => $kodebaru, 'kode_brg' => $knb, 'nama_brg' => $nb, 'merk_brg' => $merk, "kondisi_brg" => $kb, "sumber_dana" => $sd,"ket_brg"=>$ket,'klmpk_alat'=>$kkl, 'kode_bidang' => $kbd, 'kode_lokasi' => $kl, 'tanggal' => $tgl ]);
 
        return redirect()->route('databarang');
    }
    public function hapus($no)
    {
        $delete = DB::table('barang')->where('no', $no)->delete();
        return redirect()->route('databarang');
    }
    

}

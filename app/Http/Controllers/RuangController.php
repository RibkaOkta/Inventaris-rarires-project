<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RuangController extends Controller
{
    public function ruang(){
        $lokasiruang = DB::table('lokasi')->get();
        return view('dataruangan', compact('lokasiruang'));
    }
    public function edit($kode_lokasi)
    {
        $lokasiruang = DB::table('lokasi')->get();
        $datalok = DB::table('lokasi')->where('kode_lokasi', $kode_lokasi)->get();
        return view('dataruangan', compact('lokasiruang','datalok'));
    }
    public function updateruang(Request $req){
        $kodelama = $req->input('idb');
        $kl = $req->input('kodelokasi');
        $gd = $req->input('gedung');
        $lt = $req->input('lantai');
        $rng = $req->input('ruangan');
        $kr = $req->input('ketruang');

        $update = DB::table('lokasi')->where('kode_lokasi', $kodelama)->update(['kode_lokasi' => $kl, 'gedung' => $gd, 'lantai' => $lt, 'ruangan' => $rng, 'ket_ruang' => $kr]);

         return redirect()->route('dataruangan');
    }

    public function hapus($no)
    {
        $delete = DB::table('lokasi')->where('no', $no)->delete();
        return redirect()->route('dataruangan');
    }
}

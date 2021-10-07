<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;



class RuangController extends Controller
{
    public function __construct(){
        $this->lokasiruang = DB::table('lokasi')->get();
    }
    public function ruang(){
        $lokasiruang = DB::table('lokasi')->get();
        return view('superadmin.dataruangan', compact('lokasiruang'));
    }
    public function edit($kode_lokasi)
    {
        $lokasiruang = DB::table('lokasi')->get();
        $datalok = DB::table('lokasi')->where('kode_lokasi', $kode_lokasi)->get();
        return view('superadmin.dataruangan', compact('lokasiruang','datalok'));
    }

    public function cari(Request $request)
	{
		$cari = $request->cari;
		$lokasiruang = DB::table('lokasi')
		->where('ket_ruang','like',"%".$cari."%")
		->paginate();

		return view('superadmin.dataruangan',['lokasiruang' => $lokasiruang]);
 
	}
    public function updateruang(Request $req){
        $kodelama = $req->input('idb');
        $kl = $req->input('kodelokasi');
        $gd = $req->input('gedung');
        $lt = $req->input('lantai');
        $rng = $req->input('ruangan');
        $kr = $req->input('ketruang');

        $update = DB::table('lokasi')->where('kode_lokasi', $kodelama)->update(['kode_lokasi' => $kl, 'gedung' => $gd, 'lantai' => $lt, 'ruangan' => $rng, 'ket_ruang' => $kr]);

         return redirect()->route('/dataruangan');
    }

    public function buka($id){
        $barang = DB::table('barang')->where('kode_lokasi', $id)->get();
        return view('superadmin.dataruangan', ['barang' => $barang, 'lokasiruang' => $this->lokasiruang]);
    }
}

<?php

namespace App\Http\Controllers;
use App\Models\Pinjam;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PinjamController extends Controller
{
    public function index()
    {
       
        $pinjam = DB::table('pinjam')->get();
       
        return view('/laporanpinjam',['pinjam' => $pinjam]);
    }
    public function tambah(Request $req){
        $np = $req->input('namapeminjam');
        $nb = $req->input('namabarang');
        $mb = $req->input('merkbarang');
        $kl = $req->input('kodelokasi');
        $tp = $req->input('tanggalpinjam');
        $jmlh = $req->input('jumlahpinjam');
        $tglnew = date('y', strtotime($tp));

        $insert = DB::table('pinjam')->insert(['namapeminjam' => $np, 'namabarang' => $nb, 'merkbarang' => $mb, 'kodelokasi' => $kl, 'jumlah' => $jmlh,  'tanggal_pinjam' => $tp]);
        return redirect()->route('laporpinjam');
      
       }
      
    public function create()
    {
        /// menampilkan halaman create
        return view('Pinjambarang');    
    }
  
    


    public function store(Request $request)
    {
    $request->validate([
    'namapeminjam' => 'required',
    'namabarang' => 'required',
    'merkbarang' => 'required',
    'kodelokasi' => 'required',
    'jumlahpinjam' => 'required',
    'tanggal_pinjam' => 'required',
    
    ]);

     $input = $request->all();

     $pinjam = Pinjam::create($input);
 
     return back()->with('success',' Peminjaman berhasil.');
    }
    public function destroy(Pinjam $pinjam)
    {
        $pinjam = Pinjam::find($id);

   $pinjam->delete();

   return back()->with('success',' Barang Sudah Dikembalikan');
    }
}

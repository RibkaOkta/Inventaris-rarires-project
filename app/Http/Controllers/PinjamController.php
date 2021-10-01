<?php

namespace App\Http\Controllers;
use App\Models\Pinjam;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PinjamController extends Controller
{
//     public function index()
//     {
       
//         $pinjam = DB::table('pinjam')->get();
       
//         return view('/laporanpinjam',['pinjam' => $pinjam]);
//     }
//     public function tambah(Request $request){
//         $tambah = new pinjam;
//         $tambah->namapeminjam = $request->namapeminjam;
//         $tambah->namabarang = $request->namabarang;
//         $tambah->merkbarang = $request->merkbarang;
//         $tambah->kodelokasi = $request->kode_lokasi;
//         $tambah->tanggal_pinjam = $request->tanggal_pinjam;
//         $tambah->jumlah = $request->jumlah;
//         $tambah->save();
//        }
      
//     public function create()
//     {
//         /// menampilkan halaman create
//         return view('Pinjambarang');    
//     }
  
    


//     public function store(Request $request)
//     {
//     $request->validate([
//     'namapeminjam' => 'required',
//     'namabarang' => 'required',
//     'merkbarang' => 'required',
//     'kodelokasi' => 'required',
//     'jumlahpinjam' => 'required',
//     'tanggal_pinjam' => 'required',
    
//     ]);

//      $input = $request->all();

//      $pinjam = Pinjam::create($input);
 
//      return back()->with('success',' Peminjaman berhasil.');
//     }
//     public function destroy(Pinjam $pinjam)
//     {
//         $pinjam = Pinjam::find($id);

//    $pinjam->delete();

//    return back()->with('success',' Barang Sudah Dikembalikan');
//     }
    public function tambah(){
        return view('pinjambarang');
    }
    public function store(Request $request){
        DB::table('pinjam')->insert([
            'namapeminjam' => $request->namapeminjam,
            'namabarang' => $request->namabarang,
            'merkbarang' => $request->merkbarang,
            'kodelokasi' => $request->kodelokasi,
            'jumlah' => $request->jumlah,
            'tanggal_pinjam' => $request->tanggal_pinjam,
        ]);
        return redirect('/pinjambarang');
    }
}

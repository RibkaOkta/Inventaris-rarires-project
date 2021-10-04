@extends('superadmin.index')

@section('superadmin')
<div class="card">
  <div class="card-header">
    <p class="fs-2">Data Barang Rusak</p>
  </div>
  <div class="card-body">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">No Inventaris</th>
      <th scope="col">Kode Barang</th>
      <th scope="col">Nama Barang</th>
      <th scope="col">Merk Barang</th>
	  <th scope="col">Lokasi</th>
	  <th scope="col">Kondisi</th>
	  <th scope="col">Keterangan</th>
	  <th scope="col">Opsi</th>
    </tr>
  </thead>
  @foreach($brgrusak as $br)
  <tbody>
  	<tr>
      <th scope="col">{{$br->no}}</th>
      <th scope="col">{{$br->kode_brg}}</th>
      <th scope="col">{{$br->nama_brg}}</th>
      <th scope="col">{{$br->merk_brg}}</th>
	  @foreach($lokasi as $lok)
	  <th scope="col">{{$lok->ket_ruang}}</th>
	  @endforeach
	  <th scope="col">{{$br->kondisi_brg}}</th>
	  <th scope="col">{{$br->ket_brg}}</th>
	  <th><a href="#"><button class="btn btn-warning btn-sm">Diperbaiki</button></a></th>
    </tr>
  </tbody>
  @endforeach
</table>

  </div>
</div>
@endsection

	
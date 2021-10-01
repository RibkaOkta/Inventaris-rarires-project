@extends('dashboard')                   

@section('content')
<script>
</script>
  @if (session('success'))
  <div class="alert-success">
    <p>{{ session('success') }}</p>
  </div>
  @endif

@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="container">
<div class="card text mt-3 ml-5">
  <div class="card-header fw-bold">
  <h1><center> <i class="fas fa-newspaper me-3"></i>Peminjaman Barang</h1></center>
  </div>
  <div class="card-body">
<form method="POST" action="{{ url('pinjambarang') }}">
  @csrf
  @method('PUT')

  <div class="mb-3">
      <label for="namapeminjam" class="form-label">Nama peminjam</label>
      <input value="{{ $pinjam->namapeminjam }}"type="text" class="form-control" id="namapeminjam" name='namapeminjam' required>
    </div>
  <div class="mb-3">
      <label for="namabarang" class="form-label">Nama Barang</label>
      <input value="{{ $pinjam->namabarang}}"type="text" class="form-control" id="namabarang" name='namabarang' required>
    </div>
    <div class="mb-3">
      <label for="merkbarang" class="form-label">Merk Barang</label>
      <input  value="{{ $pinjam->merkbarang}}"type="text" class="form-control" id="merkbarang" name='merkbarang' required>
    </div>
    <div class="mb-3">
      <label for="kodelokasi" class="form-label">Kode Lokasi</label>
      <input  value="{{ $pinjam->kodelokasi}}"type="text" class="form-control" id="kodelokasi" name='kodelokasi' required>
    </div>
    <div class="mb-3">
    <label for="tanggalpinjam" class="form-label">Tanggal Pinjam</label>
    <input value="{{ $pinjam->tanggal_pinjam}}" type="date" class="form-control" id="tanggalpinjam" name='tanggalpinjam' required>
    </div>
    <div class="mb-3">
    <label for="jumlahpinjam" class="form-label">Jumlah Pinjam</label>
    <input  value="{{ $pinjam->jumlah}}"type="text" class="form-control" id="jumlahpinjam" name='jumlahpinjam' required>
    </div>    
  <div class="card-footer text-muted">
  <button type="submit" class="btn btn-dark">Kirim</button>
  </div>
  
@endsection

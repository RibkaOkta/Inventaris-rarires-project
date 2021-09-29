@extends('dashboard')                   

@section('content')
<script>
</script>
<div class="container">
<div class="card text mt-3 ml-5">
  <div class="card-header fw-bold">
  <h1><center> <i class="fas fa-newspaper me-3"></i>Peminjaman Barang</h1></center>
  </div>
  <div class="card-body">
  <form action='/pinjambarang/pinjambarang' method='POST'>
  @csrf
  <div class="mb-3">
      <label for="namapeminjam" class="form-label">Nama peminjam</label>
      <input type="text" class="form-control" id="namapeminjam" name='nama' required>
    </div>
  <div class="mb-3">
      <label for="namabarang" class="form-label">Nama Barang</label>
      <input type="text" class="form-control" id="namabarang" name='namabarang' required>
    </div>
    <div class="mb-3">
      <label for="Merkbarang" class="form-label">Merk Barang</label>
      <input type="text" class="form-control" id="merkbarang" name='merkbarang' required>
    </div>
    <div class="mb-3">
      <label for="kodelokasi" class="form-label">Kode Lokasi</label>
      <input type="text" class="form-control" id="kodelokasi" name='kodelokasi' required>
    </div>
    <div class="mb-3">
    <label for="tanggalpinjam" class="form-label">Tanggal Pinjam</label>
    <input type="date" class="form-control" id="tanggalpinjam" name='tanggal' required>
  </div>  
  <div class="card-footer text-muted">
  <button type="submit" class="btn btn-dark">Kembali</button>
  </div>
  
@endsection


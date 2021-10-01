@extends('dashboard')

@section('content')
<html>
<head>
	<style type="text/css">
		/* Table */
		body {
			font-family: "lucida Sans Unicode", "Lucida Grande", "Segoe UI", vardana
		}
		.demo-table {
			border-collapse: collapse;
			font-size: 12px;
		}
		.demo-table th, 
		.demo-table td {
			padding: 7px 17px;
		}
		.demo-table .title {
			caption-side: bottom;
			margin-top: 12px;
		}
		.demo-table thead th:last-child,
		.demo-table tfoot th:last-child,
		.demo-table tbody td:last-child {
			border: 0;
		}

		/* Table Header */
		.demo-table thead th {
			border-right: 1px solid #c7ecc7;
			text-transform: uppercase;
		}

		/* Table Body */
		.demo-table tbody td {
			color: #353535;
			border-right: 1px solid #c7ecc7;
		}
		.demo-table tbody tr:nth-child(odd) td {
			background-color: #f4fff7;
		}
		.demo-table tbody tr:nth-child(even) td {
			background-color: #dbffe5;
		}
		.demo-table tbody td:nth-child(4),
		.demo-table tbody td:first-child,
		.demo-table tbody td:last-child {
			text-align: right;
		}
		.demo-table tbody tr:hover td {
			background-color: #ffffa2;
			border-color: #ffff0f;
			transition: all .2s;
		}

		/* Table Footer */
		.demo-table tfoot th {
			border-right: 1px solid #c7ecc7;
		}
		.demo-table tfoot th:first-child {
			text-align: right;
		}
	</style>
</head>
<body>
<center><p><h1><i class="fas fa-archway me-3"></i>DATA RUANG</h1></p>
  <link rel="stylesheet" type="text/css" href="style.css">
<center>
  <table class="table caption-top">
    <thead>
    <tr>
      <th scope="col">Kode</th>
      <th scope="col">Arti Kode</th>
      <th scope="col">Keterangan Ruangan</th>
      <th scope="col">Aksi</th>
    </tr>
  </thead>
  <tbody>
	@foreach($lokasiruang as $lr)
	<tr>
      <td>{{$lr->kode_lokasi}}</td>
      <td>Gedung {{$lr->gedung}} Lantai {{$lr->lantai}} Ruangan {{$lr->ruangan}}</td>
      <td>{{$lr->ket_ruang}}</td>
      <td><a href="{{url('dataruangan/'.$lr->kode_lokasi.'/edit')}}"> <button type="button" class="btn btn-warning btn-sm">Edit</button></a></td>
    </tr>
	@endforeach
  </tbody>
</table>
@isset($datalok)
@php




@endphp

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data Ruangan</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
	  <form action='{{route("updateruang")}}' method='POST'>
  @csrf
  <div class="mb-3">
      <label for="kodelokasi" class="form-label">Kode Lokasi</label>
      <input type="text" class="form-control" id="kodelokasi" name='kodelokasi' required value='{{$datalok[0]->kode_lokasi}}'>
    </div>
    <div class="mb-3">
    <label for="gedung" class="form-label">Gedung</label>
    <input type="text" class="form-control" id="gedung" required name='gedung' value='{{$datalok[0]->gedung}}'>
  </div>
  <div class="mb-3">
    <label for="lantai" class="form-label">Lantai</label>
    <input type="text" class="form-control" id="lantai" name='lantai' required value='{{$datalok[0]->lantai}}'>
  </div>
  <div class="mb-3">
    <label for="ruangan" class="form-label">Ruangan</label>
    <input type="text" class="form-control" id="ruangan" name='ruangan' required value='{{$datalok[0]->ruangan}}'>
  </div>

  <div class="mb-3">
    <label for="ketruang" class="form-label">Keterangan Ruangan</label>
    <input type="text" class="form-control" id="ketruang" name='ketruang' required value='{{$datalok[0]->ket_ruang}}'>
  </div>
    
  <div class="mb-3 form-check">
  </div>
      </div>
      <div class="modal-footer">
        <input type="hidden" name='idb' value='{{$datalok[0]->kode_lokasi}}'>
        <button type='submit' class="btn btn-primary">Save changes</button>
      </div>
	  </form>
    @endisset
</body>
</html>

@endsection


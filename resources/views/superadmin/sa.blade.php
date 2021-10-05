@extends('superadmin.welcome')

@section('superadmin')
<div class="card">
  <div class="card-header">
  <p class="fs-2">DATA USER</p>
  </div>
  <div class="card-body">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nama Super Admin</th>
      <th scope="col">Email</th>
      <th scope="col">Level</th>
      <th scope="col">Opsi</th>
    </tr>
  </thead>
  @foreach($users as $s)
 <tbody>
   <tr>
     <th scope="col">{{$s->id}}</th>
     <th scope="col">{{$s->name}}</th>
     <th scope="col">{{$s->email}}</th>
     <th scope="col">{{$s->level}}</th>
     <th><a href="/sa/edit/{{$s->id}}"> <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal">Edit</button></a></th>
   </tr>
 </tbody>
@endforeach

</table>
@isset($users)
@php




@endphp
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data Users</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
	  <form action='{{route("update")}}' method='POST'>
  @csrf
  <div class="mb-3">
      <label for="name" class="form-label">Nama</label>
      <input type="text" class="form-control" id="name" name='name' required value='{{$users[0]->name}}'>
    </div>
    <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="text" class="form-control" id="email" required name='email' value='{{$users[0]->email}}'>
  </div>
  <div class="mb-3">
    <label for="role" class="form-label">Role</label>
    <input type="text" class="form-control" id="role" name='role' required value='{{$users[0]->role}}'>
  </div>
  <div class="mb-3">
    <label for="level" class="form-label">Level</label>
    <input type="text" class="form-control" id="level" name='level' required value='{{$users[0]->level}}'>
  </div>
        <button type='submit' class="btn btn-primary">Save changes</button>
      </div>
	  </form>
    
  </div>
  @endisset
</div>

  
@endsection
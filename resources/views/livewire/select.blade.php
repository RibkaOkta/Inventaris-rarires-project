<div>

<div class="mb-3">
    <label for="kodekelompokalat" class="form-label">Kelompok Alat</label>
      <select  wire:model="alat" id="kodekelompokalat" class="form-select" name='kodekelompokalat' required>
        @foreach($alatt as $k)
          <option value="{{$k->kode_klmpk_alat}}">{{$k->klmpk_alat}}</option>
        @endforeach
      </select>
  </div>
@if(count($kode_alatSection) > 0))
  <div class="mb-3">
      <label for="kodenamabarang" class="form-label kode">Jenis Kelompok Alat</label>
      <!-- <input type="text" class="form-control" id="namabarang" name='kodenamabarang' required> -->
    
      <select wire:model="kode_alat" id="namabarang" class="form-select kodebar" name='kodenamabarang' required >
        
     </select>
    </div>
@endif
</div>
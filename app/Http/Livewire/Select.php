<?php
use App\Models\Barangs;
namespace App\Http\Livewire;
use Livewire\Component;
use App\Jk_alat;
use App\Klmpk_alat;
class Select extends Component
{
    public $alat = null;
    public $kode_alatSection = [];
    public $kode_alat = null ;
   
    public function render()
    {
        if(!empty($this->alat)){
            $this->kode_alatSection = Jk_alat::where('klmpk_alat',$this->alat)
            ->get();
        }
        return view('livewire.select',[
            'alatt' => Klmpk_alat::all(),
        ]);
    }
  
}

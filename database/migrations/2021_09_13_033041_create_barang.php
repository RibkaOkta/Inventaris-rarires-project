<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBarang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('barang', function (Blueprint $table) {
            $table->increments('no');
            $table->integer('kode_brg');
            $table->string('nama_brg');
            $table->string('merk_brg');
            $table->string('bidang_brg');
            $table->string('lokasi');
            $table->date('thn_perolehan');
            $table->string('klmpk_alat');
            $table->integer('urutan_brg');
            $table->integer('jumlah_brg');
            $table->string('kondisi_brg');
            $table->string('sumber_dana');
            $table->string('ket_brg');
            $table->string('kode_lokasi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('barang');
    }
}

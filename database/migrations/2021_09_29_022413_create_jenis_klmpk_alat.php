<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJenisKlmpkAlat extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jenis_klmpk_alat', function (Blueprint $table) {
            $table->increments('kode_barang');
            $table->string('kode_klmpk_alat');
            $table->string('jenis_klmpk_alat');
         
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jenis_klmpk_alat');
    }
}

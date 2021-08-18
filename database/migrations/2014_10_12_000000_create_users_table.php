<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('kelamin');
            $table->string('no_anggota');
            $table->string('tempat_lahir');
            $table->string('tanggal_lahir');
            $table->string('shdk');
            $table->string('agama');
            $table->string('pendidikan');
            $table->string('status_perkawinan');
            $table->string('identitas');
            $table->string('no_identitas');
            $table->string('kk');
            $table->string('ibu');
            $table->string('alamat');
            $table->string('foto');
            $table->boolean('status')->default(1);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}

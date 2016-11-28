<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSealTelecomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('seal_telecoms', function (Blueprint $table) {
            $table->increments('id');
            $table->string('uid');
            $table->string('name');
            $table->string('email');
            $table->integer('commitment');
            $table->integer('proActivity');
            $table->integer('superation');
            $table->integer('teamWork');
            $table->integer('planningAndOrganization');
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
        Schema::dropIfExists('seal_telecoms');
    }
}

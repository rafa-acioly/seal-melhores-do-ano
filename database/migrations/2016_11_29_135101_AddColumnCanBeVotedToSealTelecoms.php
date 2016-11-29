<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnCanBeVotedToSealTelecoms extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('seal_telecoms', function (Blueprint $table) {
           $table->integer('canBeVoted')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('seal_telecoms', function (Blueprint $table) {
           $table->dropColumn('canBeVoted');
        });
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnCanBeVotedToSealTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('seals', function(Blueprint $blueprint) {
           $blueprint->integer('canBeVoted')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('seals', function (Blueprint $blueprint) {
           $blueprint->dropColumn('canBeVoted');
        });
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Organisation extends Model
{
    public function transactions(){
    	return $this->belongsToMany('App\Transaction');
    }

    public function O_cat(){
    	return $this->belongsTo('App\O_cat');
    }

}

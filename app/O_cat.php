<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class O_cat extends Model
{
        public function organisations(){
    	return $this->hasMany('App\Organisation');
    }
}

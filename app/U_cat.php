<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class U_cat extends Model
{
    public function users(){
    	return $this->hasMany('App\User');
    }

}

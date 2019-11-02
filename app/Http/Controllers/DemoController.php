<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Transaction;
use App\U_Cat;
use App\Organisation;
use App\Badge;
use App\Badge_user;

use Auth;

use Illuminate\Support\Facades\DB;

class DemoController extends Controller
{

    public function readOrganizations()
    {
        $organisations = Organisation::orderBy('created_at', 'DESC')->get();

        return $organisations;
    }

    public function readOrganizationsByCat($category)
    {
        $organisations;

        if($category == null){
            return "error";
        }
        else{
            $organisations = Organisation::where('o_cat_id', $category)->orderBy('created_at', 'DESC')->get();
        }

        return $organisations;
    }

    public function searchOrganizations(request $request)
    {
        $organisations = Organisation::where('name', 'like', '%'.$request['name'].'%' )->
            orderBy('created_at', 'DESC')->get();

        return $organisations;
    }

    public function makeTransaction(request $request)
    {

        DB::beginTransaction();
        try{
            $transaction = new Transaction;
            $transaction->user_id = Auth::user()->id;
            $transaction->organisation_id = $request['organisation_id'];
            $transaction->amount = $request['amount'];
            $transaction->save();
    
            $user = User::find(Auth::user()->id);
            $level = 0;
            $paid_in_charity = $user->paid_in_charity;
            $paid_in_charity += $transaction->amount;

            if($user->paid_in_charity == 0){
                $this->giveBadge($user->id, 1);
            }


            if($paid_in_charity >= $user->u_cat->step){
                $quotient = (int) ($paid_in_charity / $user->u_cat->step);
    
                $paid_in_charity -= $user->u_cat->step * $quotient;
                $level += $quotient;

            }

            $user->paid_in_charity = $paid_in_charity;
            $user->level = $user->level + $level;
            $user->save();

            if($user->level > $user->u_cat->max_level){
                $user->u_cat_id =  $user->u_cat_id + 1;
                $user->save();

                $this->giveBadge($user->id, $user->u_cat_id);
            }

            DB::commit();

            return "success";

        }
        catch(Exception $e){
            DB::rollback();
            return "Something went wrong";
        }

    }

    private function giveBadge($user_id, $badge_id){
        $pivot = new Badge_user();
        $pivot->user_id = $user_id;
        $pivot->badge_id = $badge_id;
        $pivot->save();
    }
}

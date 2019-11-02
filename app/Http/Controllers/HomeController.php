<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;

use App\User;
use App\Transaction;
use App\U_Cat;
use App\Organisation;
use App\Badge;
use App\Badge_user;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $badges = Auth::user()->badges;

        $progress_info = [
            'level' => Auth::user()->level,
            'current_xp' => Auth::user()->paid_in_charity,
            'next_level_xp' => Auth::user()->u_cat->step,
        ];

        return view('home')->with('progress_info', $progress_info)->with('badges', $badges);
    }
}

<?php

namespace App\Http\Controllers\antarmuka;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PasienviewController extends Controller
{
    public function daftarpoli()
    {
            $spesialis = DB::table('spesialis')->get();
            return view('antarmuka.daftarpoli' , ['spesialis' => $spesialis]);
    }

    public function daftardokter()
    {
        $dokters = DB::table('user_dokter')->select('img_dokter','nama_dokter', 'spesialis_id')->get();
        return view('antarmuka.daftardokter', ['user_dokter'=>$dokters]);
    }
}

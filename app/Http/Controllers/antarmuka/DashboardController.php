<?php

namespace App\Http\Controllers\antarmuka;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard()
    {
        return view('antarmuka.dashboard');
    }

    public function konsultasi2()
    {
        return view('konsultasi2');
    }
    public function dashboard2()
    {
        return view('antarmuka.dashboard2');
    }
    public function create()
    {
        return view('registrasi');
    }
}

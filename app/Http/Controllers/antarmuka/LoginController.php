<?php

namespace App\Http\Controllers\antarmuka;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{


    protected $redirectTo = RouteServiceProvider::DASHBOARD;

    public function showLoginForm()
    {
        return view('antarmuka.masuk'); // Tampilkan form login
    }

    public function masuk(Request $request)
    {
        // Validasi input
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Coba melakukan autentikasi
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)){
              // Jika autentikasi berhasil, redirect ke dashboard
              return redirect()->route('dashboard2');
        };


        // Jika autentikasi gagal, kembalikan ke halaman login dengan pesan error
        return redirect()->route('masuk')->with('error', 'Email atau password salah');
    }

    public function logout()
    {


        Auth::logout(); // Lakukan proses logout
        return redirect()->route('login'); // Redirect ke halaman login setelah logout
    }
}



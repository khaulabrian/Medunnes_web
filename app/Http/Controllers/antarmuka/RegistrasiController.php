<?php

namespace App\Http\Controllers\antarmuka;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class RegistrasiController extends Controller
{


    protected $redirectTo = RouteServiceProvider::DASHBOARD;
    public function showRegistrationForm()
    {
        // Logika untuk menampilkan formulir pendaftaran kedua
        return view('antarmuka.registrasi');
    }

    protected function createUser(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }

    protected function debugDatabaseQuery($data, $afterValidation = false)
{
    $query = DB::table('nama_tabel_yang_benar')
        ->where('name', '=', $data['name'])
        ->where('email', '=', $data['email'])
        ->where('password', '=', Hash::make($data['password']));

    if ($afterValidation) {
        $query->toSql();
        dd($query->toSql(), $query->getBindings());
    } else {
        dd($query->toSql(), $query->getBindings());
    }
}

public function regist(Request $request)
{
    // Lakukan logika registrasi sesuai kebutuhan Anda
    $this->create($request);

    // Redirect ke rute masuk
    return redirect()->route('masuk');
}

}

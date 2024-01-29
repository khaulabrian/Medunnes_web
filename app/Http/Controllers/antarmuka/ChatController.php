<?php

namespace App\Http\Controllers\antarmuka;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Events\ChatMessage;
use App\Models\Dokter;
use App\Models\Pasien;
use Illuminate\Support\Facades\DB;

class ChatController extends Controller
{
    public function index(){
        $dokters = DB::table('user_dokter')->select('img_dokter','nama_dokter', 'spesialis_id')->get();
        return view('chat.index', ['dokters' => $dokters]);
    }

    public function show($nama_dokter)
    {
        // ... (proses logika untuk mendapatkan informasi dokter berdasarkan $nama_dokter)
        $dokters = DB::table('user_dokter')->select('img_dokter','nama_dokter', 'spesialis_id')->get();
        return view('antarmuka.chat', [
            'nama_dokter' => $nama_dokter,
            'dokters' => $dokters , // Sesuaikan dengan cara mendapatkan data dokter
        ]);
    }

    public function sendMessage(Request $request)
    {
        // Validasi dan logika bisnis

        $sender = auth()->user()->nama; // Nama pengirim (bisa pasien atau dokter)
        $text = $request->input('message');
        $receiver = $request->input('receiver');

        // Kirim pesan ke Pusher menggunakan event ChatMessage
        broadcast(new ChatMessage($sender, $text, $receiver))->toOthers(); // Use toOthers to exclude the current user

        // Logika menyimpan pesan ke database (opsional)

        return response()->json(['status' => 'success']);
    }
}

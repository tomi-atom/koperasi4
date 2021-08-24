<?php

namespace App\Http\Controllers;

use App\Pinjaman;
use App\PinjamanDetail;
use App\Simpanan;
use App\User;
use Illuminate\Http\Request;

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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pinjaman = Pinjaman::with(['user'])->orderBy('id', 'desc');
        $pinjamandetail = PinjamanDetail::with(['user'])->orderBy('id', 'desc');
        $simpanan = Simpanan::with(['user'])->orderBy('id', 'desc');
        foreach ($pinjaman as $value) {
            $value->total_pinjaman = $value->detail()->sum('jumlah');
            $value->sudah_bayar = $value->detail()->sum('pokok');
            $value->bunga = $value->detail()->sum('bunga');
            $value->sisa_bayar = $value->jumlah - $value->detail()->sum('pokok');
        }
        foreach ($pinjamandetail as $value) {
            $value->bunga = $value->detail()->sum('bunga');
            $value->pokok = $value->detail()->sum('pokok');
        }
        foreach ($simpanan as $value) {
            $value->sudah_bayar = $value->detail()->sum('pokok');
            $value->bunga = $value->detail()->sum('bunga');
            $value->sisa_bayar = $value->jumlah - $value->detail()->sum('pokok');
        }

        $data['pinjaman'] = $pinjaman;
        $data['pinjamandetail'] = $pinjamandetail;
        $data['simpanan'] = $simpanan;
        $data['nasabah'] = User::role('nasabah')->get();

        return view('home', $data);
    }
}

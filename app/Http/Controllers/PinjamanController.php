<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\Pinjaman;
use App\Simpanan;
use App\PinjamanDetail;
use Auth;
use Carbon\Carbon;
use Rap2hpoutre\FastExcel\FastExcel;

class PinjamanController extends Controller
{
    public function index(Request $request)
    {
        return view('pinjaman.index');
    }

    public function store(Request $request)
    {
        $saldo = Simpanan::sum('debit') - Simpanan::sum('kredit');

        if ($saldo < $request->jumlah) {
            return \Response::json(array(
                'message'   =>  'Maaf, Tidak bisa melakukan penarikan. Saldo anda kurang ' . ($request->jumlah-$saldo)
            ), 404);
        }

        $pinjaman = new Pinjaman;
        $pinjaman->fill($request->all());
        $pinjaman->pengelola = Auth::user()->name;
        $pinjaman->save();

        return $pinjaman;

    }

    public function update(Request $request, $id)
    {
        $pinjaman = Pinjaman::find($id);
        $pinjaman->fill($request->except('kode_transaksi'));
        $pinjaman->save();

        return $pinjaman;
    }

    public function edit($id)
    {
        $data['pinjaman'] = Pinjaman::find($id);

        return view('pinjaman.edit', $data);
    }

    public function destroy($id)
    {
        PinjamanDetail::destroy($id);

        return back();
    }

    public function report(Request $request)
    {
        $pinjaman = Pinjaman::with(['user'])->orderBy('id', 'desc')->where('user_id', 'like', '%'.$request->user_id)->get();
        foreach ($pinjaman as $value) {


            $value->sudah_bayar = $value->detail()->sum('bayar_bulanan');
            $value->sisa_bayar = $value->jumlah - $value->detail()->sum('bayar_bulanan');
        }

        $data = $pinjaman;
        //$data['periode'] = $request->tgl_awal . ' - ' . $request->tgl_akhir;

        return (new FastExcel($data))->download('laporan pinjaman.xlsx');
    }

    public function struk($id)
    {
        $pinjaman = Pinjaman::find($id);
        $data['struk'] = Pinjaman::find($id);
        $data['user'] = User::find($pinjaman->user_id);
        $user = User::find($pinjaman->user_id);

        $now = Carbon::now(); // Tanggal sekarang
        $b_day = Carbon::parse($user->tanggal_lahir); // Tanggal Lahir
        $age = $b_day->diffInYears($now);  // Menghitung umur
        $data['umur'] = $age;
        return view('pinjaman.struk', $data);
    }
    public function strukpembayaran($id,$ke)
    {
        $idpinjaman = PinjamanDetail::find($id);
        $data['id'] = Pinjaman::find($idpinjaman->pinjaman_id);
        $data['struk'] = Pinjaman::find($idpinjaman->pinjaman_id);
        $data['ke'] = $ke;

        return view('pinjaman.strukpembayaran', $data);
    }
}

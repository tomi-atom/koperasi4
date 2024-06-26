<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Simpanan;
use Maatwebsite\Excel\Facades\Excel;
use Rap2hpoutre\FastExcel\FastExcel;
use Auth;

class NeracaController extends Controller
{
    public function index()
    {
        return view('neraca.index');
    }

    public function store(Request $request)
    {
        $saldo = Simpanan::whereUserId($request->user_id)->sum('debit') - Simpanan::whereUserId($request->user_id)->sum('kredit');

        if ($saldo < $request->kredit) {
            return \Response::json(array(
                'message'   =>  'Maaf, Tidak bisa melakukan neraca. Saldo anda kurang ' . ($request->kredit-$saldo)
                            ), 404);
        }

        $simpanan = new Simpanan;
        $simpanan->fill($request->all());
        $simpanan->saldo = $saldo - $request->kredit;
        $simpanan->pengelola = Auth::user()->name;
        $simpanan->save();

        return $simpanan;
    }

    public function update(Request $request, $id)
    {
        $saldo = Simpanan::whereUserId($request->user_id)->sum('debit') - Simpanan::whereUserId($request->user_id)->sum('kredit');

        $simpanan = Simpanan::find($id);
        $simpanan->fill($request->except('kode_transaksi'));
        $simpanan->saldo = $saldo - $request->kredit;
        $simpanan->save();

        return $simpanan;
    }

    public function report(Request $request)
    {
        $data = Simpanan::select('name','tanggal','jenis','kode_transaksi','debit','kredit','saldo')
            ->leftJoin('users','simpanans.user_id','users.id')
        ->whereBetween('tanggal', [$request->tgl_awal, $request->tgl_akhir])->where('user_id', 'like', '%'.$request->user_id)->get();

        return (new FastExcel($data))->download('laporanneraca.xlsx');

    }

    public function struk($id)
    {
        $data['struk'] = Simpanan::find($id);

        return view('neraca.struk', $data);
    }
}

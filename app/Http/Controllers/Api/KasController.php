<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Kas;
use App\User;

class KasController extends Controller
{
    public function index(Request $request)
    {
        return Kas::with('user')->search($request->q)->orderBy('id', 'desc')->paginate(5);
    }

    public function create()
    {
        return User::role('nasabah')->get();
    }

    public function destroy($id)
    {
        return Kas::destroy($id);
    }

    public function show($id)
    {
        return Kas::find($id);
    }
}

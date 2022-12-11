<?php

namespace App\Http\Controllers;

// use App\Models\rulediagnosa;

use App\Models\gejala;
use App\Models\indikatorbobot;
use App\Models\penyakit;
use App\Models\rulediagnosa;
use Illuminate\Http\Request;

class RulediagnosaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['rulediagnosas'] = rulediagnosa::select('bobot.*', 'penyakit.nama_penyakit', 'gejala.gejala')
        ->join('penyakit', 'bobot.kd_penyakit', 'penyakit.kd_penyakit')
        ->join('gejala', 'bobot.kd_gejala', 'gejala.kd_gejala')->paginate(4);
        return view('diagnosa.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('diagnosa.create',[
            'rulediagnosas'=> rulediagnosa::all(), 'penyakits'=> penyakit::all(),  'gejalas'=> gejala::all(), 'indikatorbobots' => indikatorbobot::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
            $data = [
                'kd_penyakit' => $request->kd_penyakit,
                'kd_gejala' => $request->kd_gejala,
                'bobot' => $request->bobot,
            ];
            rulediagnosa::create($data);

            return redirect('/rulediagnosa')
            ->with('success', 'Rincian Biaya Berhasil Ditambahkan'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\rulediagnosa  $rulediagnosa
     * @return \Illuminate\Http\Response
     */
    public function show( $id)
    {
        //
        $data['rulediagnosas'] = rulediagnosa::select('bobot.*', 'penyakit.nama_penyakit', 'gejala.gejala')
        ->join('penyakit', 'bobot.kd_penyakit', 'penyakit.kd_penyakit')
        ->join('gejala', 'bobot.kd_gejala', 'gejala.kd_gejala')
        ->where('bobot.id', $id)->first();
        return view('diagnosa.detail', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\rulediagnosa  $rulediagnosa
     * @return \Illuminate\Http\Response
     */
    public function edit( $id)
    {
        //
        $cek=rulediagnosa::where('id', $id)->first();
        return view('diagnosa.edit', [
            'rulediagnosas' => $cek, 'penyakits'=> penyakit::all(),  'gejalas'=> gejala::all(), 'indikatorbobots' => indikatorbobot::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\rulediagnosa  $rulediagnosa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        //
        $rules = [
            'kd_penyakit' => 'required',
            'kd_gejala' => 'required',
            'bobot' => 'required',
 
        ];

        $request->validate($rules);

        $data = [
            'kd_penyakit' => $request->kd_penyakit,
                'kd_gejala' => $request->kd_gejala,
                'bobot' => $request->bobot,
        ];

        rulediagnosa::where('id', $id)->update($data);


        return redirect('/rulediagnosa')->with('toast_success', 'rincianbiaya berhasil di edit!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\rulediagnosa  $rulediagnosa
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {
        //
        rulediagnosa::destroy($id);
        return redirect('/rulediagnosa')->with('toast_success', 'rincianbiaya berhasil di hapus!');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\gejala;
use DB;
use Redirect;

class DiagnosaUserController extends Controller
{
    public function index()
    {
        $data['gejala'] = gejala::get();
        return view('diagnosauser.index',$data);
    }

    public function hasil(Request $request)
    {
        if (isset($request->gejala))
        {
            $selectors  = htmlentities(implode(',', $request->gejala));
        }

        $data=$selectors;
        $input = $data;
        $pecah = explode("\r\n\r\n", $input);

        $text = "";
      
        for ($i=0; $i<=count($pecah)-1; $i++)
        {
            $part = str_replace($pecah[$i], "<p>".$pecah[$i]."</p>", $pecah[$i]);
            $text .=$part;
        }
        DB::table('tmp_gejala')->delete();
        $text_line=$data;
        $text_line =$data; //"Poll number 1, 1500, 250, 150, 100, 1000";
        $text_line = explode(",",$text_line);
        $posisi=0;
        for ($start=0; $start < count($text_line); $start++) {
            $baris=$text_line[$start]; //echo "$baris<br>";
            DB::table('tmp_gejala')->insert(['kd_gejala' => $baris]);
            $posisi++;
        }

        DB::table('tmp_penyakit')->delete();

        $data_penyakit = DB::table('bobot')->groupBy('kd_penyakit')->get();
        foreach ($data_penyakit as $key) {
            // code...
        }

        return view('diagnosauser.hasil');
    }
}

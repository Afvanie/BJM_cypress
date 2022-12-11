@extends('layoutuser.main')
@section('content')                     
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <h1 class="h3 mb-2 text-gray-800">Hasil Diagnosa</h1>
        <p class="mb-4">Berikut merupakan data hasil diagnosa</p>
        <br>
        <div class="w3-container w3-light-gray">
            <?php 
            DB::table('tmp_penyakit')->delete();

            $data_penyakit = DB::table('bobot')->groupBy('kd_penyakit')->get();
            ?>
            <div class="card shadow mb-4">
                <div class="card-body">
                    <center><h2>DIAGNOSA KERUSAKAN MOBIL</h2></center>
                    <div class="row">
                        <div class="col-md-12">
                            @foreach($data_penyakit as $item)
                                <!-- Kode penyakit : {{$item->kd_penyakit}}<br> -->
                                <?php 
                                $var1=0; $var2=0;
                                $query_gejala = DB::table('bobot')->where('kd_penyakit', $item->kd_penyakit)->get();
                                $querySUM = DB::table('bobot')->where('kd_penyakit', $item->kd_penyakit)->sum('bobot');
                                ?>
                                <p>
                                <!-- Jumlah Bobot Dari Semua Gejala : {{$querySUM}}<br><br> -->
                                @foreach($query_gejala as $item_gejala)
                                    <?php 
                                    $kode_gejala_bobot=$item_gejala->kd_gejala;
                                    $bobotbobot=$item_gejala->bobot;
                                    ?>
                                    <!-- <strong>Kode Gejala :</strong> {{$item_gejala->kd_gejala}} <strong><br>Bobotnya</strong> : {{$item_gejala->bobot}}<br> -->
                                    <?php 
                                    $query_tmp_gejala = DB::table('tmp_gejala')->where('kd_gejala', $item_gejala->kd_gejala)->get();
                                    ?>
                                    @if(count($query_tmp_gejala) > 0)
                                    <?php $bobotNilai=$item_gejala->bobot*1 ?>
                                    <!-- <span class='w3-text-blue'><b>Ini Gejala Yang Dipilih</b></span><br> -->
                                    <!-- Nilai Bobot Dikali 1 => {{$item_gejala->bobot}} x 1 = {{$bobotNilai}}<br> -->
                                    <?php 
                                    $var1=$bobotNilai/$querySUM; 
                                    // echo "Nilai Bobot Dibagi Jumlah Seluruh Bobot => ".$bobotNilai." / ".$querySUM." = ".$var1;
                                    ?>
                                    @else
                                    <!-- Gejala Ini Tidak Dipilih<br> -->
                                    <?php
                                    $bobotNilai=$bobotbobot*0; //echo "Nilai = ".$bobotNilai;
                                    $var2=$bobotNilai+$bobotNilai; //echo "Nilai Jika 0=". $var2;
                                    ?>
                                    @endif
                                    <?php
                                    $Nilai_tmp_gejala=$var1+$var2; //echo "Nilai akhir".$Nilai_tmp_gejala;
                                    $Nilai_bawah=@$Nilai_bawah + $bobotbobot;
                                    $Nilai_Pembilang=$Nilai_tmp_gejala;
                                    $Nilai_Penyebut=$Nilai_bawah;
                                    // menghasilkan nilai Similarity dengan membagikan $Nilai_Pembilang/$Nilai_Penyebut
                                    $Similarity=$Nilai_Pembilang/$Nilai_Penyebut;
                                    ?>
                                </p>
                                @endforeach
                                <?php
                                DB::table('tmp_penyakit')->insert(['kd_penyakit' => $item->kd_penyakit, 'nilai' => $var1]);
                                $rowMin = DB::table('tmp_penyakit')->orderBy('nilai', 'desc')->first();
                                $rendah=$rowMin->nilai; //echo $rendah;
                                ?>
                                <!-- <hr><b>Nilai Gejala Yang Paling Dominan :<br>Sebesar {{$rowMin->nilai}}</b><br><hr>
                                Penyakit Akhir : {{$rowMin->kd_penyakit}}<br><hr> -->
                                <?php 
                                $sql_pilih_penyakit = DB::table('penyakit')->where('kd_penyakit', $rowMin->kd_penyakit)->first();
                                $kd_penyakit=$sql_pilih_penyakit->kd_penyakit;
                                $penyakit=$sql_pilih_penyakit->nama_penyakit;
                                $keterangan_penyakit=$sql_pilih_penyakit->definisi;
                                $solusi=$sql_pilih_penyakit->solusi;
                                ?>
                            @endforeach
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <?php 
                            $gejala_dipilih = DB::table('tmp_gejala')->select('gejala.gejala as namagejala', 'tmp_gejala.kd_gejala')->join('gejala', 'tmp_gejala.kd_gejala', 'gejala.kd_gejala')->get();
                            ?>
                            <table class="table table-striped">
                              <tbody>
                                <tr>
                                  <td>Nama</td>
                                  <td style="text-align: right">{{auth()->user()->nama}}</td>
                                </tr>
                                <tr>
                                  <td>Email</td>
                                  <td style="text-align: right">{{auth()->user()->email}}</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <strong>GEJALA YANG DIPILIH</strong>
                                        <ol>
                                            @foreach($gejala_dipilih as $item)
                                            <li>{{$item->namagejala}}</li>
                                            @endforeach
                                        </ol>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <?php
                                        $nilaiTotal = DB::table('tmp_penyakit')->sum('nilai');
                                        echo "<center>Nilai Total (Nilai P1 + Nilai P2 + Nilai P3) : <b>". $nilaiTotal. "</b></center>";
                                        $query_sum_tmp = DB::table('tmp_penyakit')->where('nilai', "!=", "0")->orderBy('nilai', 'DESC')->get();;
                                        ?>
                                        @foreach($query_sum_tmp as $item)
                                            <?php
                                            $nilai=$item->nilai;
                                            $nilai_persen=$nilai/$nilaiTotal*100;
                                            $data_persen=$nilai_persen;
                                            $persen=substr($data_persen,0,5);
                                            echo "<center>";
                                            echo "Nilai Gejala Yang Diambil : <b>".$nilai."</b><br>";
                                            echo "Nilai Persen (Nilai Gejala / Nilai Total x 100) : <b>".$persen. "%</b></center><br>";
                                            $kd_pen2=$item->kd_penyakit;
                                            $query_penyasol = DB::table('penyakit')->where('kd_penyakit', $kd_pen2)->get();;
                                            ?>
                                            @foreach($query_penyasol as $item_penyasol)
                                            @if($persen==100||$persen>=70)
                                            <?php
                                            echo "<center><strong>KERUSAKAN MOBIL ANDA</strong></center>";
                                            echo "<center><strong>".strtoupper($item_penyasol->nama_penyakit)."</strong></center><hr>";
                                            echo "<p>Apa Itu <b>".strtoupper($item_penyasol->nama_penyakit)."</b>?<br>
                                            ".$item_penyasol->definisi."
                                            </p>";
                                            echo "<br>";
                                            echo "<p><b>Solusi Kerusakan</b><br>
                                            ".$item_penyasol->solusi."</div>";
                                            echo "<p>";
                                            ?>
                                            @else
                                            <?php
                                            //KALAU LEBIH DARI 1 PENYAKIT NYA
                                                echo "<center><strong>KERUSAKAN MOBIL ANDA</strong></center>";
                                                echo "<center><strong>".strtoupper($item_penyasol->nama_penyakit)."</strong></center>";
                                                echo "<center><span class='w3-tag'>Sebesar ".$persen."%</span></center><hr>";
                                            echo "<p>Apa Itu <b>".strtoupper($item_penyasol->nama_penyakit)."</b>?<br>
                                            ".$item_penyasol->definisi."
                                            </p>";
                                            echo "<br>";
                                            echo "<p><b>Solusi Kerusakan</b><br>
                                            ".$item_penyasol->solusi."</p>";
                                            echo "<hr>";
                                            
                                            ?>
                                            @endif
                                            @endforeach
                                        @endforeach
                                    </td>
                                </tr>
                              </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection('content')
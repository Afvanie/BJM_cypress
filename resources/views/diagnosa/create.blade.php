@extends('layout.main')
@section('content')
<div class="container mt-3">
    <div class="row justify-content-center align-items-center">
        <div class="card">
            <div class="card-header">Tambah Data Rule Diagnosa
            </div>
            <div class="card-body">
                @if ($errors->any())
                <div class="alert alert-danger">
                    <strong>Whoops!</strong> There were some problems with your input.<br><br>
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
                <form method="post" action="/rulediagnosa" id="myForm" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="nama">Pilih Kode Penyakit</label>
                        <select name="kd_penyakit" class="form-control" id="kd_penyakit">
                            @foreach ($penyakits as $penyakit)
                            <option value="{{$penyakit->kd_penyakit}}">{{$penyakit->kd_penyakit}} | {{$penyakit->nama_penyakit}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nama">Pilih Bobot</label>
                        <select name="bobot" class="form-control" id="bobot">
                            @foreach ($indikatorbobots as $bobot)
                            <option value="{{$bobot->nilai}}">{{$bobot->nama_indikator}} | {{$bobot->nilai}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nama">Pilih Gejala</label>
                        <select name="kd_gejala" class="form-control" id="kd_gejala">
                            @foreach ($gejalas as $gejala)
                            <option value="{{$gejala->kd_gejala}}">{{$gejala->kd_gejala}} | {{$gejala->gejala}}</option>
                            @endforeach
                        </select>
                    </div>
                    
                    <br>                    
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
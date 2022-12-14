@extends('layout.main')
@section('content')
    <div class="container mt-3">
        <div class="row justify-content-center align-items-center">
            <div class="card">
                <div class="card-header">
                    Edit Rule Diganosa
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
                    <form method="post" action="/rulediagnosa/{{ $rulediagnosas->id }}" id="myForm"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <div class="form-group">
                                <label for="nama">Pilih Kode Penyakit</label>
                                <select name="kd_gejala" class="form-control" id="penyakits_id">
                                    @foreach ($penyakits as $penyakit)
                                        <option value="{{ $penyakit->kd_gejala }}"
                                            {{ $rulediagnosas->kd_gejala == $penyakit->kd_gejala ? 'selected' : '' }}>
                                            {{ $penyakit->kd_gejala }} | {{$penyakit->nama_penyakit}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="nama">Nilai Bobot</label>
                                <input type="number" class="form-control" name="bobot" placeholer="Isi nilai bobot" required value="{{$rulediagnosas->bobot}}"/>
                            </div>

                            <div class="form-group">
                                <label for="nama">Pilih Bobot</label>
                                <select name="bobot" class="form-control" id="bobot">
                                    @foreach ($indikatorbobots as $bobot)
                                    <option value="{{$bobot->nilai}}" {{ $rulediagnosas->nilai == $bobot->nilai ? 'selected' : '' }}>{{$bobot->nama_indikator}} | {{$bobot->nilai}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="nama">Pilih Gejala</label>
                                <select name="kd_gejala" class="form-control" id="kd_gejala">
                                    @foreach ($gejalas as $gejala)
                                        <option value="{{ $gejala->kd_gejala }}"
                                            {{ $rulediagnosas->kd_gejala == $gejala->kd_gejala ? 'selected' : '' }}>
                                            {{ $gejala->kd_gejala }} | {{$gejala->gejala}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

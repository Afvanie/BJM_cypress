@extends('layoutuser.main')
@section('content')                     
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->

      @if(Session::has('berhasil'))
          <div class="alert alert-success">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <strong>Success,</strong>
              {{ Session::get('berhasil') }}
          </div>
      @endif
        <!-- DataTales Example -->
     <div class="w3-container w3-light-gray">
         <div class="w3-row">
             <div class="w3-col l1">&nbsp;</div>
             <div class="w3-col l10 w3-white">
                 <div class="w3-container">
                     <div class="w3-row">
                         <div class="w3-col l12 w3-center">
                         <h1 class="h3 mb-2 text-gray-800"><center>SISTEM PAKAR</center></h1>
                             <div class="w3-large"><strong><center>DIAGNOSIS KERUSAKAN MOBIL</center></strong></div>
                             <div class="w3-small" style="margin-top:3px;"><center>MENGGUNAKAN METODE <strong>FORDWARD CHAINING</center></strong></div>
                         </div>

                     </div>
                     <hr>
                 </div>

                 <div class="w3-container">
                     <div class="w3-row">
    
                         <div class="w3-col l9" style="padding-left:8px;">
                             <div class="w3-border w3-padding">
                                 <div class="w3-border-bottom" style="padding-bottom:10px; margin-top:8px;"><strong><i
                                             class="fa fa-check"></i> PILIH GEJALA</strong></div>
                                 <div class="w3-padding w3-center w3-border w3-border-yellow w3-pale-yellow w3-small"
                                     style="margin-top:8px;">
                                     <div class="w3-medium">Pilih Gejala Kerusakan Pada Mobil Anda</div>
                                 </div>



                                 <form method="post" name="form" target="_self" action="{{route('diagnosauser.hasil')}}">
                                    @csrf
                                     <ul style="list-style:none; margin-top:8px;" class="w3-ul w3-border">
                                        @foreach($gejala as $item)
                                         <li class="w3-small w3-justify"><input style="cursor:pointer" type="checkbox"
                                                 class="w3-check" name="gejala[]" id="gejala"
                                                 value="{{$item->kd_gejala}}"><span
                                                 style="margin-left:10px;">{{$item->gejala}}</span></li>
                                        @endforeach
                                     </ul>
                                     <hr>
                                     <div class="w3-center">
                                        <button type="submit" class="btn mb-3 btn-primary btn-icon-split btn-sm"><i class="fa fa-save fa-fw"></i> Mulai Diagnosa</button>
                                     </div>

                                 </form>

                                 <br>
                             </div>

                         </div>
                     </div>
                 </div><br>

             </div>
             <div class="w3-col l1">&nbsp;</div>
         </div>
     </div>
     <br>
      </div>
      <!-- /.container-fluid -->
</div>
</div>       
@endsection
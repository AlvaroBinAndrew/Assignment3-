@extends('layouts.frontend')

@section('content')
<div class="container curhat-section" >
  <h3>RUANG CURHAT</h3>
<div class="card" style="">
  <!-- <img src="..." class="card-img-top" alt="..."> -->
  <div class="card-body">
    <div class="text-right"><button class="btn btn-primary" data-toggle="modal" data-target="#modalPost">Create New Post</button></div>
    <br/>
    @foreach($curhats as $curhat)
    <div class="card" style="margin-bottom: 15px;">
      <div class="card-body" >
        <div class="row">
          <div class="col-1"><img src="{{asset('img/usericon.png')}}" class="img-fluid"></div>
          <div class="col-11" style="padding:0;padding-bottom: 40px;position: relative;">
          <h3>{{$curhat->nama}}</h3>
          <div>
          <i class="fas fa-clock"></i> {{date('M d, Y',strtotime($curhat->created_at))}}
          </div>
          <p style="text-align:justify;line-height: 1.2em;">{!!$curhat->pesan!!}</p>

          <?php
          $komentars = \App\Model\KomentarModel::where('curhat_id',$curhat->id)->get();
          ?>



          <?php
          $komentars = \App\Model\KomentarModel::where('curhat_id',$curhat->id)->get();
          ?>
          @if($komentars->count())
          <div id="komentar_{{$curhat->id}}" style="display: none;">
            @foreach($komentars as $komentar)





    <div class="card" style="margin-bottom: 15px;">
      <div class="card-body" >
        <div class="row">
          <div class="col-1"><img src="{{asset('img/usericon.png')}}" class="img-fluid"></div>
          <div class="col-11">
          <h3>{{$komentar->nama}}</h3>
          <div>
          <i class="fas fa-clock"></i> {{date('M d, Y',strtotime($komentar->created_at))}}
          </div>
          <p style="text-align:justify;line-height: 1.2em;">{!!$komentar->pesan!!}</p>


          </div>

        </div>
      </div>
    </div>





              
            @endforeach
          </div>
          @endif



          <div class="text-right" style="position: absolute;bottom: 0;width:100%;">
            <i class="fa fa-comment" onclick="$('#komentar_<?php echo $curhat->id?>').toggle('slow')" style="cursor: pointer;" title="Tampilkan/sembunyikan komentar"></i>{{$komentars->count()}} <button class="btn btn-primary btn-sm btn-reply" data-toggle="modal" data-target="#modalReply" data-id="{{$curhat->id}}" >Beri Komentar</button>
          </div>

          </div>

        </div>
      </div>
    </div>
    @endforeach











  </div>
</div>


</div>
<!-- Modal -->
<div class="modal fade" id="modalPost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Kirim Curhat</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

<form id="form-curhat" onsubmit="return postCurhat()">
  @csrf()
  <div class="form-group">
    <label for="exampleInputEmail1">Nama</label>
    <input type="text" name="nama" class="form-control" id="nama"  placeholder="Nama" required="required">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Pesan</label>
    <textarea name="pesan" class="form-control" placeholder="Pesan" required="required"></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>        
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="modalReply" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Balas Curhat</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<form id="form-reply" onsubmit="return postReply()">
<input type="hidden" name="curhat_id" id="curhat_id" value="">
  @csrf()
  <div class="form-group">
    <label for="exampleInputEmail1">Nama</label>
    <input type="text" name="nama" class="form-control" id="nama"  placeholder="Nama" required="required">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Pesan</label>
    <textarea name="pesan" class="form-control" placeholder="Pesan" required="required"></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>        
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<style type="text/css">
  .curhat-section{
    padding: 20px;
  }
  .curhat-section>h3{
    text-align: center;
    font-weight: bold;
  }
</style>
@stop
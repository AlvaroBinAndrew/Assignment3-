@extends('layouts.frontend')

@section('content')
<div class="container curhat-section" >
  <h3>RUANG CURHAT</h3>
<div class="card" style="">
  <!-- <img src="..." class="card-img-top" alt="..."> -->
  <div class="card-body">
    <div class="text-right"><a href=""><button class="btn btn-primary">Create New Post</button></a></div>
    <br/>
    <div class="card" >
      <div class="card-body" >
        <div class="row">
          <div class="col-1"><img src="{{asset('img/usericon.png')}}" class="img-fluid"></div>
          <div class="col-11" style="padding:0;padding-bottom: 50px;position: relative;">
          <h3>Anonymous</h3>
          <div>
          <i class="fas fa-clock"></i> Dec 08, 2020
          </div>
          <p>Phasellus elementum ullamcorper sollicitudin. Nunc at odio sed metus tempor vulputate. Maecenas fringilla ultricies tortor, vitae viverra mauris porta id. Fusce aliquam velit vitae augue elementum rhoncus. In sit amet eros fermentum, venenatis dolor eget, venenatis massa. Curabitur ornare, ante et semper luctus, diam lorem cursus tellus, sit amet ornare sem tortor eu tellus. Nam vel vulputate massa. Phasellus in leo mauris. Nulla id orci neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean malesuada sodales lectus, a pretium leo dictum at. Donec convallis luctus bibendum. Aliquam dapibus vestibulum lacus non tempus. Nulla molestie, justo pulvinar luctus mollis, orci dolor ornare nisl, at luctus ipsum nunc et nisi. Phasellus elementum ullamcorper sollicitudin. Nunc at odio sed metus tempor vulputate. Maecenas fringilla ultricies tortor, vitae viverra mauris porta id. Fusce aliquam velit vitae augue elementum rhoncus. In sit amet eros fermentum, venenatis dolor eget, venenatis massa. Curabitur ornare, ante et semper luctus, diam lorem cursus tellus, sit amet ornare sem tortor eu tellus. Nam vel vulputate massa. Phasellus in leo mauris. Nulla id orci neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean malesuada sodales lectus, a pretium leo dictum at. Donec convallis luctus bibendum. Aliquam dapibus vestibulum lacus non tempus. Nulla molestie, justo pulvinar luctus mollis, orci dolor ornare nisl, at luctus ipsum nunc et nisi.</p>
          <div class="text-right" style="position: absolute;bottom: 0;width:100%;">
            <i class="fa fa-comment"></i>14 <a href="#">Komentar</a>
          </div>

          </div>

        </div>
      </div>
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
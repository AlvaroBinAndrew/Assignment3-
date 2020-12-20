<!doctype html>
<html lang="en">
  <head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="{{asset('css')}}/style.css">
<!-- font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Palanquin+Dark&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Philosopher:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Sanchez&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@700&family=Sanchez&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!-- FavICON -->
<link rel="shortcut icon" href="img/logo.png">

<!-- Bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Curcin | Curhatan Cinta</title>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="#">
              
              <img src="img/logo.png" width="180" height="140" alt="logo" loading="lazy" style="position: relative; top: -15px;">
            </a>
          </nav>


    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav  ml-auto" style="position: relative; top: -10px;">
      <a class="nav-link active" href="{{url('home')}}"  style="cursor: pointer;" >HOME <span class="sr-only">(current)</span></a>
      <a class="nav-link" href="{{url('blog')}}">BLOG</a>
      <a class="nav-link" href="{{url('curhat')}}">RUANG CURHAT</a>
      <a class="nav-link" href="{{url('konseling')}}">KONSELING</a>
    </div>  
    </div>
  </div>
</nav>


@yield('content')
<div class="footer">
  <div class="container">
    <img src="img/logo.png" alt="logo" style="cursor: pointer;">
    
    <div class="foot1">
    <h2><b> Layanan Kami </b></h2>
    
    <a href="#"><b> Konseling </b></a> <br>
    <a href="#"><b> Ruang Curhat </b></a> <br>
    <a href="#"><b> Blog </b></a>
    </div>
    <div class="foot2">
    <img src="img/team.png" alt="">
    </div>  
  </div>
</div>


















    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>   

  </body>
</html>
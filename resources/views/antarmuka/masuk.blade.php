<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('bootstrap/login/fonts/icomoon/style.css') }}">

    <link rel="stylesheet" href="{{ asset('bootstrap/login/css/owl.carousel.min.css') }}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ asset('bootstrap/login/css/bootstrap.min.css') }}">

    <!-- Style -->
    <link rel="stylesheet" href="{{ asset('bootstrap/login/css/style.css') }}">

    <title>Login</title>
  </head>
  <body>
    <div class="content">
        <div class="container">
          <div class="row">
            <div class="col-md-6 order-md-2">
              <img src="{{ asset('bootstrap/login/images/login.png') }}" alt="Image" class="img-fluid">
            </div>
            <div class="col-md-6 contents">
              <div class="row justify-content-center">
                <div class="col-md-8">
                  <div class="mb-4">
                  <h2>Selamat Datang</h2>
                  <p class="mb-4">Silahkan lengkapi data berikut.</p>
                </div>
                @if($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $item)
                                <li>{{ $item }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form action="{{ route('masuk') }}" method="POST">
                    @csrf
                  <div class="form-group first">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" value="{{ old('email') }}" name="email" class="form-control" id="email">

                  </div>
                  <div class="form-group last mb-4">
                    <label for="password" class="form-label">Kata Sandi</label>
                    <input type="password" name="password" class="form-control" id="password">
                  </div>

                  <div class="d-flex mb-5 align-items-center">
                    <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span>
                  </div>

                  <input type="submit" value="Log In" class="btn text-white btn-block btn-primary" style="background-color:#7B8FA1; border-color:#7B8FA1;">
                    </div>
                </form>
                </div>
                <p class="text-center"> Belum punya akun? <a href="{{ route('registrasi') }}" ><strong style="color: #000000">Daftar</strong></a></p>
              </div>
        </div>
      </div>






    <script src="{{ asset('bootstrap/login/js/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ asset('bootstrap/login/js/popper.min.js') }}"></script>
    <script src="{{ asset('bootstrap/login/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('bootstrap/login/js/main.js') }}"></script>
  </body>
</html>

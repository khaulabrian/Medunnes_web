<!DOCTYPE html>
<html lang="en">
<head>
<!-- meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!-- costum css -->
<link rel="stylesheet" href="style.css">
<title>Registrasi</title>
</head>

<body style="background:#D9D9D9; padding-top: 10vh;	">
    <section class="container-fluid">
        <!-- justify-content-center untuk mengatur posisi form agar berada di tengah-tengah -->
        <section class="row justify-content-center">
        <section class="col-12 col-sm-6 col-md-4">
            <form class="form-container" style=" background:#FFFFFF; border-radius: 10px; padding: 30px;">
                <h5 class="font-weight-bold"> Mendaftar dengan email </h5>
                <p> Sudah punya account? <a href="{{ route('masuk') }}"><strong style="color: #000000">Masuk</strong></a></p>

            <form method="POST" action="{{ route('registrasi') }}">
                    @csrf
                <div class="form-group">
                    <label for="name">Nama Lengkap</label>
                    <input type="text" class="form-control" id="name" placeholder="Masukkan nama lengkap" style="background:#D9D9D9;">
                </div>
                <div class="form-group">
                    <label for="InputEmail">Email</label>
                    <input id="email" type="email"   placeholder="Email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required  autofocus style="background:#D9D9D9;">

@error('email')
    <span class="invalid-feedback" role="alert">
        <strong>{{ $message }}</strong>
    </span>
@enderror
                </div>
                <div class="form-group">
                    <label for="InputPassword">Kata Sandi</label>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password"  placeholder="Masukkan kata sandi"style="background:#D9D9D9;">

@error('password')
<span class="invalid-feedback" role="alert">
<strong>{{ $message }}</strong>
</span>
@enderror
                </div>
                <div class="form-group">
                    <label for="InputPassword">Konfirmasi Kata Sandi</label>
                    <input id="password-confirm" type="password"   placeholder="Masukkan ulang kata sandi" class="form-control" name="password_confirmation" required autocomplete="new-password" style="background:#D9D9D9;">
@error('password')
<span class="invalid-feedback" role="alert">
<strong>{{ $message }}</strong>
</span>
@enderror
                </div>
                <div class="center-btn" style="justify-content: center; display:flex;">
                    <button type="submit" class="btn btn-primary btn-block" style="width:100px; background: #000000">Daftar</button>
                </div>


            </form>
        </section>
        </section>
    </section>

    <!-- Bootstrap requirement jQuery pada posisi pertama, kemudian Popper.js, danyang terakhit Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

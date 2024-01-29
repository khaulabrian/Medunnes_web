<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>medunnes</title>
    <link rel="icon" href={{ asset('backend/dist/img/LogoUnnes.png') }}>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href={{ asset('bootstrap/css/bootstrap.min.css') }}>
    <!-- animate CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/animate.css')}}>
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/owl.carousel.min.css')}}>
    <!-- themify CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/themify-icons.css')}}>
    <!-- flaticon CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/flaticon.css')}}>
    <!-- magnific popup CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/magnific-popup.css')}}>
    <!-- nice select CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/nice-select.css')}}>
    <!-- swiper CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/slick.css')}}>
    <!-- style CSS -->
    <link rel="stylesheet" href={{asset('bootstrap/css/style.css') }}>
</head>

<body style="background-color:#D9D9D9;">
    <!--::header part start::-->
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.html"> <img src="backend/dist/img/LogoUnnes.png" alt="logo" class="" style="width: 50px;"> </a>
                        <a class="navbar-brand ps-3" href="{{ route('dashboard') }}" style="color:#567189;"><strong>MedUnnes</strong></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>


                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="{{ route('dashboard') }}">Beranda</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('daftarpoli') }}">Konsultasi</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Doctor.html">Janji Dokter</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Doctor.html">Beli Obat</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Doctor.html">Layanan Medis</a>
                                </li>
                                <div class="collapse navbar-collapse" id="navbarResponsive">
                                    <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                                        <li class="nav-item"><a class="nav-link me-lg-3" href="{{ route('masuk') }}">Masuk</a></li>
                                    </ul>
                                    <a class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" href="{{ route('registrasi') }}" style="background-color: #CFB997; border-color:#CFB997;">
                                        <span class="d-flex align-items-center">
                                            <i class="bi-chat-text-fill me-2"></i>
                                            <span class="small">Daftar</span>
                                        </span>
                                    </a>

                                    </button>



    </header>
    <!-- Header part end-->




    <!-- jquery plugins here-->

    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- owl carousel js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- contact js -->
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/contact.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>

</html>

@extends('antarmuka.layout.app2')


<div class="container" style=" background-color:#C0C0C1; justify-content: center; margin-top:100px; height: 300vh; border-radius:10px; padding-:20px;">
    <div class="header" style="padding: 20px; text-align:center;">
        <div class="searchbar" style=" margin:20px 0; justify-content:center; display:flex;">
            <input type="text" id="searchInput" placeholder="cari nama dokter atau spesialis" style="border:none; border-radius:5px; width: 1000px; padding:10px;">
            <button id="searchButton" style="border:none; border-radius:5px; padding:10px; cursor:pointer;">Search</button>
        </div>
    </div>

    <div class="sub-container" >
        <p>Chat dokter > </p>
    </div>

                <div class="cards-container d-flex d-wrap">
                    @foreach($user_dokter as $dokter)
                    <div class="col mb-3">
                        <div class="card">
                            <!-- image-->
                            <img class="card-img-top" src="{{ asset('storage/' . $dokter->img_dokter) }}" alt="{{ $dokter->nama_dokter }}" width="150" height="150"/>
                            <!-- Product details-->
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <!--name-->
                                    <h6 class="fw-bolder">{{ $dokter->nama_dokter }}</h6>
                                    <p>ID Spesialis :{{ $dokter->spesialis_id}}</p>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark btn-sm" href="{{ route('chat') }}">Chat</a></div>
                            </div>
                        </div>
                    </div>



                    @endforeach
                </div>
            </ul>

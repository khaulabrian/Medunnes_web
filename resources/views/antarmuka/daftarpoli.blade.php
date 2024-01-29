@extends('antarmuka.layout.app2')


<div class="container" style=" background-color:#C0C0C1; justify-content: center; margin-top:100px; height: 120vh; border-radius:10px; padding:20px;">
    <div class="header" style="padding: 20px; text-align:center;">
        <div class="searchbar" style=" margin:20px 0; justify-content:center; display:flex;">
            <input type="text" id="searchInput" placeholder="cari nama dokter atau spesialis" style="border:none; border-radius:5px; width: 1000px; padding:10px;">
            <button id="searchButton" style="border:none; border-radius:5px; padding:10px; cursor:pointer;">Search</button>
        </div>
    </div>

    <div class="container" style="display: flex; justify-content: space-between; max-width: 1200px; margin: auto;">
        <div class="main-content" style="flex: 1; padding: 20px;">
            <div class="sub-container" style="">
                <h3 style="padding:0px;">Cari Spesialisasi Dokter</h3>
                <p>Pilih kategori spesialisasi yang sesuai dengan kondisimu</p>
            </div>

            <div class="half-page-container" style="display: flex; justify-content: space-between; max-width: 1200px; margin: auto;">
                <div class="row text-center">

                    @foreach ($spesialis as $spesialis)
                    <tr>
                        <td>
                            <div style="text-align: center;">
                                <a href="{{ route('daftardokter') }}">
                                    <img src="{{ asset('storage/' . $spesialis->img_spesialis) }}" alt="{{ $spesialis->nama_spesialis }}" width="80">
                                </a>
                                <br>
                                {{ $spesialis->nama_spesialis }}
                            </div>
                        </td>
                    </tr>

            @endforeach



        </div>

        <div class="filter-card" style="flex: 0 0 200px;  background-color: #fff; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); padding: 15px; margin-left: 20px;">
            <!-- Kartu filter di sini -->
            <h5 style="justify-content:center; align-items:center;">Riwayat Konsultasi</h5>
            <p style="font-size: 10px; justify-content:center; align-items:center; ">Konsultasi dengan dokter langgananmu</p>

</div>
</div>

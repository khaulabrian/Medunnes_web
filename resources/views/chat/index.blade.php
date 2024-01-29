@extends('antarmuka.layout.app2')

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Konsultasi</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5" style="padding: 40px;">
    @foreach($dokters as $dokter)
        <div class="card">
            <div class="card-header">
                <h2 class="mb-0">Chat dengan Dr. {{ $dokter->nama_dokter }}</h2>
            </div>
            <div class="card-body">
                <div id="chat-container" class="mb-3">
                    <div id="chat-messages" class="border p-3" style="height: 300px; overflow-y: auto;"></div>
                </div>
                <form id="chat-form">
                    <div class="input-group">
                        <input type="text" id="message-input" class="form-control" placeholder="Ketik pesan Anda...">
                        <div class="input-group-append">
                            <button type="button" id="send-message-btn" class="btn btn-primary">Kirim</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    @endforeach
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/laravel-echo@1.11.1/dist/echo.js"></script>
<script src="https://js.pusher.com/7.0/pusher.min.js"></script>

<script>
    const dokterInfo = @json($dokters);

    window.Echo = new Echo({
        broadcaster: 'pusher',
        key: '{{ config("broadcasting.connections.pusher.key") }}',
        cluster: '{{ config("broadcasting.connections.pusher.options.cluster") }}',
        encrypted: true,
    });

    // Susun pesan ke dalam elemen chat-messages
    function appendMessage(message) {
        $('#chat-messages').append('<p><strong>' + message.sender + ':</strong> ' + message.text + '</p>');
    }

    // Event mendengarkan pesan baru
    Echo.channel('chat.' + dokterInfo.id)
        .listen('ChatMessage', (event) => {
            appendMessage(event.message);
        });

    // Tangani pengiriman pesan melalui formulir
    $('#send-message-btn').click(function () {
        const message = $('#message-input').val();

        // Kirim pesan ke server melalui Laravel Echo
        window.Echo.private('chat.' + dokterInfo.id)
            .whisper('ChatMessage', { sender: 'You', text: message, receiver: dokterInfo.id });

        // Tambahkan pesan ke daftar pesan di halaman
        appendMessage({ sender: 'You', text: message });

        // Bersihkan input
        $('#message-input').val('');
    });
</script>

</body>
</html>

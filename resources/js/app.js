import './bootstrap';

window.Echo.private('chat.' + dokters.id_dokter)
    .listen('ChatMessage', (event) => {
        appendMessage(event.sender, event.text);
    });

function appendMessage(sender, text) {
    // Logika untuk menambahkan pesan ke antarmuka pengguna
}



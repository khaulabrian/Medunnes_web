<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ChatMessage implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     */
    public $sender;
    public $text;
    public $receiver;

    public function __construct($sender, $text, $receiver)
    {
        $this->sender = $sender;
        $this->text = $text;
        $this->receiver = $receiver;
    }

    public function broadcastOn()
    {
        return new PrivateChannel('chat.' . $this->receiver);
    }
}

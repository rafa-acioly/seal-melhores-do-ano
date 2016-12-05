<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Thanks extends Mailable
{
    use Queueable, SerializesModels;

    protected $reciver;
    public $mailSender;

    public function __construct($reciver, $from)
    {
        $this->reciver = $reciver;
        $this->mailSender = $from;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from($this->mailSender['email'], $this->mailSender['name'])
            ->subject('Melhores do ano!')
            ->view('mail.thanks')
            ->with(['name' => $this->reciver->name]);
    }
}

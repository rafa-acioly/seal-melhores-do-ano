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

    public function __construct($reciver)
    {
        $this->reciver = $reciver;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('marketing@seal.com.br', 'Seal')
            ->subject('Melhores do ano!')
            ->view('mail.thanks')
            ->with(['name' => $this->reciver->name]);
    }
}

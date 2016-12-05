<?php

namespace App\Http\Middleware;

use App\Models\Participant;
use Closure;

class VoteMiddleware
{
    public $participant;

    public function __construct(Participant $participant)
    {
        $this->participant = $participant;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $currentUser = $this->participant
            ->where('uid', $request->route()->parameter('email'))
            ->get();

        if ($currentUser->isEmpty()) {
            return redirect('/')->with('error', 'Acesso negado');
        } elseif ($currentUser[0]->situation) {
            return redirect('/')->with('error', 'Voto já realizado');
        }

        return $next($request);
    }
}

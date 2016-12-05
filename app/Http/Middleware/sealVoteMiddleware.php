<?php

namespace App\Http\Middleware;

use Closure;
use App\Seal;

class sealVoteMiddleware
{
    public $seal;

    /**
     * sealVoteMiddleware constructor.
     *
     * @param $seal
     */
    public function __construct(Seal $seal)
    {
        $this->seal = $seal;
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
        $currentUser = $this->seal
            ->where('uid', $request->route()->parameter('email'))
            ->get();

        if ($currentUser->isEmpty()) {
            return redirect('/')->with('error', 'Acesso negado.');
        } elseif ($currentUser[0]->situation) {
            return redirect('/')->with('error', 'voto já computado.');
        }

        return $next($request);
    }
}

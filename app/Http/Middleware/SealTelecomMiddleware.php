<?php

namespace App\Http\Middleware;

use Closure;
use App\SealTelecom;

class SealTelecomMiddleware
{
    public $sealTelecom;

    public function __construct(SealTelecom $sealTelecom)
    {
        $this->sealTelecom = $sealTelecom;
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
        $currentUser = $this->sealTelecom
            ->where('uid', $request->route()->parameter('email'))
            ->get();

        if ($currentUser->isEmpty()) {
            return redirect('/')->with('error', 'acesso negado');
        } elseif ($currentUser[0]->situation) {
            return redirect('/')->with('error', 'voto já computado.');
        }

        return $next($request);
    }
}

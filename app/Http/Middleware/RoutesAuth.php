<?php

namespace App\Http\Middleware;
use App\Models\User;
use Closure;
use Illuminate\Http\Request;

class RoutesAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle($request, Closure $next)
    {
        // if (!auth()->check()) {
        //     return response()->json(['message' => 'Unauthorized'], 401);
        // }
    
        return $next($request);
    }
}

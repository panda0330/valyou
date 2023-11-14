<?php

namespace App\Http\Controllers;
use App\Models\Role;
use App\Models\Artist;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\JsonResponse;
use DB;

use Illuminate\Http\Request;

class RoleController extends Controller
{
    public $successStatus = 200;
    public $errorStatus = 401;
    
    public function switch()
    {
        
         $url='contacts-profile';
        if ((int)request()->get('role_id') === 2) {
            $artist_model = new Artist;
            $result = $artist_model->artistByUser(auth()->user()->id);
            if ($result) {
                $artist_id = $result->id;
                auth()->user()->roles()->sync(request()->get('role_id'));
                
            } else {
                request()->session()->flash('notify', 'Sorry you do not currently have an Artist account.');
                request()->session()->flash('button', 'Create Artist');
                request()->session()->flash('url', route('artist.artist.create'));
                return redirect()->back();
            }
            $url='artist/profile/'.$artist_id;
            $user_role_id = 2;
        }

}

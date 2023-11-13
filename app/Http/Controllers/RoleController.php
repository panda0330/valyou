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
                

}

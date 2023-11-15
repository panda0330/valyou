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
        if ((int)request()->get('role_id') === 3) {
            auth()->user()->roles()->sync(request()->get('role_id'));
            // print_r(auth()->user()->roles());die;
            if(request()->get('url') != ''){
                $url=request()->get('url');
            }else{
                $url='investor';
            }
            $user_role_id = 3;

        }
        if ((int)request()->get('role_id') === 1) {
            auth()->user()->roles()->sync(request()->get('role_id'));
            $url='Admin';
            $user_role_id = 1;
        }
        // $user_id = auth()->user()->id;
        return response()->json(['status'=>'success','Switch Successfully' => $url], $this-> successStatus); 

    }
}

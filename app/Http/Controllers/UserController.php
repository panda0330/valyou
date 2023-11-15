<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\Models\User; 
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Session; 
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Laravel\Passport\Token;

class UserController extends Controller 
{
public $successStatus = 200;
public $errorStatus = 401;
/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
   
     public function login(Request $request){ 
        $validator = Validator::make($request->all(), [ 
            'email' => 'required|email', 
            'password' => 'required',  

        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], $this-> errorStatus);            
        }

        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
            $user = Auth::user();
            $success['id']  = $user->id;
            $success['first_name']  = $user->first_name;
            $success['last_name']   = $user->last_name;
            $success['phone_number']  = $user->phone_number;
            $success['email'] = $user->email; 
            $success['token'] = $user->createToken('MyApp')-> accessToken; 
            return response()->json(['status'=>$this-> successStatus, 'success' => $success], $this-> successStatus); 
        } 
        else{ 
            return response()->json(['status'=>$this-> errorStatus, 'error'=>'Unauthorised'], $this-> errorStatus); 
        } 
    }
/** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 

 


   
    
 
}
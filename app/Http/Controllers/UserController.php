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


 


   
    
 
}
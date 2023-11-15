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
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'first_name' => 'required', 
            'last_name' => 'required', 
            'email' => 'required|email', 
            'password' => 'required',  
            'phone_number' => 'required', 
             

        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], $this-> errorStatus);            
        }
        $user_chk = User::where('email',$request->email)->first();
        if(!$user_chk){
            
            $input = array(
                'first_name'=>$request->first_name,
                'last_name'=>$request->last_name,
                'email'=>$request->email,
                'phone_number'=>$request->phone_number,
                'country'=>$request->country,
                'password'=>bcrypt($request->password),
            );
            // print_r($input);die;
            //image upload
            if ($request->file('avatar')) {
                $image = $request->file('avatar');
                $imageName = $image->getClientOriginalName();
                $destinationPath = 'uploads/images/';
                $image->move(public_path($destinationPath), $imageName);
                $input['avatar'] = 'uploads/images/'.$imageName;
            }
            // print_r($input);die;
            //
           $inserted_id = $user = User::create($input); 

            $success['id'] =  $inserted_id->id;
            $success['first_name'] =  $user->first_name;
            $success['last_name'] = $user->last_name;
            $success['email'] =  $user->email;

 


   
    
 
}
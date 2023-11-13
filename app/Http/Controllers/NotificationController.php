<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Notifications;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class NotificationController extends Controller
{
    public $successStatus = 200;
    public $errorStatus = 401;
    public function notificationListing(){
        $notification_data = DB::table('notifications')->get()->toArray();
        return response()->json(['status'=>'success','data' => $notification_data], $this-> successStatus); 
    
}
public function storeNotification(Request $request){
    $validator = Validator::make($request->all(), [ 
        'notification_text' => 'required', 
        'from_user_id' => 'required', 
        'to_user_id' => 'required', 
        'artist_id' => 'required',  
        'notification_type' => 'required',  
    ]);
    if ($validator->fails()) { 
        return response()->json(['error'=>$validator->errors()], $this-> errorStatus);            
    }
    


}
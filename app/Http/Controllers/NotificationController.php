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
    
    $input = array(
        'notification_type'=>$request->notification_type,
        'from_user_id'=>$request->from_user_id,
        'to_user_id'=>$request->to_user_id,
        'artist_id'=>$request->artist_id,
        'notification_text'=>$request->notification_text,
    );
    $saveNotification = Notifications::create($input);
    return response()->json(['status'=>'success','savenotification' => $saveNotification], $this-> successStatus); 

}

public function notificationCount(){
    $count = Notifications::count();
    return response()->json(['status'=>'success','Count Notification' => $count], $this-> successStatus); 


}

}
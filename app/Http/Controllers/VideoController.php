<?php

namespace App\Http\Controllers;
use App\Models\VideoUploads;
use App\Models\Comment;
use App\User;
use Illuminate\Http\Request;
use App\Models\Comment_reply;
use Illuminate\Support\Facades\DB;
use Validator;

class VideoController extends Controller
{
    public $successStatus = 200;
    public $errorStatus = 401;
    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    // fetch all data from uploads_video table
     public function allVideosdata(){
        $Videos_data= DB::table('upload_videos')->get()->toArray();
        return response()->json(['status'=>'success','data' => $Videos_data], $this-> successStatus); 
     }
    //  fetch data from uploads video against artist id
     public function getVideo($id){
        $videos = VideoUploads::where('artist_id', $id)->where('type', 2)->with('artist')->orderBy('id', 'DESC')->get();
        $comments = Comment::where('song_id',$id)->get();

        return response()->json(['status'=>'success','data' => $videos,'comment' => $comments], $this-> successStatus); 
     }

     public function getAudio(){
      $audio = VideoUploads::where('type', 1)->with('artist')->orderBy('id', 'DESC')->get();
      return response()->json(['status'=>'success','data' => $audio], $this-> successStatus); 


     }

 
    
}

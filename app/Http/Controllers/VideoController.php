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

     public function replyComment(Request $request)
     {
         //
         $comment = new Comment_reply();
         $comment->user_id = auth()->user()->id;
         $comment->comment_id = $request->comment_id;
         $comment->song_id = $request->song_id;
         $comment->comment = $request->comment;
         $comment->save();
         
         return response()->json(['status'=>$this-> successStatus, 'success' => 'Reply-Comment Saved Successfully'], $this-> successStatus); 
      }


      public function getCommentReplies(Request $request){

         // dd($request);
         $limit = 6;
         $page = isset($request->offset)?$request->offset:0;
        
         
         $comment_reply = Comment_reply::where('comment_id', $request->comment_id)->offset($page)->limit($limit)->get();
         
         $totalnumber = count($comment_reply);
         if(count($comment_reply) > 0){
         if($totalnumber > 5){
             unset($comment_reply[$totalnumber-1]);
         }
       
         foreach ($comment_reply as $item) {

                 $item->avatar = User::find($item->user_id)->avatar;
                 $item->f_name = User::find($item->user_id)->first_name;
                 $item->l_name = User::find($item->user_id)->last_name;
               
                 $success['first_name']  = $item->f_name;
                 $success['last_name']   = $item->l_name;
                 $success['id']  = $item->id;
                 $success['comment'] = $item->comment; 
                
             }
        
         } 
         return response()->json(['status'=>'success','comment-reply' => $success], $this-> successStatus); 

     
     }
            public function deleteReply(Request $request)
            {
               $comment =  Comment_reply::find($request->id);
               if ($comment) {
                     $comment->delete();
                     return response()->json(['status'=>'success','comment-reply' => 'Comment Reply Deleted Successfully'], $this-> successStatus); 
                  }
               
            }



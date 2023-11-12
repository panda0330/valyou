<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Validator;
use App\Models\Artist;
use Illuminate\Http\Request;

class ArtistController extends Controller
{
    public $successStatus = 200;
    public $errorStatus = 401;
    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    // fetch all data from artist table
    public function artistData(){
        $artist_data= DB::table('artists')->get()->toArray();
        return response()->json(['status'=>'success','data' => $artist_data], $this-> successStatus); 
    }
    // fetch data from artist table against id
    public function getArtist($id){
        $data = DB::table('artists')->where('id',$id)->get()->toArray();
        return response()->json(['status'=>'success','data' => $data], $this-> successStatus); 
    }



}

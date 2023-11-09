<?php

namespace App\Models;
use App\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    public $table = 'comments';
    protected $fillable = [
        'user_id', 'song_id','comment','artist_id','created_at','updated_at'
        ];

    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }
}

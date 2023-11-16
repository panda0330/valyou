<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;
class Artist extends Model
{
    use HasFactory;
    public $table = 'artists';

    protected $fillable = [
        'category',
        'brand',
        'about',
        'artist_about',
        'website',
        'spotify',
        'soundcloud',
        'applemusic',
        'youtube',
        'facebook',
        'instagram',
        'user_id',
        'photo',
        'stock_value',
        'market_value',

   }
}

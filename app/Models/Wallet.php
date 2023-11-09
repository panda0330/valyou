<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use \DateTimeInterface;
use App\User;

class Wallet extends Model
{
    public $table = 'wallet';
    protected $fillable = [
        'type','user_role', 'from_user_id', 'to_user_id', 'artist_id','token','amount','admin_cost','note','video_id','vip_status'
    ];
    final public function to_user(): BelongsTo
    {
        return $this->belongsTo(User::class,'to_user_id','id');
    }
     final public function from_user(): BelongsTo
    {
        return $this->belongsTo(User::class,'from_user_id','id');
    }
    final public function artist(): BelongsTo
    {
        return $this->belongsTo(Artist::class,'artist_id','id');
    }
}

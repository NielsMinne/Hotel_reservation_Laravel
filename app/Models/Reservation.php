<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    use HasFactory;

    protected $with= ['client','room'];
    protected $dates=['from','until'];

    public function client()
    {
        return $this->belongsTo(Client::class,'client_id');
    }

    public function room()
    {
        return $this->belongsTo(Room::class,'room_id');
    }
}

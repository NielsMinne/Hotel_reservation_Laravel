<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\Reservation;
use App\Models\Room;
use Illuminate\Http\Request;

class RoomController extends Controller
{
    public function index(Request $r,$id){
        return view('book',[
            'user' => Client::where('id',$id)->firstOrFail(),
        ]);
    }

    public function getAvailable(Request $r,$id){

        $allRooms = [];
        $availableRooms = [];
        
        $allRooms = Room::all()->sortBy('number');
        
        $availableRooms = Reservation::whereBetween('from',[$r->from,$r->until])->orWhereBetween('until',[$r->from,$r->until])->pluck('room_id')->toArray();
        
        return view('room-available',[
            'user' => Client::where('id',$id)->firstOrFail(),
            'rooms' => $allRooms,
            'availableRooms' => $availableRooms,
            'from' => $r->from,
            'until' => $r->until,
        ]);

    }

    
}

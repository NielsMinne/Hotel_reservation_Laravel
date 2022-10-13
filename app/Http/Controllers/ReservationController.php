<?php

namespace App\Http\Controllers;

use App\Models\Reservation;
use App\Models\Room;
use App\Models\User;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    public function index(){
        return view('reservation',[
            'reservations' => Reservation::latest()->paginate(20),
        ]);
    }

    public function store(Request $r){

        $r->validate([
            'room' => 'required|exists:rooms,id',
            'user' => 'required|exists:clients,id',
            'from' => 'required',
            'until' => 'required',
        ]);

        $reserve = new Reservation();

        $reserve->client_id = $r->user;
        $reserve->room_id = $r->room;
        $reserve->from = $r->from;
        $reserve->until = $r->until;
        
        $reserve->save();


        return redirect('/reservations');
    }

    public function delete(Request $r){
        
        $r->validate([
            'reservation' => 'required|exists:reservations,id'
        ]);

        $reservation = Reservation::find($r->reservation);
        $reservation->delete();
        
        return redirect()->back();
    }

}

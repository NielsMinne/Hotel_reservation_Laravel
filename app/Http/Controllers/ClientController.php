<?php

namespace App\Http\Controllers;

use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    public function index(){
        return view('clients',[
            'clients' => Client::latest()->paginate(20),
        ]);
    }

    public function byId(Request $r,$id){
       
        return view('update-client',[
            'client' => Client::where('id',$id)->firstOrFail(),
            'tables' => DB::getSchemaBuilder()->getColumnListing('clients'),
            'titles' => Client::select('title')->distinct()->get()
        ]);
    }

    public function getTables(){
        return view('new-client',[
            'tables' => DB::getSchemaBuilder()->getColumnListing('clients'),
            'titles' => Client::select('title')->distinct()->get()
        ]);
    }

    public function store(Request $r){
        
        $client = new Client();

        $client->title = $r->title;
        $client->firstName = $r->firstName;
        $client->lastName = $r->lastName;
        $client->address = $r->address;
        $client->zip = $r->zip;
        $client->city = $r->city;
        $client->province = $r->province;
        $client->email = $r->email;
        
        $client->save();

        return redirect('/clients');
    }

    public function update(Request $r, $client){
        
        $client = Client::where('id',$client)->firstOrFail();

        $update = Client::findOrFail($r->id);
        
        $update->title = $r->title;
        $update->firstName = $r->firstName;
        $update->lastName = $r->lastName;
        $update->address = $r->address;
        $update->zip = $r->zip;
        $update->city = $r->city;
        $update->province = $r->province;
        $update->email = $r->email;
        $update->save();

        return redirect('/clients');
    }
}

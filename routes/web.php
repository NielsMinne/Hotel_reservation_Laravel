<?php

use App\Http\Controllers\ClientController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\RoomController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/home', function () {
    return view('home');
})->middleware(['auth'])->name('home');

//Route to get all clients
Route::get('/clients',[ClientController::class,'index'])->middleware(['auth'])->name('client.index');

//Routes to add a new client
Route::get('/add-client', [ClientController::class,'getTables'])->middleware(['auth'])->name('client.new');
Route::post('/add-client', [ClientController::class,'store'])->middleware(['auth'])->name('client.store');

//Routes to update a client
Route::get('/update-client/{id}',[ClientController::class,'byId'])->middleware(['auth']);
Route::put('/update-client/{id}', [ClientController::class,'update'])->middleware(['auth']);


//Routes in relation to booking a room
Route::post('/add-reservation', [ReservationController::class,'store'])->middleware(['auth'])->name('reservation.store');
Route::get('/reservations',[ReservationController::class,'index'])->middleware(['auth'])->name('reservation.index');
Route::delete('/reservations',[ReservationController::class,'delete'])->middleware(['auth'])->name('reservation.delete');

Route::get('/rooms/{id}',[RoomController::class,'index'])->middleware(['auth']);
Route::post('/rooms/{id}',[RoomController::class,'getAvailable'])->middleware(['auth']);

//Contact Routes
Route::get('/contact', function () {
    return view('contact');
})->name('contact');
Route::post('/contact',[ContactController::class,'mail'])->name('contact');
Route::post('/contact',[ContactController::class,'mail'])->name('upload');

require __DIR__.'/auth.php';

@props(['reservations'])

@foreach($reservations as $reservation)
<form action="{{route('reservation.delete')}}" method="POST">
@csrf
@method("DELETE")
<input type="hidden" name='reservation' value="{{$reservation->id}}"">
<div class="flex justify-evenly w-full my-1 h-20 odd:bg-white even:bg-slate-100">
    <p class="w-1/3 text-lg  ml-1 pl-4 pt-6">{{$reservation->room->number}}</p>
    <p class="w-1/3 text-lg  ml-1 pl-4 pt-6">{{$reservation->client->title. " " .$reservation->client->firstName. " " . $reservation->client->lastName}}</p>
    <div class="w-1/3 text-lg  ml-1 pl-4 pt-3">
        <p> {{__('From')}}: {{$reservation->from->format('j F Y')}}</p>
        <p> {{__('Until')}}: {{$reservation->until->format('j F Y')}}</p>
    </div>
   
    </p>
    <div class="w-1/3  text-lg  ml-1  flex">
        <button type="submit" class=" rounded-md font-light text-lg border-solid border-2 border-red-400 my-auto p-2 ml-4 text-red-400">{{__('Remove booking')}}</button>
    </div>
</div>
</form>
@endforeach
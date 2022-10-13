@props(['room','user','availableRooms','from','until'])
<form action="{{route('reservation.store')}}" method="post">
    @csrf
   
    
    <input type="hidden" name='room' value="{{$room->id}}">
    <input type="hidden" name='user' value="{{$user->id}}">
    <input type="hidden" name='from' value="{{$from}}">
    <input type="hidden" name='until' value="{{$until}}">

<div class="flex justify-evenly w-full my-1 h-20 odd:bg-white even:bg-slate-100">
    <p class="w-1/3 text-lg  ml-1 pl-4 pt-6">{{$room->number}}</p>
    @if (!in_array($room->id,$availableRooms))
    <div class="w-1/3 my-4 mx-6">
        <p class="text-lg h-full pt-2  pl-4 bg-green-100 border-solid border-2 border-slate-200">{{"Beschikbaar"}}</p>
    </div>
    <div class="w-1/3  text-lg  ml-1  flex">
        <button type='submit' class=" font-light text-lg border-solid border-2 border-red-400 my-auto p-2 ml-4 text-red-400">{{"Boek Kamer"}}</button>
    </div>
    @else
    <div class="w-1/3 my-4 mx-6">
        <p class="text-lg h-full pt-2  pl-4 bg-red-100 border-solid border-2 border-slate-200">{{"Niet beschikbaar"}}</p>
    </div> 
    <div class="w-1/3  text-lg  ml-1  flex">
    </div>
    @endif
    
</div>
</form>
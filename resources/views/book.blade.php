<x-layout>
    <main class="max-w-7xl mx-auto mt-10 ">
        <h1 class='text-left text-xl font-normal my-4 uppercase'>Nieuwe Reservatie</h1>

        
        <form action="/rooms/{{$user->id}}" method="POST">
            @csrf
            @method('POST')
        <div class="flex">
            <p class="w-1/3">{{__('Booking for')}}: {{$user->title . " " .$user->firstName . " ". $user->lastName}}</p>
            <div class="flex w-1/3">
                <p class="pt-2 px-4">{{__('From')}}:</p>
                <label for="from"></label>
                <input type="date" id="from" name="from"
                min="2022-01-01" max="2026-12-31">
            </div>
            <div class="flex w-1/3">
                <p class="pt-2 px-4">{{__('Until')}}:</p>
                <label for="until"></label>
                <input type="date" id="until" name="until"
                min="2022-01-01" max="2026-12-31">
            </div>
            <button type='submit' class="w-30 bg-sky-500 px-4 py-2 rounded text-white font-bold">Search</button>
        </div>
    </form>

        <div class="flex justify-evenly w-full h-10 mt-8">
            <h4 class="w-1/3 font-semibold text-xl bg-slate-100 ml-1 pl-4">{{__('Room')}}</h4>
            <h4 class="w-1/3 font-semibold text-xl bg-slate-100 ml-1 pl-4">{{__('Availability')}}</h4>
            <h4 class="w-1/3 font-semibold text-xl bg-slate-100 ml-1 pl-4">{{__('Action')}}</h4>
        </div>
       
        

        <hr class="mt-4">
        <p class="text-right">Copyright 2022 - Arteveldehogeschool Gent - Web Development 2</p>
    </main>


</x-layout>
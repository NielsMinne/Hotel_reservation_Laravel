<x-layout>
    <main class="max-w-7xl mx-auto mt-10 ">
        <h1 class='text-left text-2xl font-normal my-4 uppercase'>{{__('Reservations')}}</h1>
       
        <div class="flex justify-evenly w-full h-10 mt-8">
            <h4 class="w-1/3 text-xl bg-slate-100  pl-4 pt-2">{{__('Room')}}</h4>
            <h4 class="w-1/3 text-xl bg-slate-100  pl-4 pt-2">{{__('Name')}}</h4>
            <h4 class="w-1/3 text-xl bg-slate-100  pl-4 pt-2">{{__('Dates')}}</h4>
            <h4 class="w-1/3 text-xl bg-slate-100  pl-4 pt-2">{{__('Action')}}</h4>
        </div>
        @if ($reservations->count())
        <x-reservation-card :reservations="$reservations"/>
        @else
            <p class="text-center my-8">{{__('No Reservations yet. Please Check back later')}}</p>
        @endif
        {{$reservations->links()}}
        <hr class="mt-4">
        <p class="text-right">Copyright 2022 - Arteveldehogeschool Gent - Web Development 2</p>
    </main>


</x-layout>